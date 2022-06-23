
import 'package:flutter/material.dart';

class ListViews extends StatelessWidget {
  const ListViews ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['a', 'b', 'c'];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,

      ),
    );
  }
}