// Import BenchmarkBase class.
import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:flutter_rust_bridge_benchmark/env/stub.dart';
import 'package:flutter_rust_bridge_benchmark/utils.dart';
import '../ffi.io.dart' if (dart.library.html) '../ffi.web.dart';

// Create a new benchmark by extending BenchmarkBase
class TemplateBenchmark extends AsyncBenchmarkBase {
  TemplateBenchmark() : super('Vec of Strings');

  late FlutterRustBridgeExampleBenchmarkSuiteImpl api;
  late List<String> strings;

  static void main() {
    TemplateBenchmark().report();
  }

  // The benchmark code.
  @override
  Future<void> run() async {
    // ignore: no_leading_underscores_for_local_identifiers
    final _ = await api.handleStrings(strings: strings);
  }

  // Not measured setup code executed prior to the benchmark runs.
  @override
  Future<void> setup() {
    return Future.sync(() {
      String path = dylibPath ?? "../../../target/release/libflutter_rust_bridge_example_benchmark_suite.dylib";
      print('flutter_rust_bridge benchmark $sampleCount strings (dylibPath=$path)');
      print('setup');
      api = initializeBenchExternalLibrary(path);
      strings = List<String>.generate(sampleCount, (_) => getRandomString(uuidSizeInBytes));
    });
  }

  // Not measured teardown code executed after the benchmark runs.
  @override
  Future<void> teardown() {
    return Future.value();
  }

  // To opt into the reporting the time per run() instead of per 10 run() calls.
  //@override
  //void exercise() => run();
}

void main() {
  // Run TemplateBenchmark
  TemplateBenchmark.main();
}
