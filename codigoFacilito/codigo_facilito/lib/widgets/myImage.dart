import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("assets/images/landscape.jpg"),
      width: 50,
      height: 200,
      fit: BoxFit.cover,
      errorBuilder:
          (BuildContext contex, Object error, StackTrace? stackTrace) {
            //return Text("Error al cargar la imagen");
            return Image.asset('assets/images/no-image.jpg');
      },
    );
  }
}
