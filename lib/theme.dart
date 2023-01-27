import 'package:flutter/material.dart';

ThemeData getTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.blue,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.blue),
      centerTitle: true,
      color: Colors.white,
      elevation: 0,
      foregroundColor: Colors.blue
    ),
    iconTheme: const IconThemeData(color: Colors.blue),
  );
}

ThemeData getDarkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.pink),
      titleTextStyle: TextStyle(
        color: Colors.pink,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      elevation: 0,
      foregroundColor: Colors.white
    ),
    iconTheme: const IconThemeData(color: Colors.pink),
  );
}
