
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsBackground extends StatelessWidget {
  const DetailsBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.89,
      width: size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [Colors.grey[800]!, Colors.grey[900]!],
          )
      ),
    );
  }
}
