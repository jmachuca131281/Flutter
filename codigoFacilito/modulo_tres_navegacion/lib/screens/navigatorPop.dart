
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modulo_tres_navegacion/common/rooters.dart';

class NavigatorPop extends StatelessWidget {
  const NavigatorPop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("Navigator POP"),
      onPressed: (){
        // Cerrar solo una pagina
        //Navigator.popAndPushNamed(context, ROUTE_PUSHNAMED);

        Navigator.pushNamed(context, ROUTE_PUSHNAMED);
      },
    );
  }
}
