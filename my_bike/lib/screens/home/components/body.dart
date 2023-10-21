import 'package:flutter/material.dart';
import 'package:my_bike/model/model.dart';
import 'package:my_bike/screens/details/details_screen.dart';

import '../../../utils/customIcons.dart';
import '../../../utils/style.dart';

class Body extends StatelessWidget {
  const Body ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final product = products[0];
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 500,
            width: double.infinity,
            child: LayoutBuilder(
              builder: (cx, ct) {
                double w = ct.maxWidth;
                double h = ct.maxHeight;
                return Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Hero(
                        tag: "bg",
                        child: Container(
                          width: w * .9,
                          height: h * .75,
                          color: Color(0xFFFFC5C5),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 65,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            product.type,
                            style: AppStyle.appbarStyle,
                          ),
                          SizedBox(height: 12),
                          Text(product.name, style: AppStyle.headingStyle)
                        ],
                      ),
                    ),
                    Positioned(
                      top: h * .32,
                      left: -50,
                      child: Hero(
                        tag: product.name,
                        child: Image.asset(
                          product.imgUrl,
                          width: 370,
                          height: 350,
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          SizedBox( height: 50),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text( "Amazing Speed.", style: AppStyle.headingStyle2, ),
                SizedBox( height: 6 ),
                Text( "Incredible Power.", style: AppStyle.headingStyle2, ),
                SizedBox( height: 20, ),
                Text(
                    "The Top Fuel 9.9 XX1 AXS is built for Speed and Capability on Any terrein",
                    style: AppStyle.descStyle),
                SizedBox( height: 16, ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 22),
                    child: IconButton(
                      icon: Icon(CustomIcons.arrow),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => DetailsScreen(product: product)));
                      },
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}