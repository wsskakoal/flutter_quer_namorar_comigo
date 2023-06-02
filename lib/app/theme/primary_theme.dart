import 'package:flutter/material.dart';

import '../../constants.dart';

ThemeData primaryTheme = ThemeData(
    primaryColor: constPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: constPrimaryColor,
        shape: const StadiumBorder(),
        maximumSize: const Size(double.infinity, 56),
        minimumSize: const Size(double.infinity, 56),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: constPrimaryLightColor,
      iconColor: constPrimaryColor,
      prefixIconColor: constPrimaryColor,
      // contentPadding: EdgeInsets.symmetric(
      //     horizontal: defaultPadding, vertical: defaultPadding),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide.none,
      ),
    ));
