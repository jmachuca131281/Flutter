import 'package:flutter/material.dart';
import 'package:counter_app/screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

// All Widgets are class
class MyApp extends StatelessWidget {
  // Constructor
  const MyApp({Key? key}) : super(key: key);

  // All method Widget has a "build"
  @override // With BoildContext access to IneritedWidget
  Widget build(BuildContext context) {
    // Class MaterialApp is a Widget that graps a number of widgets.
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Hide banner
      // home: HomeScreen() 
      // Widget Home is "/", for several root use Navigator
      home: CounterScreen() 
    );
  }

}

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     // Ctrl+space = Podemos ver todos los propiedades.
  //     // Ctrl+click vemos las clases
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: const Text('Home'),
  //       ),
  //     ),
  //     debugShowCheckedModeBanner: false,
  //   );
  // }