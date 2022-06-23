
import 'package:flutter/material.dart';
import 'package:perfume/models/perfume_model.dart';
import 'package:perfume/screens/details/components/details_background.dart';
import 'package:perfume/screens/details/components/details_layout.dart';

class DetailsBody extends StatefulWidget {

  final Perfume perfume;
  DetailsBody(this.perfume);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<DetailsBody> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Gradient Background
        DetailsBackground(),
        //Layout of the details screen
        DetailsLayout(widget.perfume),
      ],
    );
  }
}

