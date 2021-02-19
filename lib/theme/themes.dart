
import 'package:flutter/material.dart';
import 'package:flutter_cases/theme/styles.dart';
import 'package:flutter_cases/theme/theme_config.dart';

class Themes {
  Themes._();

  static ThemeData globalTheme = ThemeData(
    primaryColor: ThemeConfigs.primaryColor,
    primaryColorDark: ThemeConfigs.primaryDarkColor,
    scaffoldBackgroundColor: ThemeConfigs.pageBackgroundColor,
    inputDecorationTheme: Styles.inputDecorationTheme,
  );

}