import 'package:flutter/material.dart';
import 'package:shoes/screens/home/components/product_bottom_part.dart';
import 'package:shoes/screens/home/components/product_top_part.dart';
import 'package:shoes/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF696D77), Color(0xFF292C36)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.clamp
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: screenAwareSize(20.0, context),
            ),
            onPressed: () {},
          ),
          title: Text(
            "Energy Cloud",
            style: TextStyle(
                color: Colors.white,
                fontSize: screenAwareSize(18.0, context),
                fontFamily: "Montserrat-Bold"),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  size: screenAwareSize(20.0, context),
                  color: Colors.white,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProductTopPart(),
              ProductBottomPart()
            ],
          ),
        ),
      ),
    );
  }
}
