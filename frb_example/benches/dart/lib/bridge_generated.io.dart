// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.49.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names

import "bridge_definitions.dart";
import 'dart:convert';
import 'dart:async';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';
import 'bridge_generated.dart';
export 'bridge_generated.dart';
import 'package:meta/meta.dart';
import 'dart:ffi' as ffi;

class FlutterRustBridgeExampleBenchmarkSuitePlatform
    extends FlutterRustBridgeBase<FlutterRustBridgeExampleBenchmarkSuiteWire> {
  FlutterRustBridgeExampleBenchmarkSuitePlatform(ffi.DynamicLibrary dylib)
      : super(FlutterRustBridgeExampleBenchmarkSuiteWire(dylib));
// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_StringList> api2wire_StringList(List<String> raw) {
    final ans = inner.new_StringList_0(raw.length);
    for (var i = 0; i < raw.length; i++) {
      ans.ref.ptr[i] = api2wire_String(raw[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_Uuids(List<UuidValue> raw) {
    return api2wire_uint_8_list(api2wireConcatenateBytes(raw));
  }

  @protected
  int api2wire_i64(int raw) {
    return raw;
  }

  @protected
  int api2wire_u64(int raw) {
    return raw;
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }

// Section: api_fill_to_wire

}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class FlutterRustBridgeExampleBenchmarkSuiteWire implements FlutterRustBridgeWireBase {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  FlutterRustBridgeExampleBenchmarkSuiteWire(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  FlutterRustBridgeExampleBenchmarkSuiteWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName) lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>('store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr.asFunction<void Function(DartPostCObjectFnType)>();

  void wire_handle_uuids(
    int port_,
    ffi.Pointer<wire_uint_8_list> ids,
  ) {
    return _wire_handle_uuids(
      port_,
      ids,
    );
  }

  late final _wire_handle_uuidsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_handle_uuids');
  late final _wire_handle_uuids = _wire_handle_uuidsPtr.asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_handle_uuids_convert_to_strings(
    int port_,
    ffi.Pointer<wire_uint_8_list> ids,
  ) {
    return _wire_handle_uuids_convert_to_strings(
      port_,
      ids,
    );
  }

  late final _wire_handle_uuids_convert_to_stringsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>(
          'wire_handle_uuids_convert_to_strings');
  late final _wire_handle_uuids_convert_to_strings =
      _wire_handle_uuids_convert_to_stringsPtr.asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_handle_strings(
    int port_,
    ffi.Pointer<wire_StringList> strings,
  ) {
    return _wire_handle_strings(
      port_,
      strings,
    );
  }

  late final _wire_handle_stringsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Pointer<wire_StringList>)>>('wire_handle_strings');
  late final _wire_handle_strings =
      _wire_handle_stringsPtr.asFunction<void Function(int, ffi.Pointer<wire_StringList>)>();

  void wire_handle_bool(
    int port_,
    bool input,
  ) {
    return _wire_handle_bool(
      port_,
      input,
    );
  }

  late final _wire_handle_boolPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Bool)>>('wire_handle_bool');
  late final _wire_handle_bool = _wire_handle_boolPtr.asFunction<void Function(int, bool)>();

  void wire_handle_u32(
    int port_,
    int input,
  ) {
    return _wire_handle_u32(
      port_,
      input,
    );
  }

  late final _wire_handle_u32Ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Uint32)>>('wire_handle_u32');
  late final _wire_handle_u32 = _wire_handle_u32Ptr.asFunction<void Function(int, int)>();

  void wire_handle_u64(
    int port_,
    int input,
  ) {
    return _wire_handle_u64(
      port_,
      input,
    );
  }

  late final _wire_handle_u64Ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Uint64)>>('wire_handle_u64');
  late final _wire_handle_u64 = _wire_handle_u64Ptr.asFunction<void Function(int, int)>();

  void wire_handle_i8(
    int port_,
    int input,
  ) {
    return _wire_handle_i8(
      port_,
      input,
    );
  }

  late final _wire_handle_i8Ptr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Int8)>>('wire_handle_i8');
  late final _wire_handle_i8 = _wire_handle_i8Ptr.asFunction<void Function(int, int)>();

  void wire_handle_i16(
    int port_,
    int input,
  ) {
    return _wire_handle_i16(
      port_,
      input,
    );
  }

  late final _wire_handle_i16Ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Int16)>>('wire_handle_i16');
  late final _wire_handle_i16 = _wire_handle_i16Ptr.asFunction<void Function(int, int)>();

  void wire_handle_i32(
    int port_,
    int input,
  ) {
    return _wire_handle_i32(
      port_,
      input,
    );
  }

  late final _wire_handle_i32Ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Int32)>>('wire_handle_i32');
  late final _wire_handle_i32 = _wire_handle_i32Ptr.asFunction<void Function(int, int)>();

  void wire_handle_i64(
    int port_,
    int input,
  ) {
    return _wire_handle_i64(
      port_,
      input,
    );
  }

  late final _wire_handle_i64Ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Int64)>>('wire_handle_i64');
  late final _wire_handle_i64 = _wire_handle_i64Ptr.asFunction<void Function(int, int)>();

  void wire_handle_f32(
    int port_,
    double input,
  ) {
    return _wire_handle_f32(
      port_,
      input,
    );
  }

  late final _wire_handle_f32Ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Float)>>('wire_handle_f32');
  late final _wire_handle_f32 = _wire_handle_f32Ptr.asFunction<void Function(int, double)>();

  void wire_handle_f64(
    int port_,
    double input,
  ) {
    return _wire_handle_f64(
      port_,
      input,
    );
  }

  late final _wire_handle_f64Ptr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Double)>>('wire_handle_f64');
  late final _wire_handle_f64 = _wire_handle_f64Ptr.asFunction<void Function(int, double)>();

  void wire_handle_string(
    int port_,
    ffi.Pointer<wire_uint_8_list> input,
  ) {
    return _wire_handle_string(
      port_,
      input,
    );
  }

  late final _wire_handle_stringPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_handle_string');
  late final _wire_handle_string =
      _wire_handle_stringPtr.asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  WireSyncReturnStruct wire_handle_sync_bool(
    bool input,
  ) {
    return _wire_handle_sync_bool(
      input,
    );
  }

  late final _wire_handle_sync_boolPtr =
      _lookup<ffi.NativeFunction<WireSyncReturnStruct Function(ffi.Bool)>>('wire_handle_sync_bool');
  late final _wire_handle_sync_bool = _wire_handle_sync_boolPtr.asFunction<WireSyncReturnStruct Function(bool)>();

  WireSyncReturnStruct wire_handle_sync_u32(
    int input,
  ) {
    return _wire_handle_sync_u32(
      input,
    );
  }

  late final _wire_handle_sync_u32Ptr =
      _lookup<ffi.NativeFunction<WireSyncReturnStruct Function(ffi.Uint32)>>('wire_handle_sync_u32');
  late final _wire_handle_sync_u32 = _wire_handle_sync_u32Ptr.asFunction<WireSyncReturnStruct Function(int)>();

  WireSyncReturnStruct wire_handle_sync_u64(
    int input,
  ) {
    return _wire_handle_sync_u64(
      input,
    );
  }

  late final _wire_handle_sync_u64Ptr =
      _lookup<ffi.NativeFunction<WireSyncReturnStruct Function(ffi.Uint64)>>('wire_handle_sync_u64');
  late final _wire_handle_sync_u64 = _wire_handle_sync_u64Ptr.asFunction<WireSyncReturnStruct Function(int)>();

  WireSyncReturnStruct wire_handle_sync_i8(
    int input,
  ) {
    return _wire_handle_sync_i8(
      input,
    );
  }

  late final _wire_handle_sync_i8Ptr =
      _lookup<ffi.NativeFunction<WireSyncReturnStruct Function(ffi.Int8)>>('wire_handle_sync_i8');
  late final _wire_handle_sync_i8 = _wire_handle_sync_i8Ptr.asFunction<WireSyncReturnStruct Function(int)>();

  WireSyncReturnStruct wire_handle_sync_i16(
    int input,
  ) {
    return _wire_handle_sync_i16(
      input,
    );
  }

  late final _wire_handle_sync_i16Ptr =
      _lookup<ffi.NativeFunction<WireSyncReturnStruct Function(ffi.Int16)>>('wire_handle_sync_i16');
  late final _wire_handle_sync_i16 = _wire_handle_sync_i16Ptr.asFunction<WireSyncReturnStruct Function(int)>();

  WireSyncReturnStruct wire_handle_sync_i32(
    int input,
  ) {
    return _wire_handle_sync_i32(
      input,
    );
  }

  late final _wire_handle_sync_i32Ptr =
      _lookup<ffi.NativeFunction<WireSyncReturnStruct Function(ffi.Int32)>>('wire_handle_sync_i32');
  late final _wire_handle_sync_i32 = _wire_handle_sync_i32Ptr.asFunction<WireSyncReturnStruct Function(int)>();

  WireSyncReturnStruct wire_handle_sync_i64(
    int input,
  ) {
    return _wire_handle_sync_i64(
      input,
    );
  }

  late final _wire_handle_sync_i64Ptr =
      _lookup<ffi.NativeFunction<WireSyncReturnStruct Function(ffi.Int64)>>('wire_handle_sync_i64');
  late final _wire_handle_sync_i64 = _wire_handle_sync_i64Ptr.asFunction<WireSyncReturnStruct Function(int)>();

  WireSyncReturnStruct wire_handle_sync_f32(
    double input,
  ) {
    return _wire_handle_sync_f32(
      input,
    );
  }

  late final _wire_handle_sync_f32Ptr =
      _lookup<ffi.NativeFunction<WireSyncReturnStruct Function(ffi.Float)>>('wire_handle_sync_f32');
  late final _wire_handle_sync_f32 = _wire_handle_sync_f32Ptr.asFunction<WireSyncReturnStruct Function(double)>();

  WireSyncReturnStruct wire_handle_sync_f64(
    double input,
  ) {
    return _wire_handle_sync_f64(
      input,
    );
  }

  late final _wire_handle_sync_f64Ptr =
      _lookup<ffi.NativeFunction<WireSyncReturnStruct Function(ffi.Double)>>('wire_handle_sync_f64');
  late final _wire_handle_sync_f64 = _wire_handle_sync_f64Ptr.asFunction<WireSyncReturnStruct Function(double)>();

  WireSyncReturnStruct wire_handle_sync_string(
    ffi.Pointer<wire_uint_8_list> input,
  ) {
    return _wire_handle_sync_string(
      input,
    );
  }

  late final _wire_handle_sync_stringPtr =
      _lookup<ffi.NativeFunction<WireSyncReturnStruct Function(ffi.Pointer<wire_uint_8_list>)>>(
          'wire_handle_sync_string');
  late final _wire_handle_sync_string =
      _wire_handle_sync_stringPtr.asFunction<WireSyncReturnStruct Function(ffi.Pointer<wire_uint_8_list>)>();

  void wire_dummy(
    int port_,
    int unit,
  ) {
    return _wire_dummy(
      port_,
      unit,
    );
  }

  late final _wire_dummyPtr = _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Int32)>>('wire_dummy');
  late final _wire_dummy = _wire_dummyPtr.asFunction<void Function(int, int)>();

  ffi.Pointer<wire_StringList> new_StringList_0(
    int len,
  ) {
    return _new_StringList_0(
      len,
    );
  }

  late final _new_StringList_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_StringList> Function(ffi.Int32)>>('new_StringList_0');
  late final _new_StringList_0 = _new_StringList_0Ptr.asFunction<ffi.Pointer<wire_StringList> Function(int)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_uint_8_list> Function(ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr.asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturnStruct(
    WireSyncReturnStruct val,
  ) {
    return _free_WireSyncReturnStruct(
      val,
    );
  }

  late final _free_WireSyncReturnStructPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturnStruct)>>('free_WireSyncReturnStruct');
  late final _free_WireSyncReturnStruct =
      _free_WireSyncReturnStructPtr.asFunction<void Function(WireSyncReturnStruct)>();
}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

class wire_StringList extends ffi.Struct {
  external ffi.Pointer<ffi.Pointer<wire_uint_8_list>> ptr;

  @ffi.Int32()
  external int len;
}

typedef DartPostCObjectFnType = ffi.Pointer<ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
