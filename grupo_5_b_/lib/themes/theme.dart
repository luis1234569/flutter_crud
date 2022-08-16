import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary =Color.fromARGB(117, 0, 4, 255);
  static const Color secondary = Color.fromARGB(255, 68, 255, 0);
  static const Color icon = Color.fromARGB(255, 57, 91, 100);
  static const Color text = Color.fromARGB(255, 255, 255, 255);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    scaffoldBackgroundColor: Color.fromARGB(255, 165, 201, 202),
    appBarTheme: const AppBarTheme(color: primary, elevation: 10),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(255, 6, 70, 99),
      foregroundColor: Color.fromARGB(255, 14, 235, 228),
      hoverColor: Color.fromARGB(255, 48, 145, 92),
      splashColor: Color.fromARGB(255, 0, 1, 5),
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
