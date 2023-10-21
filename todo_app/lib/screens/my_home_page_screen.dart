import 'package:flutter/material.dart';

import '../widgets/todos.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Todo App'),
        backgroundColor: Colors.amber,
      ),
      body: Todos(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showDialog(context);
        },
        child: const Icon(Icons.add, color: Colors.amber),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Simple Dialog Example'),
        content: const TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Add your todo here...',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Save'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}
