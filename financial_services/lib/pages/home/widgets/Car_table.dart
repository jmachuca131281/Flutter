
import 'package:flutter/material.dart';

class CarTable extends StatelessWidget {
  const CarTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      // border: TableBorder.all(),
      children: [
        TableRow(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(Icons.cabin_sharp),
                            Text("Lorem Ipsum"),
                          ],
                        ),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Text("DAtos del cubo"),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: Text("Sin verguenza"),
                            )
                          ],
                        )
                      ],
                    ),

                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.cabin_sharp),
                        Text("Lorem Ipsum"),
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text("DAtos del cubo"),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text("Sin verguenza"),
                        )
                      ],
                    )
                  ],
                ),

              ),
            ),
          ]
        ),
      ],
    );
  }
}
