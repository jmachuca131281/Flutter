import 'package:flutter/material.dart';
import 'package:plant/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  final String? title;
  final Function? press;

  const TitleWithMoreBtn({Key? key, this.title, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title),
          Spacer(),
          FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: kPrimaryColor,
              onPressed: () => press,
              child: Text(
                "More",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  final String? text;

  const TitleWithCustomUnderline({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              '$text',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              child: Container(
            margin: EdgeInsets.only(right: kDefaultPadding / 4),
            height: 7,
            color: kPrimaryColor.withOpacity(0.2),
          ))
        ],
      ),
    );
  }
}
