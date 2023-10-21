import 'package:botton_navigation_bar_4items/screens/home/components/more_items.dart';
import 'package:flutter/material.dart';

import '../screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(index) {
    setState((){
      _selectedIndex = index;
    });
  }
  List<Widget> _widgetOptions = [
    Home(),
    Business(),
    School(),
    MoreItems()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          BottomNavigationBarItem(icon: Icon(Icons.more_sharp), label: 'More Items'),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.cyan,
        onTap: _onItemTapped,
        //selectedItemColor: null,
        //type: BottomNavigationBarType.shifting, // Mas de 4 items por defecto está caracteristica.
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey.withOpacity(0.9),

      ),
    );
  }
}
