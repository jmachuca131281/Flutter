import 'package:flutter/material.dart';
import 'package:perfume/screens/screens.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        HomeBackground(),
        HomeLayout()
      ],
    );
  }
}
