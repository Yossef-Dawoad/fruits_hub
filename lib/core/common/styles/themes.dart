import 'package:flutter/material.dart';
import 'package:fruits_hub/core/common/styles/widget_prop_theme/border_styles.dart';

import 'package:fruits_hub/core/constants/colors/color_palette.dart';

import 'widget_prop_theme/text_styles.dart';

class CustomTheme {
  CustomTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Cairo',
    disabledColor: Palette.grey,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Palette.primary,
      brightness: Brightness.light,
    ),
    textTheme: CustomTextThemes.lightTextTheme,
    inputDecorationTheme: CustomBorderThemes.customInputDecorationLightTheme(),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Cairo',
    disabledColor: Palette.grey,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Palette.primary,
      brightness: Brightness.dark,
    ),
    textTheme: CustomTextThemes.darkTextTheme,
    inputDecorationTheme: CustomBorderThemes.customInputDecorationDarkTheme(),
  );
}
