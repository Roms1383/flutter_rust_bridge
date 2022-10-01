// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.48.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names

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
  Future<UuidValue> handleUuid({required UuidValue id, dynamic hint}) => _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_handle_uuid(port_, _platform.api2wire_Uuid(id)),
        parseSuccessData: _wire2api_Uuid,
        constMeta: kHandleUuidConstMeta,
        argValues: [id],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kHandleUuidConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_uuid",
        argNames: ["id"],
      );

  Future<List<UuidValue>> handleUuids({required List<UuidValue> ids, dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_handle_uuids(port_, _platform.api2wire_Uuids(ids)),
        parseSuccessData: _wire2api_Uuids,
        constMeta: kHandleUuidsConstMeta,
        argValues: [ids],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kHandleUuidsConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_uuids",
        argNames: ["ids"],
      );

  Future<List<String>> handleUuidsConvertToStrings({required List<UuidValue> ids, dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_handle_uuids_convert_to_strings(port_, _platform.api2wire_Uuids(ids)),
        parseSuccessData: _wire2api_StringList,
        constMeta: kHandleUuidsConvertToStringsConstMeta,
        argValues: [ids],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kHandleUuidsConvertToStringsConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_uuids_convert_to_strings",
        argNames: ["ids"],
      );

  Future<FeatureUuid> handleNestedUuids({required FeatureUuid ids, dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) =>
            _platform.inner.wire_handle_nested_uuids(port_, _platform.api2wire_box_autoadd_feature_uuid(ids)),
        parseSuccessData: _wire2api_feature_uuid,
        constMeta: kHandleNestedUuidsConstMeta,
        argValues: [ids],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kHandleNestedUuidsConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_nested_uuids",
        argNames: ["ids"],
      );

  Future<List<String>> handleStrings({required List<String> strings, dynamic hint}) =>
      _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_handle_strings(port_, _platform.api2wire_StringList(strings)),
        parseSuccessData: _wire2api_StringList,
        constMeta: kHandleStringsConstMeta,
        argValues: [strings],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kHandleStringsConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "handle_strings",
        argNames: ["strings"],
      );

  Future<int> sendI64({required int value, dynamic hint}) => _platform.executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => _platform.inner.wire_send_i64(port_, _platform.api2wire_i64(value)),
        parseSuccessData: _wire2api_i64,
        constMeta: kSendI64ConstMeta,
        argValues: [value],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kSendI64ConstMeta => const FlutterRustBridgeTaskConstMeta(
        debugName: "send_i64",
        argNames: ["value"],
      );
}

// Section: api2wire

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: wire2api

String _wire2api_String(dynamic raw) {
  return raw as String;
}

List<String> _wire2api_StringList(dynamic raw) {
  return (raw as List<dynamic>).cast<String>();
}

UuidValue _wire2api_Uuid(dynamic raw) {
  return UuidValue.fromByteList(_wire2api_uint_8_list(raw));
}

List<UuidValue> _wire2api_Uuids(dynamic raw) {
  final bytes = _wire2api_uint_8_list(raw);
  return wire2apiUuids(bytes);
}

FeatureUuid _wire2api_feature_uuid(dynamic raw) {
  final arr = raw as List<dynamic>;
  if (arr.length != 2) throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
  return FeatureUuid(
    one: _wire2api_Uuid(arr[0]),
    many: _wire2api_Uuids(arr[1]),
  );
}

int _wire2api_i64(dynamic raw) {
  return castInt(raw);
}

int _wire2api_u8(dynamic raw) {
  return raw as int;
}

Uint8List _wire2api_uint_8_list(dynamic raw) {
  return raw as Uint8List;
}
