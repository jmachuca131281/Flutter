import 'package:flutter/material.dart';

class BeautyScreen extends StatelessWidget {
  const BeautyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beauty'),
      ),
      body: Center(
        child: Text('Beauty'),
      ),
    );
  }
}