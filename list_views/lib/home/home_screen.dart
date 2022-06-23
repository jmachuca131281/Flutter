import 'package:flutter/material.dart';
import 'package:list_views/home/components/list_views.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListViews(),
    );
  }
}