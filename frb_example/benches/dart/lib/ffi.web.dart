import 'interceptor.dart';

export 'bridge_generated.web.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

const root = 'pkg/flutter_rust_bridge_example';

FlutterRustBridgeExampleBenchmarkSuiteImplBench initializeExternalLibrary(
        void _) =>
    FlutterRustBridgeExampleBenchmarkSuiteImplBench.wasm(
      WasmModule.initialize(kind: const Modules.noModules(root: root)),
    );
