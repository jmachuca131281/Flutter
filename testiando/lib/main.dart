import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Fluter tutorial',
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          onPressed: null,
          icon: Icon(Icons.menu),
          tooltip: 'Navigation Menu',
        ),
        title: const Text('My first app with VIM'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            tooltip: 'Search',
          ),
        ],
      ),
      body: const Center(
        child: Text('Hola desde Alacritty',
            style: TextStyle(
              fontSize: 50,
            )),
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add', // used by assistive technologies
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
