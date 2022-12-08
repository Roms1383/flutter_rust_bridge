// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.54.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import "bridge_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'bridge_generated.io.dart' if (dart.library.html) 'bridge_generated.web.dart';

import 'package:meta/meta.dart';

class FlutterRustBridgeExampleBenchmarkSuiteImpl implements FlutterRustBridgeExampleBenchmarkSuite {
  final FlutterRustBridgeExampleBenchmarkSuitePlatform _platform;
  factory FlutterRustBridgeExampleBenchmarkSuiteImpl(ExternalLibrary dylib) =>
      FlutterRustBridgeExampleBenchmarkSuiteImpl.raw(FlutterRustBridgeExampleBenchmarkSuitePlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory FlutterRustBridgeExampleBenchmarkSuiteImpl.wasm(FutureOr<WasmModule> module) =>
      FlutterRustBridgeExampleBenchmarkSuiteImpl(module as ExternalLibrary);
  FlutterRustBridgeExampleBenchmarkSuiteImpl.raw(this._platform);
  Future<List<UuidValue>> handleUuids({required List<UuidValue> ids, dynamic hint}) {
    var arg0 = _platform.api2wire_Uuids(ids);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_handle_uuids(port_, arg0),
      parseSuccessData: _wire2api_Uuids,
      constMeta: kHandleUuidsConstMeta,
      argValues: [ids],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleUuidsConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_uuids",
        argNames: ["ids"],
      );

  Future<List<String>> handleUuidsConvertToStrings({required List<UuidValue> ids, dynamic hint}) {
    var arg0 = _platform.api2wire_Uuids(ids);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_handle_uuids_convert_to_strings(port_, arg0),
      parseSuccessData: _wire2api_StringList,
      constMeta: kHandleUuidsConvertToStringsConstMeta,
      argValues: [ids],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleUuidsConvertToStringsConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_uuids_convert_to_strings",
        argNames: ["ids"],
      );

  Future<List<String>> handleStrings({required List<String> strings, dynamic hint}) {
    var arg0 = _platform.api2wire_StringList(strings);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_handle_strings(port_, arg0),
      parseSuccessData: _wire2api_StringList,
      constMeta: kHandleStringsConstMeta,
      argValues: [strings],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleStringsConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_strings",
        argNames: ["strings"],
      );

  Future<bool> handleBool({required bool input, dynamic hint}) {
    var arg0 = input;
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_handle_bool(port_, arg0),
      parseSuccessData: _wire2api_bool,
      constMeta: kHandleBoolConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleBoolConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_bool",
        argNames: ["input"],
      );

  Future<int> handleU32({required int input, dynamic hint}) {
    var arg0 = api2wire_u32(input);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_handle_u32(port_, arg0),
      parseSuccessData: _wire2api_u32,
      constMeta: kHandleU32ConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleU32ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_u32",
        argNames: ["input"],
      );

  Future<int> handleU64({required int input, dynamic hint}) {
    var arg0 = _platform.api2wire_u64(input);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_handle_u64(port_, arg0),
      parseSuccessData: _wire2api_u64,
      constMeta: kHandleU64ConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleU64ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_u64",
        argNames: ["input"],
      );

  Future<int> handleI8({required int input, dynamic hint}) {
    var arg0 = api2wire_i8(input);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_handle_i8(port_, arg0),
      parseSuccessData: _wire2api_i8,
      constMeta: kHandleI8ConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleI8ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_i8",
        argNames: ["input"],
      );

  Future<int> handleI16({required int input, dynamic hint}) {
    var arg0 = api2wire_i16(input);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_handle_i16(port_, arg0),
      parseSuccessData: _wire2api_i16,
      constMeta: kHandleI16ConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleI16ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_i16",
        argNames: ["input"],
      );

  Future<int> handleI32({required int input, dynamic hint}) {
    var arg0 = api2wire_i32(input);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_handle_i32(port_, arg0),
      parseSuccessData: _wire2api_i32,
      constMeta: kHandleI32ConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleI32ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_i32",
        argNames: ["input"],
      );

  Future<int> handleI64({required int input, dynamic hint}) {
    var arg0 = _platform.api2wire_i64(input);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_handle_i64(port_, arg0),
      parseSuccessData: _wire2api_i64,
      constMeta: kHandleI64ConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleI64ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_i64",
        argNames: ["input"],
      );

  Future<double> handleF32({required double input, dynamic hint}) {
    var arg0 = api2wire_f32(input);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_handle_f32(port_, arg0),
      parseSuccessData: _wire2api_f32,
      constMeta: kHandleF32ConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleF32ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_f32",
        argNames: ["input"],
      );

  Future<double> handleF64({required double input, dynamic hint}) {
    var arg0 = api2wire_f64(input);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_handle_f64(port_, arg0),
      parseSuccessData: _wire2api_f64,
      constMeta: kHandleF64ConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleF64ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_f64",
        argNames: ["input"],
      );

  Future<String> handleString({required String input, dynamic hint}) {
    var arg0 = _platform.api2wire_String(input);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_handle_string(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kHandleStringConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleStringConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_string",
        argNames: ["input"],
      );

  bool handleSyncBool({required bool input, dynamic hint}) {
    var arg0 = input;
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_handle_sync_bool(arg0),
      parseSuccessData: _wire2api_SyncReturn_bool,
      constMeta: kHandleSyncBoolConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleSyncBoolConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_sync_bool",
        argNames: ["input"],
      );

  int handleSyncU32({required int input, dynamic hint}) {
    var arg0 = api2wire_u32(input);
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_handle_sync_u32(arg0),
      parseSuccessData: _wire2api_SyncReturn_u32,
      constMeta: kHandleSyncU32ConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleSyncU32ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_sync_u32",
        argNames: ["input"],
      );

  int handleSyncU64({required int input, dynamic hint}) {
    var arg0 = _platform.api2wire_u64(input);
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_handle_sync_u64(arg0),
      parseSuccessData: _wire2api_SyncReturn_u64,
      constMeta: kHandleSyncU64ConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleSyncU64ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_sync_u64",
        argNames: ["input"],
      );

  int handleSyncI8({required int input, dynamic hint}) {
    var arg0 = api2wire_i8(input);
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_handle_sync_i8(arg0),
      parseSuccessData: _wire2api_SyncReturn_i8,
      constMeta: kHandleSyncI8ConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleSyncI8ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_sync_i8",
        argNames: ["input"],
      );

  int handleSyncI16({required int input, dynamic hint}) {
    var arg0 = api2wire_i16(input);
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_handle_sync_i16(arg0),
      parseSuccessData: _wire2api_SyncReturn_i16,
      constMeta: kHandleSyncI16ConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleSyncI16ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_sync_i16",
        argNames: ["input"],
      );

  int handleSyncI32({required int input, dynamic hint}) {
    var arg0 = api2wire_i32(input);
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_handle_sync_i32(arg0),
      parseSuccessData: _wire2api_SyncReturn_i32,
      constMeta: kHandleSyncI32ConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleSyncI32ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_sync_i32",
        argNames: ["input"],
      );

  int handleSyncI64({required int input, dynamic hint}) {
    var arg0 = _platform.api2wire_i64(input);
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_handle_sync_i64(arg0),
      parseSuccessData: _wire2api_SyncReturn_i64,
      constMeta: kHandleSyncI64ConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleSyncI64ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_sync_i64",
        argNames: ["input"],
      );

  double handleSyncF32({required double input, dynamic hint}) {
    var arg0 = api2wire_f32(input);
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_handle_sync_f32(arg0),
      parseSuccessData: _wire2api_SyncReturn_f32,
      constMeta: kHandleSyncF32ConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleSyncF32ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_sync_f32",
        argNames: ["input"],
      );

  double handleSyncF64({required double input, dynamic hint}) {
    var arg0 = api2wire_f64(input);
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_handle_sync_f64(arg0),
      parseSuccessData: _wire2api_SyncReturn_f64,
      constMeta: kHandleSyncF64ConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleSyncF64ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_sync_f64",
        argNames: ["input"],
      );

  String handleSyncString({required String input, dynamic hint}) {
    var arg0 = _platform.api2wire_String(input);
    return _platform.executeSync(FlutterRustBridgeSyncTask(
      callFfi: () => _platform.inner.wire_handle_sync_string(arg0),
      parseSuccessData: _wire2api_SyncReturn_String,
      constMeta: kHandleSyncStringConstMeta,
      argValues: [input],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kHandleSyncStringConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_sync_string",
        argNames: ["input"],
      );

  Future<void> dummy({required Unit unit, dynamic hint}) {
    var arg0 = api2wire_unit(unit);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_dummy(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kDummyConstMeta,
      argValues: [unit],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kDummyConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "dummy",
        argNames: ["unit"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  List<String> _wire2api_StringList(dynamic raw) {
    return (raw as List<dynamic>).cast<String>();
  }

  String _wire2api_SyncReturn_String(dynamic raw) {
    return utf8.decode(raw);
  }

  bool _wire2api_SyncReturn_bool(dynamic raw) {
    return uint8ListToBool(raw);
  }

  double _wire2api_SyncReturn_f32(dynamic raw) {
    final dataView = ByteData.view(raw.buffer);
    return dataView.getFloat32(0);
  }

  double _wire2api_SyncReturn_f64(dynamic raw) {
    final dataView = ByteData.view(raw.buffer);
    return dataView.getFloat64(0);
  }

  int _wire2api_SyncReturn_i16(dynamic raw) {
    final dataView = ByteData.view(raw.buffer);
    return dataView.getInt16(0);
  }

  int _wire2api_SyncReturn_i32(dynamic raw) {
    final dataView = ByteData.view(raw.buffer);
    return dataView.getInt32(0);
  }

  int _wire2api_SyncReturn_i64(dynamic raw) {
    final dataView = ByteData.view(raw.buffer);
    return dataView.getInt64(0);
  }

  int _wire2api_SyncReturn_i8(dynamic raw) {
    final dataView = ByteData.view(raw.buffer);
    return dataView.getInt8(0);
  }

  int _wire2api_SyncReturn_u32(dynamic raw) {
    final dataView = ByteData.view(raw.buffer);
    return dataView.getUint32(0);
  }

  int _wire2api_SyncReturn_u64(dynamic raw) {
    final dataView = ByteData.view(raw.buffer);
    return dataView.getUint64(0);
  }

  List<UuidValue> _wire2api_Uuids(dynamic raw) {
    final bytes = _wire2api_uint_8_list(raw);
    return wire2apiUuids(bytes);
  }

  bool _wire2api_bool(dynamic raw) {
    return raw as bool;
  }

  double _wire2api_f32(dynamic raw) {
    return raw as double;
  }

  double _wire2api_f64(dynamic raw) {
    return raw as double;
  }

  int _wire2api_i16(dynamic raw) {
    return raw as int;
  }

  int _wire2api_i32(dynamic raw) {
    return raw as int;
  }

  int _wire2api_i64(dynamic raw) {
    return castInt(raw);
  }

  int _wire2api_i8(dynamic raw) {
    return raw as int;
  }

  int _wire2api_u32(dynamic raw) {
    return raw as int;
  }

  int _wire2api_u64(dynamic raw) {
    return castInt(raw);
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }
}

// Section: api2wire

@protected
bool api2wire_bool(bool raw) {
  return raw;
}

@protected
double api2wire_f32(double raw) {
  return raw;
}

@protected
double api2wire_f64(double raw) {
  return raw;
}

@protected
int api2wire_i16(int raw) {
  return raw;
}

@protected
int api2wire_i32(int raw) {
  return raw;
}

@protected
int api2wire_i8(int raw) {
  return raw;
}

@protected
int api2wire_u32(int raw) {
  return raw;
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

@protected
int api2wire_unit(Unit raw) {
  return api2wire_i32(raw.index);
}
// Section: finalizer
