import 'package:flutter/material.dart';
import 'package:modulo_tres_navegacion/common/rooters.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ElevatedButton(
        onPressed: () => {
          Navigator.pushNamed(context, ROUTE_HOME)
        },
        child: Text("Login Page"),
      ),
    ));
  }
}
