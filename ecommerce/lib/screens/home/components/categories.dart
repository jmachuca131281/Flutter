import 'package:ecommerce/constants/constants.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses","Cartera", "Carterita", "Footwear", "Dresses"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin * 2),
      child: ListView.builder(
        itemBuilder: (context, index) => builderCategory(index),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget builderCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(categories[index],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin / 4),
              height: 2,
              width: 50,
              color: selectedIndex == index ? Colors.red : Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
