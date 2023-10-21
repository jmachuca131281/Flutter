
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselVertical extends StatelessWidget {
  const CarouselVertical({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];
    return Center(
      child: Container(
        margin: const EdgeInsets.all(15),
        child: CarouselSlider.builder(
          itemCount: imageList.length,
          options: CarouselOptions(
              enlargeCenterPage: true,
              height: 300,
              autoPlay: false,
              // autoPlayInterval: const Duration(seconds: 3),
              reverse: false,
              aspectRatio: 4.0,
              initialPage: 2
          ),
          itemBuilder: (context, i, id) {
            return GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                      imageList[i], width: 500, fit: BoxFit.cover
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
