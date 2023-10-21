import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Text("Hola Magola, ¿cómo estás? Thanks God I love you ",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
            wordSpacing: 5,
            fontFamily: "Roboto",
            decoration: TextDecoration.underline
          ),
          textAlign: TextAlign.center,
          softWrap: true, // Break entre líneas, por defecto true.
          maxLines: 2,
          overflow: TextOverflow.clip
        ),
      ),
    );
  }
}
