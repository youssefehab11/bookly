
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class CustomTheme{
  static ThemeData lightThemeData(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: primaryColor,
      textTheme: Theme.of(context).textTheme.apply(
        fontFamily: 'Montserrat',
        bodyColor: Colors.white,
        displayColor: Colors.white
      )
    );
  }
}