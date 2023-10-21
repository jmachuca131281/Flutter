
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/sound.dart';
import 'myListTile.dart';

class MyListView extends StatelessWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.lightGreenAccent,
          child: ListView.builder(
            shrinkWrap: true, // Se adapta al contenido.
            reverse: true,
            itemCount: sounds.length,
            itemBuilder: (context, index) => MyListTile(sound: Sound("Enero", "Shakira", "assets/images/shakira.png", "01:05")),
          ),
        )
    );
  }
}
