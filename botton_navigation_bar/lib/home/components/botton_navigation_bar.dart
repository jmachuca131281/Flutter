import 'package:botton_navigation_bar/home/home_screen.dart';
import 'package:flutter/material.dart';

class BottonNavigationBar extends StatefulWidget {
  final HomeScreen actualTap;
  const BottonNavigationBar({Key? key, required this.actualTap}) : super(key: key);

  @override
  State<BottonNavigationBar> createState() => _BottonNavigationBarState();
}

class _BottonNavigationBarState extends State<BottonNavigationBar> {
  int _actualTap = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.add_call), label: "Call"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle), label: "Users")
      ],
      currentIndex: _actualTap,
      onTap: (index) {
        setState(() {
          _actualTap = index;
        });
      },
    );;
  }
}
