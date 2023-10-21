import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:test_pro/pages/carouselHorizontal.dart';
import 'package:test_pro/pages/carousel_vertical.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: CarouselHorizontal() //CarouselVertical(),
    );
  }
}
