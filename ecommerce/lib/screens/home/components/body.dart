import 'package:ecommerce/constants/constants.dart';
import 'package:ecommerce/screens/details/details_screen.dart';
import 'package:ecommerce/screens/home/components/categories.dart';
import 'package:ecommerce/screens/home/components/item_card.dart';
import 'package:flutter/material.dart';

import '../../../models/Product.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Woman",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
        Categories(),
        GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: kDefaultPaddin,
              mainAxisSpacing: kDefaultPaddin,
              mainAxisExtent: kDefaultPaddin
          ),
          itemBuilder: (context, index) => ItemCard(
            product: products[index],
            press: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        DetailsScreen(product: products[index])
                )
            ),
          ),
        )
      ],
    );
  }
}
