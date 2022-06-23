// Primer widget Recomendación: El nombre del archivo debe tener el nombre de la clase * capitalizado.

import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview tipo 1'),
      ),
      body: ListView( //
        children: [
          ...options.map((game) => ListTile(title: Text(game),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          )).toList()
        ],
      ),
    );
  }
}
