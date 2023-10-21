
import 'package:botton_navigation_bar_4items/screens/screens.dart';
import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 0;
  void _onItemTapped(index) {
    setState((){
      _selectedIndex = index;
    });
  }
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Business(),
    School()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.redAccent,
      ),
    );
  }

}
