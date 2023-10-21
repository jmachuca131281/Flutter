import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                Text("Hola mundo desde chinacotastown sgsdgsdgsdgdsfgdfgdsfg", style: TextStyle(),),
                Text("Hola mundo desde chinacotastown"),
                Text("Hola mundo desde chinacotastown"),
                Text("Hola mundo desde chinacotastown"),
        ]),
      ),
    );
  }
}
