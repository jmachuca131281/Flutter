import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SafeArea(
            child: Text(
      "Home",
      style: TextStyle(fontSize: 30),
    )));
  }
}
