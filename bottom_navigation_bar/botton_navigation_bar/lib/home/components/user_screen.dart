
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("User", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}