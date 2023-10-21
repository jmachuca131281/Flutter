import 'package:codigo_facilito/screens/homeScreen.dart';
import 'package:codigo_facilito/screens/loginScreen.dart';
import 'package:codigo_facilito/widgets/myButton.dart';
import 'package:codigo_facilito/widgets/myFloatingActionButton.dart';
import 'package:codigo_facilito/widgets/myIcon.dart';
import 'package:codigo_facilito/widgets/myImage.dart';
import 'package:codigo_facilito/widgets/myRichText.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Titulo",
      initialRoute: 'myFloatingActionButton',
      routes: {
        'myFloatingActionButton': (_)=> MyFloatingActionButton(),
        'myButton': (_)=> MyButton(),
        'myImage': (_)=> MyImage(),
        'myIcon': (_)=> MyIcon(),
        'widgets': (_) => MyRichText(),
        'login': (_)=> LoginScreen(),
        'home': (_)=> HomeScreen(),
    },
    );
  }
}

