import 'package:chat/services/gossip.dart';
import 'package:flutter/material.dart';
import 'package:fixnum/fixnum.dart';
import 'dart:convert';
import '../services/proto/gossip.pb.dart';

class ShowGossipPage extends StatefulWidget {
  const ShowGossipPage({super.key, required this.uri, required this.name});

  final String uri;
  final String name;
  @override
  State<StatefulWidget> createState() => _ShowGossipPageState();

}

class _ShowGossipPageState extends State<ShowGossipPage> {
  late GossipService service;
  Map<String, Event> events = {};
  late User user;

  @override
  void initState() {
    super.initState();
    var parts = widget.uri.split(":");
    service = GossipService(host: parts[0], port: int.parse(parts[1]));

    service.listen();
    user = User(id: widget.name);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Event>(
      stream: service.apiClient.subscribeToEvents(user),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          Event event = snapshot.requireData;
          final id = "${event.fromId}:${event.timestamp}";
            events[id] = event;
        }
        final messages = events.entries.map((e) {
          final event = e.value;
          String text = "[${event.fromId}]";

          switch (event.type) {
            case EventType.UserEventType:
              text += " (${event.user.status}) ";
              break;
            case EventType.MessageEventType:
              text += " ${utf8.decode(event.message.content)}";
              break;
            case EventType.DoneEventType:
              break;
            case EventType.NoopEventType:
              break;
          }
          return Text(text);
        }).toList();
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(widget.uri),
          ),
          body: Column(
            children: [
              Expanded(
                flex: 9,
                child: ListView(
                      children: messages,
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onSubmitted: (value) {
                      Event event = Event(
                          fromId: user.id,
                          type: EventType.MessageEventType,
                          message: MessageEvent(content: value.codeUnits),
                          timestamp: Int64(DateTime.now().millisecondsSinceEpoch ~/ 100),
                      );
                      service.apiClient.sendEvent(event);
                    },
                  ),
                ),
              )
            ],
          ),
        );
      }
    );
  }

}