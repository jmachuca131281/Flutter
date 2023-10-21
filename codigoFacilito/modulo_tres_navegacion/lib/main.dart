import 'package:flutter/material.dart';
import 'package:modulo_tres_navegacion/common/rooters.dart';
import 'package:modulo_tres_navegacion/screens/loginPage.dart';
import 'package:modulo_tres_navegacion/screens/myHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: MyRouters.generateRoute,
      initialRoute: ROUTE_LOGIN,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
