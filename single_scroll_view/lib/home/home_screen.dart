import 'package:flutter/material.dart';
import 'package:single_scroll_view/home/components/scroll_views.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ScrollViews()
            ],
          ),
        )
      ], )),
    );
  }
}
