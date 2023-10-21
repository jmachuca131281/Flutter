import 'package:flutter/material.dart';
import 'package:perfume/constants/constants.dart';
import 'package:perfume/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //Get size of screens
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              backgroundColor: primaryColor,
              elevation: 0,
              toolbarHeight: size.height * 0.08,
              leading: Padding(
                padding: EdgeInsets.only(left: appPadding),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.short_text,
                    size: 30.0,
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: appPadding),
                  child: IconButton(
                    icon: Icon(Icons.shopping_bag),
                    onPressed: (){},
                  ),
                ),
              ],
            ),
            HomeBody()
          ],
        ),
      ),
    );
  }
}
