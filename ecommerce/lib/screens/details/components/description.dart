
import 'package:ecommerce/constants/constants.dart';
import 'package:flutter/material.dart';

import '../../../models/Product.dart';

class Description extends StatelessWidget {
  final Product product;
  const Description({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        product.description!, style: TextStyle(height: 1.5),
      ),
    );
  }
}
