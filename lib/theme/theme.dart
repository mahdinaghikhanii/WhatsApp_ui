// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'colors.dart';

// Light/Primary Theme | Default Theme
ThemeData themeData(BuildContext context) {
  return ThemeData(
    appBarTheme: appBarTheme,
    primaryColor: kPrimaryColor,
    accentColor: kAccentLightColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(
      secondary: kSecondaryLightColor,
      // on light theme surface = Colors.white by default
    ),
    backgroundColor: Colors.white,
  );
}

AppBarTheme appBarTheme = AppBarTheme(color: kPrimaryColor, elevation: 0);
