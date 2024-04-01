import 'package:chat/gossip/new_gossip.dart';
import 'package:chat/gossip/show_gossip.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> gossips = [];
  bool ready = false;
  String name = "";

  addGossip(context) async {
    var uri = await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const NewGossipPage(),
    ));
    setState(() {
      gossips.add(uri);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: gossips.isEmpty
              ? ElevatedButton(
                  onPressed: () async {
                    addGossip(context);
                  },
                  child: const Text('Add a Gossip'))
              : !ready
                  ? Column(
                      children: [
                        const Text('Name'),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextField(
                            onChanged: (value) {
                              setState(() {
                                name = value;
                              });
                            },
                            onSubmitted: (value) {
                              setState(() {
                                ready = true;
                              });
                            },
                          ),
                        )
                      ],
                    )
                  : const Text('Select a Gossip to chat'),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: gossips
              .map(
                (uri) => ListTile(
                  title: Text(uri.toString()),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ShowGossipPage(uri: uri, name: name,)));
                  },
                ),
              )
              .toList(),
        ),
      ),
      floatingActionButton: ElevatedButton.icon(
        onPressed: () async {
          addGossip(context);
        },
        label: const Text('Add Gossip'),
        icon: const Icon(Icons.radio),
      ),
    );
  }
}
