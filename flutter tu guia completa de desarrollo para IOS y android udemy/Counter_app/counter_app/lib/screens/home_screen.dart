import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Property TextStyle to change style.
    TextStyle textStyle30 = const TextStyle(fontSize: 30);
    // Scaffold prepare my work place
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 10.0, // Show darkness
      ),
      body: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de clicks', style: textStyle30),
            Text('20', style: textStyle30),
            // Text('Número de clicks', style: TextStyle(fontSize: 30), ),
            // Text( '20', style: TextStyle(fontSize: 30),),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_outlined),
        onPressed: () {
          print('Hola');
        },
      ),
    );
  }
}
