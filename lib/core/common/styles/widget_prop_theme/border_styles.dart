import 'package:flutter/material.dart';
import 'package:fruits_hub/core/constants/colors/color_palette.dart';

class CustomBorderThemes {
  CustomBorderThemes._();

  static OutlinedButtonThemeData customOutlinedButtonThemeData() {
    return const OutlinedButtonThemeData();
  }

  static InputDecorationTheme customInputDecorationLightTheme() {
    return InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFFF9FAFA),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Palette.softGrey),
      ),
    );
  }

  static InputDecorationTheme customInputDecorationDarkTheme() {
    return InputDecorationTheme(
      filled: true,
      fillColor: const Color.fromARGB(255, 43, 43, 43),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Palette.darkGrey),
      ),
    );
  }
}
