import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ImagesListView extends StatelessWidget {
  const ImagesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ImageItem('assets/images/home.png', 'home'),
        ImageItem('assets/images/beauty.png', 'beauty'),
        ImageItem('assets/images/pets.png', 'pets'),
      ],
    );
  }
}

class ImageItem extends StatelessWidget {

  final String imagePath;
  final String direction;

  ImageItem(this.imagePath, this.direction);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push('/$direction');
      },
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.all(8.0),
        child: Image.asset(imagePath),
      ),
    );
  }
}