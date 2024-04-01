//
//  Generated code. Do not modify.
//  source: proto/gossip.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class EventType extends $pb.ProtobufEnum {
  static const EventType NoopEventType = EventType._(0, _omitEnumNames ? '' : 'NoopEventType');
  static const EventType MessageEventType = EventType._(1, _omitEnumNames ? '' : 'MessageEventType');
  static const EventType UserEventType = EventType._(2, _omitEnumNames ? '' : 'UserEventType');
  static const EventType DoneEventType = EventType._(3, _omitEnumNames ? '' : 'DoneEventType');

  static const $core.List<EventType> values = <EventType> [
    NoopEventType,
    MessageEventType,
    UserEventType,
    DoneEventType,
  ];

  static final $core.Map<$core.int, EventType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static EventType? valueOf($core.int value) => _byValue[value];

  const EventType._($core.int v, $core.String n) : super(v, n);
}

class NetworkStatus extends $pb.ProtobufEnum {
  static const NetworkStatus Online = NetworkStatus._(0, _omitEnumNames ? '' : 'Online');
  static const NetworkStatus Offline = NetworkStatus._(1, _omitEnumNames ? '' : 'Offline');

  static const $core.List<NetworkStatus> values = <NetworkStatus> [
    Online,
    Offline,
  ];

  static final $core.Map<$core.int, NetworkStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NetworkStatus? valueOf($core.int value) => _byValue[value];

  const NetworkStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
