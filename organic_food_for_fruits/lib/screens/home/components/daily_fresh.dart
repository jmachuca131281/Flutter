import 'package:flutter/material.dart';
import 'package:organic_food_for_fruits/data/data.dart';
import 'package:organic_food_for_fruits/models/fruits_and_vegs.dart';

import '../../../constants/constants.dart';

class DailyFresh extends StatelessWidget {
  const DailyFresh({Key? key}) : super(key: key);

  Widget _buildDailyFresh(BuildContext context, int index) {

    Size size = MediaQuery.of(context).size;
    FruitsAndVegs fruitsAndVeges = dailyFreshList[index];

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: appPadding, right: appPadding / 2, bottom: appPadding),
          child: Container(
            width: size.width * 0.55,
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: black.withOpacity(.2),
                      offset: Offset(5, 5),
                      blurRadius: 10)
                ]),
            child: Padding(
              padding: EdgeInsets.all(appPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    height: size.height * 0.21,
                    fit: BoxFit.contain,
                    image: AssetImage(fruitsAndVeges.imageUrl!),
                  ),
                  Text(
                    fruitsAndVeges.name!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    fruitsAndVeges.description!,
                    style: const TextStyle(
                        fontWeight: FontWeight.w300, fontSize: 12),
                  ),
                  Text(
                    '\$ ${fruitsAndVeges.price!.toStringAsFixed(2)}',
                    style: const TextStyle(
                        fontWeight: FontWeight.w300, fontSize: 16),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: appPadding * 1,
          bottom: appPadding / 2,
          child: Container(
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: black.withOpacity(0.5),
                      offset: Offset(3, 3),
                      blurRadius: 3)
                ]),
            padding: const EdgeInsets.symmetric(
              horizontal: appPadding / 1.5,
              vertical: appPadding / 4
            ),
            child: Row(
              children: [
                Icon(Icons.favorite_rounded),
                Text('Save')
              ],
            ),
          ),
        )
      ],
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
            itemCount: dailyFreshList.length,
            itemBuilder: ((context, index) {
              return _buildDailyFresh(context, index);
            }),
          ),
        )
      ],
    );
  }
}
