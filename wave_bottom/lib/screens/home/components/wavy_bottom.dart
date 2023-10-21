import 'package:flutter/material.dart';
import 'package:wavy_custom_bottom_navigation_bar/screens/home/components/wavy_clipper.dart';

class WavyBotton extends StatelessWidget {
  const WavyBotton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      child: ClipPath(
        clipper: WavyClipper(),
        child: Container(
          height: size.height * 0.09,
          width: size.width,
          color: Colors.teal[800],
          padding: EdgeInsets.only(top: 4),
        ),
      ),
    );
  }
}
