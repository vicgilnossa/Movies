import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);
  final options = const [
    "Megaman",
    "MetalGear",
    "Multiversus",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView1 tipo 1"),
      ),
      body: ListView(children: [
        ...options
            .map((game) => ListTile(
                  title: Text(game),
                  trailing: const Icon(Icons.ac_unit_sharp),
                ))
            .toList()
      ]),
    );
  }
}
