import 'package:botton_navigation_bar/home/components/body.dart';
import 'package:botton_navigation_bar/home/components/call_screen.dart';
import 'package:flutter/material.dart';

import 'components/user_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _actualTap = 0;
  List<Widget> _paginas = [Body(), UserScreen(), CallScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: actualTap == 0 ? Body() : UserScreen(), // Primera forma para cuando tiene dos taps.
      body: _paginas[_actualTap],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
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
    );
  }
}
