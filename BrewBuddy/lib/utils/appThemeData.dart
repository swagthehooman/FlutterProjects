import 'package:flutter/material.dart';
import 'colors.dart';

class CoffeeTheme {
  // ☀️ Light Theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: CoffeeColors.primary,
    scaffoldBackgroundColor: CoffeeColors.background,
    colorScheme: const ColorScheme.light(
      primary: CoffeeColors.primary,
      secondary: CoffeeColors.accent,
      surface: CoffeeColors.surface,
      error: CoffeeColors.error,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: CoffeeColors.textPrimary,
      onError: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: CoffeeColors.textPrimary),
      bodyMedium: TextStyle(color: CoffeeColors.textSecondary),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: CoffeeColors.primary,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
  );

  // 🌙 Dark Theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: CoffeeColors.primaryDark,
    scaffoldBackgroundColor: CoffeeColors.darkBackground,
    colorScheme: const ColorScheme.dark(
      primary: CoffeeColors.primaryDark,
      secondary: CoffeeColors.accent,
      surface: CoffeeColors.darkSurface,
      error: CoffeeColors.error,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: CoffeeColors.darkTextPrimary,
      onError: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: CoffeeColors.darkTextPrimary),
      bodyMedium: TextStyle(color: CoffeeColors.darkTextSecondary),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: CoffeeColors.primaryDark,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
  );
}
