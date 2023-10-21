import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  final options = const['uno', 'dos', 'tres', 'uno', 'dos', 'tres'];
  final img = const[
    'assets/images/kimon-maritz.jpg',
    'assets/images/lance-anderson.jpg',
    'assets/images/luca-bravo.jpg',
    'assets/images/marc-olivier-jodoin.jpg',
    'assets/images/kimon-maritz.jpg',
    'assets/images/lance-anderson.jpg',
    'assets/images/luca-bravo.jpg',
    'assets/images/marc-olivier-jodoin.jpg'
  ];
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: ListView.separated(
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(options[index], style: TextStyle(fontSize: 24)),
            );
          }),
          separatorBuilder: (context, index)=> Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage(img[index])),
            ),
          ),
          itemCount: options.length
        ),
    );
  }
}