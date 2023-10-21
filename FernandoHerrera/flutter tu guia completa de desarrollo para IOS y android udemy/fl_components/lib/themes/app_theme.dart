import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.pink;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // *Color primario
      primaryColor: Colors.indigo,
      // AppBard
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        // elevation: 50
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Colors.indigo,
          shape: const StadiumBorder(),
          elevation: 0
        )
      ),

      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          )
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          )
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          )
        )
      )

  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      // *Color primario
      primaryColor: Colors.indigo,
      // AppBard
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 0,
      ),


      // scaffoldBackgroundColor: Colors.grey 
      );
}
