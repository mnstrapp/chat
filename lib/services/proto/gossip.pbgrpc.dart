//
//  Generated code. Do not modify.
//  source: proto/gossip.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'gossip.pb.dart' as $0;

export 'gossip.pb.dart';

@$pb.GrpcServiceName('gossip.GossipApi')
class GossipApiClient extends $grpc.Client {
  static final _$subscribeToEvents = $grpc.ClientMethod<$0.User, $0.Event>(
      '/gossip.GossipApi/SubscribeToEvents',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Event.fromBuffer(value));
  static final _$sendEvent = $grpc.ClientMethod<$0.Event, $0.Empty>(
      '/gossip.GossipApi/SendEvent',
      ($0.Event value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$unsubscribeFromEvents = $grpc.ClientMethod<$0.User, $0.Empty>(
      '/gossip.GossipApi/UnsubscribeFromEvents',
      ($0.User value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  GossipApiClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$0.Event> subscribeToEvents($0.User request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$subscribeToEvents, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.Empty> sendEvent($0.Event request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendEvent, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> unsubscribeFromEvents($0.User request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unsubscribeFromEvents, request, options: options);
  }
}

@$pb.GrpcServiceName('gossip.GossipApi')
abstract class GossipApiServiceBase extends $grpc.Service {
  $core.String get $name => 'gossip.GossipApi';

  GossipApiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.User, $0.Event>(
        'SubscribeToEvents',
        subscribeToEvents_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.Event value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Event, $0.Empty>(
        'SendEvent',
        sendEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Event.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.User, $0.Empty>(
        'UnsubscribeFromEvents',
        unsubscribeFromEvents_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.User.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Stream<$0.Event> subscribeToEvents_Pre($grpc.ServiceCall call, $async.Future<$0.User> request) async* {
    yield* subscribeToEvents(call, await request);
  }

  $async.Future<$0.Empty> sendEvent_Pre($grpc.ServiceCall call, $async.Future<$0.Event> request) async {
    return sendEvent(call, await request);
  }

  $async.Future<$0.Empty> unsubscribeFromEvents_Pre($grpc.ServiceCall call, $async.Future<$0.User> request) async {
    return unsubscribeFromEvents(call, await request);
  }

  $async.Stream<$0.Event> subscribeToEvents($grpc.ServiceCall call, $0.User request);
  $async.Future<$0.Empty> sendEvent($grpc.ServiceCall call, $0.Event request);
  $async.Future<$0.Empty> unsubscribeFromEvents($grpc.ServiceCall call, $0.User request);
}
