import 'package:flutter/material.dart';

class ButtonNavigation extends StatefulWidget {
  const ButtonNavigation({Key? key}) : super(key: key);

  @override
  State<ButtonNavigation> createState() => _ButtonNavigationState();
}

class _ButtonNavigationState extends State<ButtonNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon( Icons.home, size: 30, ),
            label: "Home",
            backgroundColor: Colors.white
        ),
        BottomNavigationBarItem(
            icon: Icon( Icons.account_circle_outlined, size: 30),
            label: "Discovery",
            backgroundColor: Colors.white
        ),
        BottomNavigationBarItem(
            icon: Icon( Icons.bookmark, size: 30, ),
            label: "Bookmark",
            backgroundColor: Colors.white
        ),
        BottomNavigationBarItem(
            icon: Icon( Icons.co_present, size: 30, ),
            label: 'Top Foodie',
            backgroundColor: Colors.white
        ),
        BottomNavigationBarItem(
            icon: Icon( Icons.person_outline_rounded, size: 30, ),
            label: "Profile",
            backgroundColor: Colors.white
        ),
      ],
      elevation: 0,
      unselectedItemColor: Colors.black38,
      selectedItemColor: Colors.yellow,
      onTap: _onItemTapped,
      currentIndex: _selectedIndex,
      backgroundColor: Colors.red,
    );
  }
}
