import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Column 1"),
                Text("Column 2"),
                Text("Column 3"),
                Text("Column 4"),
              ],
            ),
            Text("Column 1"),
            Text("Column 2"),
            Text("Column 3"),
            Text("Column 4"),
          ],
        ),
      ),
    );
  }
}
