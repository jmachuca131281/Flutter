import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Image.asset("assets/landscape.jpg"),
            Positioned(
              right: 60,
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 40.0
                )
            ),
          ],
        ),
      ),
    );
  }
}
