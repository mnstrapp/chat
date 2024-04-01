//
//  Generated code. Do not modify.
//  source: proto/gossip.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eventTypeDescriptor instead')
const EventType$json = {
  '1': 'EventType',
  '2': [
    {'1': 'NoopEventType', '2': 0},
    {'1': 'MessageEventType', '2': 1},
    {'1': 'UserEventType', '2': 2},
    {'1': 'DoneEventType', '2': 3},
  ],
};

/// Descriptor for `EventType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List eventTypeDescriptor = $convert.base64Decode(
    'CglFdmVudFR5cGUSEQoNTm9vcEV2ZW50VHlwZRAAEhQKEE1lc3NhZ2VFdmVudFR5cGUQARIRCg'
    '1Vc2VyRXZlbnRUeXBlEAISEQoNRG9uZUV2ZW50VHlwZRAD');

@$core.Deprecated('Use networkStatusDescriptor instead')
const NetworkStatus$json = {
  '1': 'NetworkStatus',
  '2': [
    {'1': 'Online', '2': 0},
    {'1': 'Offline', '2': 1},
  ],
};

/// Descriptor for `NetworkStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List networkStatusDescriptor = $convert.base64Decode(
    'Cg1OZXR3b3JrU3RhdHVzEgoKBk9ubGluZRAAEgsKB09mZmxpbmUQAQ==');

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVFbXB0eQ==');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use eventDescriptor instead')
const Event$json = {
  '1': 'Event',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.gossip.EventType', '10': 'type'},
    {'1': 'from_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'fromId', '17': true},
    {'1': 'to_id', '3': 3, '4': 1, '5': 9, '9': 1, '10': 'toId', '17': true},
    {'1': 'timestamp', '3': 4, '4': 1, '5': 4, '10': 'timestamp'},
    {'1': 'noop', '3': 5, '4': 1, '5': 11, '6': '.gossip.NoopEvent', '9': 2, '10': 'noop', '17': true},
    {'1': 'message', '3': 6, '4': 1, '5': 11, '6': '.gossip.MessageEvent', '9': 3, '10': 'message', '17': true},
    {'1': 'user', '3': 7, '4': 1, '5': 11, '6': '.gossip.UserEvent', '9': 4, '10': 'user', '17': true},
    {'1': 'done', '3': 8, '4': 1, '5': 11, '6': '.gossip.DoneEvent', '9': 5, '10': 'done', '17': true},
  ],
  '8': [
    {'1': '_from_id'},
    {'1': '_to_id'},
    {'1': '_noop'},
    {'1': '_message'},
    {'1': '_user'},
    {'1': '_done'},
  ],
};

/// Descriptor for `Event`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventDescriptor = $convert.base64Decode(
    'CgVFdmVudBIlCgR0eXBlGAEgASgOMhEuZ29zc2lwLkV2ZW50VHlwZVIEdHlwZRIcCgdmcm9tX2'
    'lkGAIgASgJSABSBmZyb21JZIgBARIYCgV0b19pZBgDIAEoCUgBUgR0b0lkiAEBEhwKCXRpbWVz'
    'dGFtcBgEIAEoBFIJdGltZXN0YW1wEioKBG5vb3AYBSABKAsyES5nb3NzaXAuTm9vcEV2ZW50SA'
    'JSBG5vb3CIAQESMwoHbWVzc2FnZRgGIAEoCzIULmdvc3NpcC5NZXNzYWdlRXZlbnRIA1IHbWVz'
    'c2FnZYgBARIqCgR1c2VyGAcgASgLMhEuZ29zc2lwLlVzZXJFdmVudEgEUgR1c2VyiAEBEioKBG'
    'RvbmUYCCABKAsyES5nb3NzaXAuRG9uZUV2ZW50SAVSBGRvbmWIAQFCCgoIX2Zyb21faWRCCAoG'
    'X3RvX2lkQgcKBV9ub29wQgoKCF9tZXNzYWdlQgcKBV91c2VyQgcKBV9kb25l');

@$core.Deprecated('Use noopEventDescriptor instead')
const NoopEvent$json = {
  '1': 'NoopEvent',
};

/// Descriptor for `NoopEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noopEventDescriptor = $convert.base64Decode(
    'CglOb29wRXZlbnQ=');

@$core.Deprecated('Use messageEventDescriptor instead')
const MessageEvent$json = {
  '1': 'MessageEvent',
  '2': [
    {'1': 'content', '3': 1, '4': 1, '5': 12, '10': 'content'},
  ],
};

/// Descriptor for `MessageEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageEventDescriptor = $convert.base64Decode(
    'CgxNZXNzYWdlRXZlbnQSGAoHY29udGVudBgBIAEoDFIHY29udGVudA==');

@$core.Deprecated('Use userEventDescriptor instead')
const UserEvent$json = {
  '1': 'UserEvent',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.gossip.NetworkStatus', '10': 'status'},
  ],
};

/// Descriptor for `UserEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userEventDescriptor = $convert.base64Decode(
    'CglVc2VyRXZlbnQSFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkEi0KBnN0YXR1cxgCIAEoDjIVLm'
    'dvc3NpcC5OZXR3b3JrU3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use doneEventDescriptor instead')
const DoneEvent$json = {
  '1': 'DoneEvent',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.gossip.NetworkStatus', '10': 'status'},
  ],
};

/// Descriptor for `DoneEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doneEventDescriptor = $convert.base64Decode(
    'CglEb25lRXZlbnQSFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkEi0KBnN0YXR1cxgCIAEoDjIVLm'
    'dvc3NpcC5OZXR3b3JrU3RhdHVzUgZzdGF0dXM=');

