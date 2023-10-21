
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: GridView.builder( // GridView dinamico
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              //crossAxisCount: 4,
              maxCrossAxisExtent: 100,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10
            ),
            // Desactivar el ScrolView
            // physics: NeverScrollableScrollPhysics(),
            itemCount: 29,
            itemBuilder: (context, index)=> Text("ItemBuilder", style: TextStyle(backgroundColor: Colors.cyanAccent, fontSize: 30,)),
            // Creando GridView de manera estática
            /*children: [
              Text("GridView", style: TextStyle(backgroundColor: Colors.cyanAccent, fontSize: 30,)),
              Text("GridView", style: TextStyle(backgroundColor: Colors.cyanAccent, fontSize: 30,)),
              Text("GridView", style: TextStyle(backgroundColor: Colors.cyanAccent, fontSize: 30,)),
              Text("GridView", style: TextStyle(backgroundColor: Colors.cyanAccent, fontSize: 30,)),
            ],*/
          ),
        ));
  }
}
