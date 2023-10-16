import 'package:flutter/material.dart';

class ChangeCurrency extends StatelessWidget {
  const ChangeCurrency({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
            title: const Text(
              "Change currency",
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
            ]),
        body: Placeholder());
  }
}
