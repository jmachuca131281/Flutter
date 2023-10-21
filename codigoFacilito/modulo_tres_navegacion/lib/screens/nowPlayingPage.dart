import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modulo_tres_navegacion/screens/loginPage.dart';
import 'package:modulo_tres_navegacion/screens/screens.dart';

class NowPlayingPage extends StatelessWidget {
  const NowPlayingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ElevatedButton(
        onPressed: () => {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NavigatorPop()))
          // Para cerrar la vista se usa pop
        },
        child: Text("Now Playing Page"),
      )),
    );
  }
}
