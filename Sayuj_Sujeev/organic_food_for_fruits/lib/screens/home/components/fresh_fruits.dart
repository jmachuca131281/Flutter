import 'package:flutter/material.dart';
import 'package:organic_food_for_fruits/data/data.dart';
import 'package:organic_food_for_fruits/models/fruits_and_vegs.dart';

import '../../../constants/constants.dart';

class FreshFruits extends StatelessWidget {
  const FreshFruits({Key? key}) : super(key: key);

  Widget _buildFreshFruits(BuildContext context, int index){
    Size size = MediaQuery.of(context).size;
    FruitsAndVegs fruitsAndVegs = freshFruitsList[index];

    return Padding(
      padding: EdgeInsets.only(left: appPadding),
      child: Container(
        width: size.height * 0.13,
        child: Column(
          children: [
            Image(
              height: size.height *0.13,
              fit: BoxFit.fitHeight,
              image: AssetImage(fruitsAndVegs.imageUrl!),
            ),
            Text(fruitsAndVegs.name!, style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300
            ),)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(appPadding),
          child: Text(
            'Daily Fresh',
            style: TextStyle(
                fontSize: 24, letterSpacing: 1, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: size.height * 0.4,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: freshFruitsList.length,
            itemBuilder: ((context, index) {
              return _buildFreshFruits(context, index);
            }),
          ),
        )
      ],
    );
  }
}
