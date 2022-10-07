#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case,
    clippy::too_many_arguments
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.48.1.

use crate::api::*;
use core::panic::UnwindSafe;
use flutter_rust_bridge::*;

// Section: imports

// Section: wire functions

fn wire_rust_metrics_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "rust_metrics",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| rust_metrics(),
    )
}
fn wire_handle_uuids_impl(port_: MessagePort, ids: impl Wire2Api<Vec<uuid::Uuid>> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "handle_uuids",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_ids = ids.wire2api();
            move |task_callback| handle_uuids(api_ids)
        },
    )
}
fn wire_handle_uuids_convert_to_strings_impl(
    port_: MessagePort,
    ids: impl Wire2Api<Vec<uuid::Uuid>> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "handle_uuids_convert_to_strings",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_ids = ids.wire2api();
            move |task_callback| handle_uuids_convert_to_strings(api_ids)
        },
    )
}
fn wire_handle_strings_impl(port_: MessagePort, strings: impl Wire2Api<Vec<String>> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "handle_strings",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_strings = strings.wire2api();
            move |task_callback| handle_strings(api_strings)
        },
    )
}
fn wire_handle_bool_impl(port_: MessagePort, input: impl Wire2Api<bool> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "handle_bool",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_input = input.wire2api();
            move |task_callback| Ok(handle_bool(api_input))
        },
    )
}
fn wire_handle_u32_impl(port_: MessagePort, input: impl Wire2Api<u32> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "handle_u32",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_input = input.wire2api();
            move |task_callback| Ok(handle_u32(api_input))
        },
    )
}
fn wire_handle_u64_impl(port_: MessagePort, input: impl Wire2Api<u64> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "handle_u64",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_input = input.wire2api();
            move |task_callback| Ok(handle_u64(api_input))
        },
    )
}
fn wire_handle_i8_impl(port_: MessagePort, input: impl Wire2Api<i8> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "handle_i8",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_input = input.wire2api();
            move |task_callback| Ok(handle_i8(api_input))
        },
    )
}
fn wire_handle_i16_impl(port_: MessagePort, input: impl Wire2Api<i16> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "handle_i16",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_input = input.wire2api();
            move |task_callback| Ok(handle_i16(api_input))
        },
    )
}
fn wire_handle_i32_impl(port_: MessagePort, input: impl Wire2Api<i32> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "handle_i32",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_input = input.wire2api();
            move |task_callback| Ok(handle_i32(api_input))
        },
    )
}
fn wire_handle_i64_impl(port_: MessagePort, input: impl Wire2Api<i64> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "handle_i64",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_input = input.wire2api();
            move |task_callback| Ok(handle_i64(api_input))
        },
    )
}
fn wire_handle_f32_impl(port_: MessagePort, input: impl Wire2Api<f32> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "handle_f32",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_input = input.wire2api();
            move |task_callback| Ok(handle_f32(api_input))
        },
    )
}
fn wire_handle_f64_impl(port_: MessagePort, input: impl Wire2Api<f64> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "handle_f64",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_input = input.wire2api();
            move |task_callback| Ok(handle_f64(api_input))
        },
    )
}
fn wire_handle_string_impl(port_: MessagePort, input: impl Wire2Api<String> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "handle_string",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_input = input.wire2api();
            move |task_callback| Ok(handle_string(api_input))
        },
    )
}
fn wire_handle_sync_bool_impl(
    input: impl Wire2Api<bool> + UnwindSafe,
) -> support::WireSyncReturnStruct {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_sync(
        WrapInfo {
            debug_name: "handle_sync_bool",
            port: None,
            mode: FfiCallMode::Sync,
        },
        move || {
            let api_input = input.wire2api();
            Ok(handle_sync_bool(api_input))
        },
    )
}
fn wire_handle_sync_u32_impl(
    input: impl Wire2Api<u32> + UnwindSafe,
) -> support::WireSyncReturnStruct {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_sync(
        WrapInfo {
            debug_name: "handle_sync_u32",
            port: None,
            mode: FfiCallMode::Sync,
        },
        move || {
            let api_input = input.wire2api();
            Ok(handle_sync_u32(api_input))
        },
    )
}
fn wire_handle_sync_u64_impl(
    input: impl Wire2Api<u64> + UnwindSafe,
) -> support::WireSyncReturnStruct {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_sync(
        WrapInfo {
            debug_name: "handle_sync_u64",
            port: None,
            mode: FfiCallMode::Sync,
        },
        move || {
            let api_input = input.wire2api();
            Ok(handle_sync_u64(api_input))
        },
    )
}
fn wire_handle_sync_i8_impl(
    input: impl Wire2Api<i8> + UnwindSafe,
) -> support::WireSyncReturnStruct {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_sync(
        WrapInfo {
            debug_name: "handle_sync_i8",
            port: None,
            mode: FfiCallMode::Sync,
        },
        move || {
            let api_input = input.wire2api();
            Ok(handle_sync_i8(api_input))
        },
    )
}
fn wire_handle_sync_i16_impl(
    input: impl Wire2Api<i16> + UnwindSafe,
) -> support::WireSyncReturnStruct {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_sync(
        WrapInfo {
            debug_name: "handle_sync_i16",
            port: None,
            mode: FfiCallMode::Sync,
        },
        move || {
            let api_input = input.wire2api();
            Ok(handle_sync_i16(api_input))
        },
    )
}
fn wire_handle_sync_i32_impl(
    input: impl Wire2Api<i32> + UnwindSafe,
) -> support::WireSyncReturnStruct {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_sync(
        WrapInfo {
            debug_name: "handle_sync_i32",
            port: None,
            mode: FfiCallMode::Sync,
        },
        move || {
            let api_input = input.wire2api();
            Ok(handle_sync_i32(api_input))
        },
    )
}
fn wire_handle_sync_i64_impl(
    input: impl Wire2Api<i64> + UnwindSafe,
) -> support::WireSyncReturnStruct {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_sync(
        WrapInfo {
            debug_name: "handle_sync_i64",
            port: None,
            mode: FfiCallMode::Sync,
        },
        move || {
            let api_input = input.wire2api();
            Ok(handle_sync_i64(api_input))
        },
    )
}
fn wire_handle_sync_f32_impl(
    input: impl Wire2Api<f32> + UnwindSafe,
) -> support::WireSyncReturnStruct {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_sync(
        WrapInfo {
            debug_name: "handle_sync_f32",
            port: None,
            mode: FfiCallMode::Sync,
        },
        move || {
            let api_input = input.wire2api();
            Ok(handle_sync_f32(api_input))
        },
    )
}
fn wire_handle_sync_f64_impl(
    input: impl Wire2Api<f64> + UnwindSafe,
) -> support::WireSyncReturnStruct {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_sync(
        WrapInfo {
            debug_name: "handle_sync_f64",
            port: None,
            mode: FfiCallMode::Sync,
        },
        move || {
            let api_input = input.wire2api();
            Ok(handle_sync_f64(api_input))
        },
    )
}
fn wire_handle_sync_string_impl(
    input: impl Wire2Api<String> + UnwindSafe,
) -> support::WireSyncReturnStruct {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap_sync(
        WrapInfo {
            debug_name: "handle_sync_string",
            port: None,
            mode: FfiCallMode::Sync,
        },
        move || {
            let api_input = input.wire2api();
            Ok(handle_sync_string(api_input))
        },
    )
}
// Section: wrapper structs

