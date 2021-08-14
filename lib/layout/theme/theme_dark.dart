import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: new Color(0xFF424242),
    brightness: Brightness.dark,
    cardTheme: cardThemeDark(),
    textTheme: textThemeDark(),
    appBarTheme: appBarThemeDark(),
    backgroundColor: Color(0xFF424242),
    primaryColor: Colors.orange,
    accentColor: Colors.orange.shade50,
    dividerColor: Colors.orange,
    disabledColor: Color(0xFF424242),
    unselectedWidgetColor: Colors.white,
    primaryColorLight: Colors.black,
    errorColor: Colors.red,
  );
}

TextTheme textThemeDark() {
  return TextTheme(
    headline1: GoogleFonts.workSans(fontSize: 32, color: Colors.white),
    headline2: GoogleFonts.workSans(fontSize: 18, color: Colors.white),
    subtitle1: GoogleFonts.workSans(
        fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
    subtitle2: GoogleFonts.workSans(
        fontSize: 14, color: Colors.white, fontStyle: FontStyle.italic),
    bodyText1: GoogleFonts.workSans(fontSize: 16, color: Colors.white),
    bodyText2: GoogleFonts.workSans(fontSize: 14, color: Colors.white),
  );
}

AppBarTheme appBarThemeDark() {
  return AppBarTheme(
      backgroundColor: new Color(0xFF424242), brightness: Brightness.dark);
}

CardTheme cardThemeDark() {
  return CardTheme(
    color: Color(0xFF424242),
    shape: InputBorder.none,
    elevation: 0.0,
  );
}
