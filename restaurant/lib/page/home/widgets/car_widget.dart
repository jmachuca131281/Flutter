import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/models/models.dart';

class CarWidget extends StatelessWidget {
  final List<Result> images;
  const CarWidget({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.3,
      // color: Colors.deepOrangeAccent,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Swiper(
          itemCount: images.length,
          layout: SwiperLayout.CUSTOM,
          customLayoutOption: CustomLayoutOption(
              startIndex: -2,
              stateCount: 3)
            ..addRotate([-45.0 / 180, 0.0, 45.0 / 180])
            ..addTranslate([
              Offset(-370.0, -40.0), Offset(0.0, 0.0), Offset(370.0, -40.0)
            ]),
          itemWidth: size.width * 1,
          itemHeight: size.height * 0.9,
          itemBuilder: (BuildContext context, int index) {
            final result = images[index].images[2];
            // print(result);
            return  FadeInImage(
              placeholder: const AssetImage('assets/images/no-image.jpg'),
              image:NetworkImage(result) ,
              fit: BoxFit.fill,
            );
          },
        ),
      ),
    );
  }
}
