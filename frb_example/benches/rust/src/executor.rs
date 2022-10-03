use std::{
    panic::UnwindSafe,
    sync::{Arc, Mutex},
    time::Instant,
};

use flutter_rust_bridge::{
    handler::{
        self, ErrorHandler, Executor, ReportDartErrorHandler, SimpleHandler, ThreadPoolExecutor,
    },
    rust2dart::TaskCallback,
    IntoDart, MessagePort, WrapInfo,
};
use tracing_subscriber::FmtSubscriber;

lazy_static::lazy_static! {
  static ref METRICS: Arc<Mutex<Vec<serde_json::Value>>> = Arc::new(Mutex::new(vec![]));
}

pub type BenchHandler = SimpleHandler<BenchExecutor, BenchErrorHandler>;

pub trait Metrics {
    fn metrics(&self) -> Vec<serde_json::Value>;
}

impl Metrics for SimpleHandler<BenchExecutor, BenchErrorHandler> {
    fn metrics(&self) -> Vec<serde_json::Value> {
        let guard = METRICS.lock().expect("Error on mutex lock");
        guard.clone()
    }
}

#[derive(Clone, Copy)]
pub struct BenchErrorHandler(ReportDartErrorHandler);

impl Default for BenchErrorHandler {
    fn default() -> Self {
        Self(ReportDartErrorHandler)
    }
}

impl ErrorHandler for BenchErrorHandler {
    fn handle_error(&self, port: MessagePort, error: handler::Error) {
        self.0.handle_error(port, error)
    }

    fn handle_error_sync(
        &self,
        error: flutter_rust_bridge::handler::Error,
    ) -> flutter_rust_bridge::support::WireSyncReturnStruct {
        self.0.handle_error_sync(error)
    }
}

pub struct BenchExecutor {
    inner: ThreadPoolExecutor<BenchErrorHandler>,
    json: bool,
}

impl BenchExecutor {
    pub(crate) fn new(error_handler: BenchErrorHandler) -> Self {
        let json = std::env::var("JSON")
            .unwrap_or("false".into())
            .parse::<bool>()
            .expect("Invalid JSON env var (expected boolean)");
        let subscriber = if json {
            None
        } else {
            Some(
                FmtSubscriber::builder()
                    .with_max_level(tracing::Level::TRACE)
                    .finish(),
            )
        };
        if let Some(subscriber) = subscriber {
            tracing::subscriber::set_global_default(subscriber)
                .expect("Setting default subscriber failed");
        }
        Self {
            inner: ThreadPoolExecutor::new(error_handler),
            json,
        }
    }
}

impl Executor for BenchExecutor {
    fn execute<TaskFn, TaskRet>(&self, wrap_info: WrapInfo, task: TaskFn)
    where
        TaskFn: FnOnce(TaskCallback) -> anyhow::Result<TaskRet> + Send + UnwindSafe + 'static,
        TaskRet: IntoDart,
    {
        let debug_name_string = wrap_info.debug_name.to_string();
        let json = self.json;
        self.inner.execute(wrap_info, move |task_callback| {
            Self::bench_around(&debug_name_string, json, move || task(task_callback))
        })
    }

    fn execute_sync<SyncTaskFn, TaskRet>(
        &self,
        wrap_info: WrapInfo,
        sync_task: SyncTaskFn,
    ) -> anyhow::Result<flutter_rust_bridge::SyncReturn<TaskRet>>
    where
        flutter_rust_bridge::support::WireSyncReturnData: From<TaskRet>,
        SyncTaskFn: FnOnce() -> anyhow::Result<flutter_rust_bridge::SyncReturn<TaskRet>>
            + std::panic::UnwindSafe,
    {
        let debug_name_string = wrap_info.debug_name.to_string();
        self.inner.execute_sync(wrap_info, move || {
            Self::bench_around(&debug_name_string, self.json, move || sync_task())
        })
    }
}

impl BenchExecutor {
    fn bench_around<F, R>(bench_name: &str, json: bool, f: F) -> R
    where
        F: FnOnce() -> R,
    {
        use tracing::{span, trace, Level};
        span!(Level::TRACE, "frb-executor");
        if !json {
            trace!("(Rust) execute [{}] start", bench_name);
        }
        let start = Instant::now();
        let ret = f();
        let elapsed = start.elapsed().as_nanos();
        if !json {
            trace!(
                "(Rust) execute [{}] end delta_time={}ns",
                bench_name,
                elapsed
            );
        } else {
            Self::record(bench_name, elapsed as u64);
        }
        ret
    }
    fn record(debug_name_string: &str, elapsed: u64) {
        let mut guard = METRICS.lock().expect("Error on mutex lock");
        guard
            .push(serde_json::json!({ "name": debug_name_string, "unit": "ns", "value": elapsed, "extra": "rust" }));
    }
}
