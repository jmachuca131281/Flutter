import 'package:flutter/material.dart';
import 'package:wavy_custom_bottom_navigation_bar/screens/home/components/bottom_navigator_icons.dart';
import 'package:wavy_custom_bottom_navigation_bar/screens/home/components/wavy_bottom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              WavyBotton(),
              BottomNavigationIcons()
            ],
          ),
        ),
      ),
    );
  }
}
