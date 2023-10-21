import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/body.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Color(0xFF035AA6),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xFF035AA6),
      elevation: 0,
      title: Text("Dashboard"),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/notification.svg"))
      ],
    );
  }
}
