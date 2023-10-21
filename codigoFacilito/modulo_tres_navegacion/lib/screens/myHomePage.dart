import 'package:flutter/material.dart';
import 'package:modulo_tres_navegacion/screens/nowPlayingPage.dart';
import 'package:modulo_tres_navegacion/screens/playListPage.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Home Page"),
        ),
        body: FloatingActionButton(
          child: Icon(Icons.raw_on_outlined) ,
          onPressed: () {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => PlayListPage()));
           //Navigator.pop(context);
          },
        )
    );
  }
}
