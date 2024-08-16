import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF6200EE),
  onPrimary: Color(0xFFFFFFFF),
  secondary: Color(0xFF03DAC6),
  onSecondary: Color(0xFF000000),
  error: Color(0xFFB00020),
  onError: Color(0xFFFFFFFF),
  background: Color(0xFFF5F5F5),
  onBackground: Color(0xFF000000),
  surface: Color(0xFFFFFFFF),
  onSurface: Color(0xFF000000),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFBB86FC),
  onPrimary: Color(0xFF000000),
  secondary: Color(0xFF03DAC6),
  onSecondary: Color(0xFF000000),
  error: Color(0xFFCF6679),
  onError: Color(0xFF000000),
  background: Color(0xFF121212),
  onBackground: Color(0xFFFFFFFF),
  surface: Color(0xFF121212),
  onSurface: Color(0xFFFFFFFF),
);

ThemeData lightMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: lightColorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(lightColorScheme.primary),
      foregroundColor: 
      MaterialStateProperty.all<Color>(Colors.white),
      elevation: MaterialStateProperty.all<double>(5.0),
      padding: MaterialStateProperty.all<EdgeInsets>(
        const EdgeInsets.symmetric(horizontal:  20, vertical: 18)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        )
      )
    ),
  ),
);

ThemeData darkMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: darkColorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(darkColorScheme.primary),
      foregroundColor: MaterialStateProperty.all<Color>(darkColorScheme.onPrimary),
      elevation: MaterialStateProperty.all<double>(2.0),
    ),
  ),
);
