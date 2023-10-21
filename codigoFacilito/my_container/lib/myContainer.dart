import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.pinkAccent,
              width: 200,
              height: 200,
              margin: EdgeInsets.all(39),
              alignment: Alignment.centerLeft,
              child: Text("Estoy en el container"),
          ),
            Container(
              //color: Colors.amber,
              width: 200,
              height: 299,
              margin: EdgeInsets.only(top: 200),
              padding: EdgeInsets.only(top: 45, left: 34),
              child: Text("Cuadro amber"),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black38,
                border: Border.all(
                  color: Colors.black54,
                  width: 12,
                  style: BorderStyle.solid
                ),
              ),

            ),
            Container(
              width: 200,
              height: 199,
              margin: EdgeInsets.only(top: 380, left: 222),
              child: Text("Cuadro brown"),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                border: Border.all(
                    color: Colors.black54,
                    width: 0,
                    style: BorderStyle.solid
                ),
                shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(4, 8)
                  )
                ]
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/propic.jpeg"),
                  fit: BoxFit.cover
                ),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black54,
                  width: 20,
                  style: BorderStyle.solid
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}
