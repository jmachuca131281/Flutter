import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.cyanAccent,
      notchMargin: 4,
      child: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: 40,
              ),
              label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "fail"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
                size: 40,
              ),
              label: ""),
        ],
      ),
    );
  }
}