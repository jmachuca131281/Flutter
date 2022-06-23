import 'package:flutter/material.dart';
import 'package:perfume/constants/constants.dart';
import 'package:perfume/screens/home/components/home_Perfume_list.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height / 0.2
          ),
          Text(
            'Royal',
            style: TextStyle(
              fontSize: 45.0,
              color: secondaryColor.withOpacity(0.6),
              fontFamily: 'Canvas',
              letterSpacing: 1.5,
            ),
          ),
          Text(
            'Quality',
            style: TextStyle(
              fontSize: 45.0,
              color: secondaryColor.withOpacity(0.6),
              fontFamily: 'Poppins',
              letterSpacing: 1.5,
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            'Energtic aromatic fougere\nfrance for all the way ypu play',
            style: TextStyle(
              fontSize: 14.0,
              color: secondaryColor.withOpacity(0.4),
              height: 2.0,
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Royal Perfumes',
                style: TextStyle(
                  fontSize: 20.0,
                  color: secondaryColor.withOpacity(0.7),
                  fontFamily: 'Canvas',
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: secondaryColor.withOpacity(0.7),
              ),
              SizedBox.shrink()
            ],
          ),
          // list view of perfume products
          PerfumeList(),
        ],
      ),
    );
  }
}
