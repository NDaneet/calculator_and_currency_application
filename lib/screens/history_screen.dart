import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("History"),
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      body: Container()
    );
  }
}