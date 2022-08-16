import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary =Color.fromARGB(117, 255, 0, 21);
  static const Color secondary = Color.fromARGB(255, 240, 10, 29);
  static const Color icon = Color.fromARGB(255, 255, 255, 255);
  static const Color text = Color.fromARGB(255, 255, 255, 255);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    scaffoldBackgroundColor: Color.fromARGB(207, 11, 49, 218),
    appBarTheme: const AppBarTheme(color: primary, elevation: 10),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(255, 0, 56, 50),
      foregroundColor: Colors.greenAccent,
      hoverColor: Color.fromARGB(255, 48, 145, 92),
      splashColor: Color.fromARGB(132, 28, 86, 248),
    ),
    inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: icon),
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
