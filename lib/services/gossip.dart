import 'dart:developer';

import 'package:grpc/grpc.dart';

import './proto/gossip.pbgrpc.dart';

class GossipService {
  GossipService({required this.host, required this.port});

  final String host;
  final int port;
  late GossipApiClient _apiClient;

  listen() => _createChannel();

  GossipApiClient get apiClient => _apiClient;

  _createChannel() {
    final channel = ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(credentials: ChannelCredentials.secure()),
    );
    _apiClient = GossipApiClient(channel);
  }
}
