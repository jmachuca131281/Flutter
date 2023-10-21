import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
                leading: Icon(menuOptions[i].icon, color: AppTheme.primary),
                title: Text(menuOptions[i].name),
                onTap: () {
                  // *La info del contexto se va pasando de de widget a widget, hasta
                  // *Este punto sabe la información del arbol.
                  // ! Primera forma donde se tiene el control total.
                  // final route = MaterialPageRoute(builder: (context)=> const Listview1Screen());
                  // Navigator.push(context, route);
                  // ! Segundo método
                  Navigator.pushNamed(context, menuOptions[i].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length),
    );
  }
}
