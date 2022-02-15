
import 'package:flutter/material.dart';

ThemeData themeShemes() => ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    brightness:  Brightness.light,
    primarySwatch: Colors.green,
  ),

  textTheme: TextTheme(
    bodyText2: TextStyle( fontSize: 16, fontFamily: "Roboto"),
    headline6: TextStyle( fontSize: 20, fontStyle: FontStyle.italic, ),
  ),

);