
import 'package:flutter/material.dart';
import 'package:flutter_cases/theme/theme_config.dart';

class Styles {
  // decoration theme of input
  static const inputDecorationTheme = InputDecorationTheme(
    hintStyle: TextStyle(fontSize: ThemeConfigs.inputTextSize),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(width: ThemeConfigs.dividerWidth, color: ThemeConfigs.primaryColor)
    ),
    border: UnderlineInputBorder(
        borderSide: BorderSide(width: ThemeConfigs.dividerWidth, color: ThemeConfigs.dividerColor)
    ),
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(width: ThemeConfigs.dividerWidth, color: ThemeConfigs.dividerColor)
    ),
    disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(width: ThemeConfigs.dividerWidth, color: ThemeConfigs.dividerColor)
    ),
  );

  static const categoryTitleTheme = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: ThemeConfigs.titleColor,
    letterSpacing: 1.2
  );

  static const appBarTitleTheme = TextStyle(
    fontWeight: FontWeight.w800,
    letterSpacing: 1.6
  );
}