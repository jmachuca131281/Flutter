import 'package:flutter/material.dart';

class PetsScreen extends StatelessWidget {
  const PetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pets'),
      ),
      body: Center(
        child: Text('Pets'),
      ),
    );
  }
}