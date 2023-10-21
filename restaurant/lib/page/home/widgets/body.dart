
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/page/home/widgets/car_widget.dart';
import 'package:restaurant/page/home/widgets/meal_deals.dart';
import 'package:restaurant/page/home/widgets/most_popular.dart';
import 'package:restaurant/page/home/widgets/search.dart';
import 'package:restaurant/provider/images_provider.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final imagesProvider = Provider.of<ImagesProvider>(context);
    // print(imagesProvider.onDisplayImages);

    return Column(
      children: [
        Container(
          child: const SearchWidget()
        ),
        Container(
          child: CarWidget(images: imagesProvider.onDisplayImages)
        ),
        Container(
          child: Column(
            children: [
              MostPopular(images: imagesProvider.onDisplayImages),
              MealDeals(images: imagesProvider.onDisplayImages)
            ],
          ),
        )
      ],
    );
  }
}
