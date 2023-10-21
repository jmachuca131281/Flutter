import 'package:flutter/material.dart';

import 'package:fl_components/themes/app_theme.dart';
import 'package:fl_components/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute, // Static method
      routes: AppRoutes.getAppRoutes(), // Rutas del app_routes
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme,
    );
  }
}

/**
 * !Const: No cambia desde el momento de la compilación.
 * !Fanal: Puede cambiar en tiempo de ejecución.
 */