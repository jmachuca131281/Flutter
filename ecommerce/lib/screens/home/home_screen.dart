import 'package:ecommerce/models/Product.dart';
import 'package:ecommerce/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg", color: kTextColor,)
        ),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/cart.svg", color: kTextColor,)
        ),
        const SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
