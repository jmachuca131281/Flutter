import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselHorizontal extends StatelessWidget {
  const CarouselHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Carousel Slider',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue.shade600,
                    fontWeight: FontWeight.w900,
                    shadows: const [
                     Shadow(
                          color: Colors.black38,
                          blurRadius: 5,
                          offset: Offset(2, 2))
                    ]),
              ),
              const SizedBox( height: 30, ),
              CarouselSlider.builder(
                  itemCount: 10,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      margin: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black54,
                                offset: Offset(2, 2),
                                blurRadius: 7,
                                spreadRadius: 2)
                          ],
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(index.isEven
                                  ? 'assets/development.jpg'
                                  : 'assets/cartoon.jpg'))),
                      child: Container(
                        margin: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black54,
                                  offset: Offset(2, 2),
                                  blurRadius: 7,
                                  spreadRadius: 2)
                            ],
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(index.isEven
                                    ? 'assets/development.jpg'
                                    : 'assets/cartoon.jpg'))),
                        child: Container(
                          margin: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black54,
                                    offset: Offset(2, 2),
                                    blurRadius: 7,
                                    spreadRadius: 2)
                              ],
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(index.isEven
                                      ? 'assets/development.jpg'
                                      : 'assets/cartoon.jpg'))),
                          child: Container(
                            margin: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black54,
                                      offset: Offset(2, 2),
                                      blurRadius: 7,
                                      spreadRadius: 2)
                                ],
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(index.isEven
                                        ? 'assets/development.jpg'
                                        : 'assets/cartoon.jpg'))),
                            child: Container(
                              margin: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.black54,
                                        offset: Offset(2, 2),
                                        blurRadius: 7,
                                        spreadRadius: 2)
                                  ],
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(index.isEven
                                          ? 'assets/development.jpg'
                                          : 'assets/cartoon.jpg'))),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        // print(index.toString());
                        // print(reason.toString());
                      },
                      height: 300,
                      autoPlay: true,
                      autoPlayAnimationDuration: const Duration(seconds: 2),
                      autoPlayCurve: Curves.easeInOutBack,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      initialPage: 2,
                      pageSnapping: false,
                      viewportFraction: .7,
                      autoPlayInterval: const Duration(seconds: 4))),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Hope you enjoyed it,Keep learning and happy coding',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue.shade600,
                    fontWeight: FontWeight.w900,
                    shadows: const [
                      Shadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(2, 2))
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
