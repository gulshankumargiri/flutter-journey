import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
class MyTheme {

  static ThemeData lightTheme(BuildContext context) =>ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: creamColor,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary:lightBluishColor,
        secondary: darkBluishColor,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
      ),
      primarySwatch: Colors.deepPurple,
      appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
    )
  );
    // primaryTextTheme: GoogleFonts.latoTextTheme(),


  static ThemeData darkTheme (BuildContext context) =>ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: darkCreamColor,
      colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.white,
          secondary: lightBluishColor,
          onPrimary: Colors.black, // Text color on primary
          onSecondary: Colors.white,
      ),
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
  ));

  //colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}



