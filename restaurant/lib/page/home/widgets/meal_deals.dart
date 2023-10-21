
import 'package:flutter/material.dart';

import '../../../models/models.dart';

class MealDeals extends StatelessWidget {
  final List<Result> images;
  const MealDeals({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.deepOrangeAccent,
        width: double.infinity,
        height: 240,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Meal Deals",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  TextButton(
                    onPressed: () => {},
                    style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 18)),
                    child: const Text(
                      "See all",
                      style: TextStyle(color: Colors.greenAccent),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    final result = images[index].images[2];
                    return Container(
                      width: 150,
                      height: 190,
                      // color: Colors.green,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: FadeInImage(
                              placeholder: const AssetImage('assets/images/no-image.jpg'),
                              image: NetworkImage(result),
                              width: double.infinity,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "KFC BroadWay",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  "122 Queen Street",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  "Freid Chicken, American",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}
