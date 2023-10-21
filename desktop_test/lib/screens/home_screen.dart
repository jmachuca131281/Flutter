import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Hello World',
        onPressed: () => context.go('/details'),
        child: const Icon(Icons.add),
      ),
    );
  }
}