import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'ffi.io.dart' if (dart.library.html) 'ffi.web.dart';
import 'package:flutter_rust_bridge_benchmark/utils.dart';
import 'package:uuid/uuid.dart';

void main(List<String> args) async {
  String dylibPath = args[0];
  print(
      'flutter_rust_bridge_benchmark_suite example program start (dylibPath=$dylibPath)');
  print('construct api');
  String? extra = args.length > 1 ? args[1] : null;
  final bool json = extra == '--json';
  if (extra != '--json') {
    print('CLI extra argument $extra is ignored (expected --json, or none)');
  }
  final api = initializeBenchExternalLibrary(dylibPath, useJSON: json);

  final Uuid uuid = Uuid();
  final thousandUuids =
      List<UuidValue>.generate(1000, (index) => uuid.v4obj(), growable: false);
  final thousandStrings = List<String>.generate(
      1000, (index) => getRandomString(uuidSizeInBytes),
      growable: false);
  final hundredThousandUuids = List<UuidValue>.generate(
      100000, (index) => uuid.v4obj(),
      growable: false);
  final hundredThousandStrings = List<String>.generate(
      100000, (index) => getRandomString(uuidSizeInBytes),
      growable: false);
  await api.handleUuids(ids: thousandUuids, hint: '⚡ 1,000 uuids');
  await api.handleStrings(strings: thousandStrings, hint: '⚡ 1,000 strings');
  await api.handleUuidsConvertToStrings(ids: thousandUuids, hint: '⚡ 1,000 uuids converted to strings');
  await api.handleUuids(ids: hundredThousandUuids, hint: '⚡ 10,000 uuids');
  await api.handleStrings(strings: hundredThousandStrings, hint: '⚡ 10,000 strings');
  await api.handleUuidsConvertToStrings(
    ids: hundredThousandUuids,
    hint: '⚡ 10,000 uuids converted to strings'
  );

  await api.whenBenchmarkComplete();
}

// vim:expandtab:ts=2:sw=2
