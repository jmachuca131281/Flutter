import 'package:flutter/material.dart';
import 'package:proferences_app/providers/theme_provider.dart';
import 'package:proferences_app/screens/screens.dart';
import 'package:proferences_app/share_preferences/preferences.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.init();
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: ( _ ) => ThemeProvider(isDarkmode: Preferences.isDarkmode )  )
        ],
        child: const MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName    : (_)=> HomeScreen(),
        SettingsScreen.routerName: (_)=> SettingsScreen()
      },
      theme: Provider.of<ThemeProvider>(context).currentTheme,
    );
  }
}