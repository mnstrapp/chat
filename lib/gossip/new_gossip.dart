import 'package:flutter/material.dart';

class NewGossipPage extends StatefulWidget {
  const NewGossipPage({super.key});

  @override
  State<StatefulWidget> createState() => _NewGossipPageState();

}

class _NewGossipPageState extends State<NewGossipPage> {
  String url = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add a Gossip'),centerTitle: true,),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const Text('Gossip URI'),
            TextField(
              onChanged: (value) {
                setState(() {
                  url = value;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pop(url);
                },
                label: const Text("Save"),
                icon: const Icon(Icons.save_alt_rounded),
              ),
            )
          ],
        ),
      ),
    );
  }

}