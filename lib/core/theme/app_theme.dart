import 'package:flutter/material.dart';

class AppTheme {
  static final darkThemeMode = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: 'General Sans',
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0,
    ),
    colorScheme: const ColorScheme.dark(
      primary: Colors.blueAccent,
      secondary: Colors.blueAccent,
    ),
  );

  static final lightThemeMode = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: 'General Sans',
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: 'General Sans',
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Colors.blueAccent,
      secondary: Colors.blueAccent,
    ),
  );
}
