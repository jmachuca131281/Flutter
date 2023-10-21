import 'package:ecommerce/constants/constants.dart';
import 'package:ecommerce/models/Product.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;

  const ItemCard({Key? key, required this.product, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () => press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPaddin),
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16)
            ),
            child: Hero(
              tag: "$product.id",
              child: Image.asset(product.image!),
            ),
          )
        ],
      ),
    );
  }
}
