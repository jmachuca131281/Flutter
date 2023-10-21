import 'package:flutter/material.dart';
import 'package:app_solo/screens/counter_solo.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterScreem()
    );
  }
}