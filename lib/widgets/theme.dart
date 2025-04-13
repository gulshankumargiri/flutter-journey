import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyTheme {

  static ThemeData lightTheme(BuildContext context) =>ThemeData(
    fontFamily: GoogleFonts.lato().fontFamily,
    primarySwatch: Colors.deepPurple,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),

    )
  );
    // primaryTextTheme: GoogleFonts.latoTextTheme(),


  static ThemeData darkTheme (BuildContext context) =>ThemeData(
    brightness: Brightness.dark,
  );
}