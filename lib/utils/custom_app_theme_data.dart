import 'package:flutter/material.dart';
import 'package:ghar_jagga/utils/custom_app_colors.dart';

class CustomAppThemeData {
  static ThemeData appThemeData = ThemeData(
    primaryColor: customPrimary,
    iconTheme: const IconThemeData(color: Colors.black54, size: 20),
    scaffoldBackgroundColor: Colors.grey.shade200,
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black54)),
    fontFamily: 'Quicksand',
    textTheme: const TextTheme(
      // content
      bodySmall: TextStyle(
        fontSize: 16,
        color: Colors.black54,
        height: 2,
      ),
      bodyMedium: TextStyle(
        fontSize: 18,
        height: 2,
        color: Colors.black54,
      ),
      bodyLarge: TextStyle(
        fontSize: 20,
        height: 2,
        color: Colors.black54,
      ),
      labelSmall: TextStyle(
        fontSize: 20,
        color: Colors.black54,
        height: 2,
        fontWeight: FontWeight.bold,
      ),
      labelMedium: TextStyle(
        fontSize: 18,
        color: Colors.black54,
        height: 2,
        fontWeight: FontWeight.bold,
      ),
      labelLarge: TextStyle(
        fontSize: 20,
        color: Colors.black54,
        height: 2,
        fontWeight: FontWeight.bold,
      ),

      // titles
      displaySmall: TextStyle(
        fontSize: 20,
        height: 3,
        color: Colors.black54,
      ),
      displayMedium: TextStyle(
        fontSize: 24,
        height: 3,
        color: Colors.black54,
      ),
      displayLarge: TextStyle(
        fontSize: 28,
        height: 3,
        color: Colors.black54,
      ),
      titleSmall: TextStyle(
        fontSize: 20,
        color: Colors.black54,
        height: 3,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        color: Colors.black54,
        height: 3,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        fontSize: 30,
        color: Colors.black54,
        height: 3,
        fontWeight: FontWeight.bold,
      ),

      // large texts
      headlineSmall: TextStyle(
        fontSize: 40,
        height: 3,
        color: Colors.black54,
      ),
      headlineMedium: TextStyle(
        fontSize: 60,
        height: 3,
        color: Colors.black54,
      ),
      headlineLarge: TextStyle(
        fontSize: 80,
        height: 3,
        color: Colors.black54,
      ),
    ),
  );
}
