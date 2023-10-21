import 'package:flutter/material.dart';
import 'package:pet/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            DrawerScreen(),
            Home()
          ],
        )
    );
  }
}