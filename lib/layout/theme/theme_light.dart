import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeLight() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    cardTheme: cardThemeLight(),
    textTheme: textThemeLight(),
    appBarTheme: appBarThemeLight(),
    backgroundColor: Colors.white,
    primaryColor: Colors.orange,
    accentColor: Colors.orange.shade50,
    dividerColor: Colors.orange,
    disabledColor: Colors.white,
    unselectedWidgetColor: Colors.black,
    indicatorColor: Colors.black,
    errorColor: Colors.red,
  );
}

TextTheme textThemeLight() {
  return TextTheme(
    headline1: GoogleFonts.workSans(fontSize: 32, color: Colors.black),
    headline2: GoogleFonts.workSans(fontSize: 18, color: Colors.black),
    headline3: GoogleFonts.workSans(fontSize: 40, color: Colors.black),
    subtitle1: GoogleFonts.workSans(
        fontSize: 18, color: Colors.black, fontWeight: FontWeight.w500),
    subtitle2: GoogleFonts.workSans(
        fontSize: 14, color: Colors.black, fontStyle: FontStyle.italic),
    bodyText1: GoogleFonts.workSans(fontSize: 16, color: Colors.black),
    bodyText2: GoogleFonts.workSans(fontSize: 14, color: Colors.black),
  );
}

AppBarTheme appBarThemeLight() {
  return AppBarTheme(
      backgroundColor: Colors.white, brightness: Brightness.light);
}

CardTheme cardThemeLight() {
  return CardTheme(
    color: Colors.white,
    shape: InputBorder.none,
    elevation: 0.0,
  );
}
