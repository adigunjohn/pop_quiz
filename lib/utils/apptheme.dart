import 'package:flutter/material.dart';

class AppTheme {
  final ThemeMode _themeMode = ThemeMode.system;

  static const Color renPrimary = Color(0xFF3C71FF);
  static const Color renSecondary = Color(0xFF59C27D);
  static const Color renGray700 = Color(0xFF141416);
  static const Color renGray400 = Color(0xFF777E90);

  ThemeMode get themeMode => _themeMode;

  ThemeData get lightTheme => ThemeData(
    scaffoldBackgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.black),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 16, color: Colors.grey),
      titleLarge: TextStyle(
        fontSize: 24,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  ThemeData get darkTheme => ThemeData(
    scaffoldBackgroundColor: Colors.grey[900],
    iconTheme: const IconThemeData(color: Colors.white),
    textTheme: TextTheme(
      bodyLarge: TextStyle(fontSize: 16, color: Colors.grey[200]),
      titleLarge: const TextStyle(
        fontSize: 24,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

