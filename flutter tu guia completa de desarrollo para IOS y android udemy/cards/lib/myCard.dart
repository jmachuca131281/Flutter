import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: Column(
          children: [
            Card(
              shadowColor: Colors.redAccent,
              color: Colors.yellow[100],
              margin: EdgeInsets.all(20),
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.deepPurple, width: 2)),
              child: Container(
                  height: 70,
                  width: 300,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: ListTile(
                    title: Text("I love you baby"),
                    subtitle: Text("Thanks God"),
                    trailing: Icon(Icons.more_vert),
                    leading: Icon(Icons.read_more_outlined),
                    onTap: () {
                      print("object desde el onTap");
                    },
                    onLongPress: () {
                      print("object desde el onLongPress");
                    },
                  ),
              ),

            ),
            SizedBox(
              height: 1,
            ),
            InkWell(
              onTap: (){print("Desde el InkWell");},
              onLongPress: (){print("Desde el InkWell");},
              child: Card(
                shadowColor: Colors.redAccent,
                color: Colors.yellow[100],
                margin: EdgeInsets.all(20),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.deepPurple, width: 2)),
                child: Container(
                  height: 70,
                  width: 300,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: ListTile(
                    title: Text("I love you baby"),
                    subtitle: Text("Thanks God"),
                    trailing: Icon(Icons.more_vert),
                    leading: Icon(Icons.read_more_outlined),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onDoubleTap: (){print("object on doubleTap");},
              onTapDown: (TapDownDetails d){print("object onTapDown ${d.globalPosition}");},
              onTapUp: (TapUpDetails u){print("object onTapUp ${u.globalPosition}");},
              child: Card(
                shadowColor: Colors.redAccent,
                color: Colors.yellow[100],
                margin: EdgeInsets.all(20),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.deepPurple, width: 2)),
                child: Container(
                  height: 70,
                  width: 300,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: ListTile(
                    title: Text("I love you baby"),
                    subtitle: Text("Thanks God"),
                    trailing: Icon(Icons.more_vert),
                    leading: Icon(Icons.read_more_outlined),
                    onTap: () {
                      print("object desde el onTap");
                    },
                    onLongPress: () {
                      print("object desde el onLongPress");
                    },
                  ),
                ),

              ),
            ),

          ],
        ),
      ),
    );
  }
}