// Section: static checks

// Section: allocate functions

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        (!self.is_null()).then(|| self.wire2api())
    }
}

impl Wire2Api<bool> for bool {
    fn wire2api(self) -> bool {
        self
    }
}
impl Wire2Api<f32> for f32 {
    fn wire2api(self) -> f32 {
        self
    }
}
impl Wire2Api<f64> for f64 {
    fn wire2api(self) -> f64 {
        self
    }
}
impl Wire2Api<i16> for i16 {
    fn wire2api(self) -> i16 {
        self
    }
}
impl Wire2Api<i32> for i32 {
    fn wire2api(self) -> i32 {
        self
    }
}
impl Wire2Api<i64> for i64 {
    fn wire2api(self) -> i64 {
        self
    }
}
impl Wire2Api<i8> for i8 {
    fn wire2api(self) -> i8 {
        self
    }
}
impl Wire2Api<u32> for u32 {
    fn wire2api(self) -> u32 {
        self
    }
}
impl Wire2Api<u64> for u64 {
    fn wire2api(self) -> u64 {
        self
    }
}
impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

// Section: impl IntoDart

impl support::IntoDart for Metric {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.name.into_dart(),
            self.value.into_dart(),
            self.unit.into_dart(),
            self.extra.into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for Metric {}

impl support::IntoDart for Unit {
    fn into_dart(self) -> support::DartAbi {
        match self {
            Self::Milliseconds => 0,
            Self::Microseconds => 1,
            Self::Nanoseconds => 2,
        }
        .into_dart()
    }
}
// Section: executor

/* nothing since executor detected */

/// cbindgen:ignore
#[cfg(target_family = "wasm")]
#[path = "bridge_generated.web.rs"]
mod web;
#[cfg(target_family = "wasm")]
pub use web::*;

#[cfg(not(target_family = "wasm"))]
#[path = "bridge_generated.io.rs"]
mod io;
#[cfg(not(target_family = "wasm"))]
pub use io::*;
