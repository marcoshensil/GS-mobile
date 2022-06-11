import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Color.fromARGB(255, 0, 79, 197);
const lightColor = const Color(grey);
const backgroundColor = Color.fromARGB(237, 245, 245, 245);

// ignore: non_constant_identifier_names
ThemeData AppTheme() {
  return ThemeData(
    //primarySwatch: primaryColor,
    brightness: brightness,
    // textTheme: new TextTheme(
    //   button: new TextStyle(color: Colors.green),
    // ),
    // buttonTheme: new ButtonThemeData(
    //   buttonColor: Colors.orange,
    //   textTheme: ButtonTextTheme.primary,
    //   minWidth: 200,
    // ),
    // cardTheme: CardTheme(
    //   elevation: 5,
    //   color: Colors.indigo,
    // ),
    primaryColor: primaryColor,
    accentColor: primaryColor,
    fontFamily: 'Montserrat',
    buttonColor: Color.fromARGB(255, 197, 72, 0),
    cardColor: Colors.white,
  );
}
