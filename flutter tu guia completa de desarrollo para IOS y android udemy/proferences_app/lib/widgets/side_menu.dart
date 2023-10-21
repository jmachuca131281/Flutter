import 'package:flutter/material.dart';
import 'package:proferences_app/screens/screens.dart';

class SideMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

          _DrawerHeader(),

          ListTile(
            leading: const Icon(Icons.pages_outlined),
            title: const Text("Home"),
            onTap: (){
              Navigator.pushReplacementNamed(context, HomeScreen.routerName);
            },
          ),

          ListTile(
            leading: const Icon(Icons.people_outline),
            title: const Text("Peaple"),
            onTap: (){},
          ),

          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: (){
              // Navigator.pop(context);
              Navigator.pushReplacementNamed(context, SettingsScreen.routerName);
            },
          )
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        child: Container(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/menu-img.jpg'),
            fit: BoxFit.cover,
          )
        ),
    );
  }
}