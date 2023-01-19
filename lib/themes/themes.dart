// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Themes {
  static var lightTheme = ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.red,
      fontFamily: 'OpenSans',
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 28,
          color: Colors.red,
        ),
        headline2: TextStyle(
          fontSize: 26,
          color: Colors.red,
        ),
        headline3: TextStyle(
          fontSize: 24,
          color: Colors.red,
        ),
        headline4: TextStyle(
          fontSize: 20,
          color: Colors.red,
        ),
      ));

  static var darkTheme = ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.red,
      fontFamily: 'OpenSans',
      textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 28,
          color: Colors.red,
        ),
        headline2: TextStyle(
          fontSize: 26,
          color: Colors.red,
        ),
        headline3: TextStyle(
          fontSize: 24,
          color: Colors.red,
        ),
        headline4: TextStyle(
          fontSize: 20,
          color: Colors.red,
        ),
      ));
}
