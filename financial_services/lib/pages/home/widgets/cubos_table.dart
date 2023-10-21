

import 'package:flutter/material.dart';

class CubosTable extends StatelessWidget {
  const CubosTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                children: [
                  Icon(Icons.cabin_sharp),
                  Text("Lorem Ipsum"),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text("DAtos del cubo"),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text("Sin verguenza"),
                  )
                ],
              )
            ],
          )
      ),
    );
  }
}
