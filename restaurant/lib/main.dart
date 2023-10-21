import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant/page/home/home_page.dart';
import 'package:restaurant/provider/images_provider.dart';

void main() {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // ChangeNotifier => Es la forma de encapsular el estado de la app
      providers: [
        // Agregamos los provider que necesitemos
        ChangeNotifierProvider(create: (_) => ImagesProvider(), lazy: false,),
      ],    
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: 'home',
      routes: {
        'home': (_) =>  const HomePage()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage()
    );
  }
}