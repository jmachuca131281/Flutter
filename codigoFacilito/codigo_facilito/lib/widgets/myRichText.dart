import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RichText(
        text: const TextSpan(
          text: "¿Tienes una cuenta?",
          style: TextStyle(
            color: Colors.yellowAccent,
            fontSize: 20,
          ),
          children: [
            TextSpan(
              text: "Inicia sesión",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              )
            )
          ]
        ),
      ),
    );
  }
}