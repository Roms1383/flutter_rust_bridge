// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.48.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names

import 'dart:convert';
import 'dart:async';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:uuid/uuid.dart';

abstract class FlutterRustBridgeExampleBenchmarkSuite {
  Future<List<Metric>> rustMetrics({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRustMetricsConstMeta;

  Future<UuidValue> handleUuid({required UuidValue id, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kHandleUuidConstMeta;

  Future<List<UuidValue>> handleUuids(
      {required List<UuidValue> ids, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kHandleUuidsConstMeta;

  Future<List<String>> handleUuidsConvertToStrings(
      {required List<UuidValue> ids, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kHandleUuidsConvertToStringsConstMeta;

  Future<FeatureUuid> handleNestedUuids(
      {required FeatureUuid ids, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kHandleNestedUuidsConstMeta;

  Future<List<String>> handleStrings(
      {required List<String> strings, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kHandleStringsConstMeta;

  Future<int> sendI64({required int value, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kSendI64ConstMeta;
}

class FeatureUuid {
  final UuidValue one;
  final List<UuidValue> many;

  FeatureUuid({
    required this.one,
    required this.many,
  });
}

/// metric used for continuous-benchmark worflow
class Metric {
  final String name;
  final int? value;
  final Unit unit;
  String? extra;

  Metric({
    required this.name,
    this.value,
    required this.unit,
    this.extra,
  });
}

enum Unit {
  Microseconds,
  Nanoseconds,
}
