import 'package:flutter/material.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/details/components/title_and_price.dart';

import 'image_And_Icons.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            ImageAndIcons(size: size),
            TitleAndPrice(
                title: "Sarah Isabella", country: "Chinacota", price: 400),
            SizedBox(height: kDefaultPadding),
            Row(
              children: [
                SizedBox(
                  width: size.width / 2,
                  height: 84,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      )
                    ),
                    color: kPrimaryColor,
                    onPressed: () {},
                    child: Text(
                      "Buy Now",
                      style: TextStyle(color: Colors.white, fontSize: 16
                      ),
                    ),
                  ),
                ),
                Expanded(child: FlatButton(onPressed: (){ },
                child: Text("Descripción"),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
