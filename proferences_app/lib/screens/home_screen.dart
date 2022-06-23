import 'package:flutter/material.dart';

import '../share_preferences/preferences.dart';
import '../widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {

  static const String routerName = 'Home';

   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('isDarkmode: ${ Preferences.isDarkmode }'),
          const Divider(),
          Text('Género: ${ Preferences.gender }'),
          const Divider(),
          Text('Nombre de usuario: ${ Preferences.name } '),
          const Divider(),
        ],
      )
    );
  }
}