
import 'package:flutter/material.dart';
import 'package:modulo_tres_navegacion/common/rooters.dart';

class PushNamedAndRemoveUntil extends StatelessWidget {
  const PushNamedAndRemoveUntil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("Push Remove"),
      onPressed: (){
        Navigator.pushNamedAndRemoveUntil(context, ROUTE_HOME, (Route<dynamic>route) => false);
      },
    );
  }
}
