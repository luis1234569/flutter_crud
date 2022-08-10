import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 32, 27, 27);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    scaffoldBackgroundColor: Color.fromARGB(255, 240, 255, 255),
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color.fromARGB(255, 0, 56, 50),
        foregroundColor: Colors.greenAccent,
        hoverColor: Color.fromARGB(255, 48, 145, 92),
        splashColor: Colors.tealAccent,
   ),
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ))),
    listTileTheme: const ListTileThemeData(
      minVerticalPadding: 12,
    ),
  );
}
