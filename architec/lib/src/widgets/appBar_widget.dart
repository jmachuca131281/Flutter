import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        elevation: 0,
      ),
    );
  }
}