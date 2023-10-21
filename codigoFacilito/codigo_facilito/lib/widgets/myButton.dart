import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return myOutLineButton();
  }

  myElevationButton() {
    return Container(
      child: ElevatedButton.icon(
        icon: Icon(
          Icons.save,
          color: Colors.red,
        ),
        label: Text("Gurardar"),
        style: ElevatedButton.styleFrom(
            primary: Colors.white,
            onPrimary: Colors.black,
            shadowColor: Colors.yellow,
            elevation: 20),
        onLongPress: () {
          print("ElevationButtonLongPressed");
        },
        onPressed: () {
          print("ElavationButton");
        },
      ),
    );
  }

  myTextButton() {
    return TextButton(
      onPressed: () {
        print("TextButton");
      },
      child: Text("Guardar"),
    );
  }

  myOutLineButton() {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: Colors.yellow,
            width: 4.0,
            style: BorderStyle.solid,
          ),
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))
          )
        ),
        onPressed: () {
          print("TextButton");
        },
        child: Text("OutLineButton"));
  }
}
