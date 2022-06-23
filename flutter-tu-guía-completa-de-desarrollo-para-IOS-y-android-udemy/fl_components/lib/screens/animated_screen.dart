import 'dart:math' show Random;

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape() {
    // print('object');
    final randon = Random();
    _width = randon.nextInt(300).toDouble() + 70;
    _height = randon.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
        randon.nextInt(255), randon.nextInt(255), randon.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(randon.nextInt(100).toDouble()+50);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: Container(
          height: _height,
          width: _width,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.play_circle_outline,
          size: 50,
        ),
        onPressed: changeShape,
      ),
    );
  }
}
