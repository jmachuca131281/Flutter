import 'package:flutter/material.dart';
import 'package:plant/screens/home/components/header_with_searchbox.dart';


class Body extends StatelessWidget {
  const Body ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWithSearchBox(size: size),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}