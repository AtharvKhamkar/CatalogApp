import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      buttonColor: darkbluishColor,
      canvasColor: creamcolor,
      accentColor: darkbluishColor,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
        titleTextStyle: TextStyle(
          color: Vx.gray900,
          fontStyle: FontStyle.normal,
          fontFamily: GoogleFonts.poppins().fontFamily,
          fontSize: 20,
        ),
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      buttonColor: lightbluishColor,
      canvasColor: darkcreamcolor,
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: context.canvasColor,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontStyle: FontStyle.normal,
          fontFamily: GoogleFonts.poppins().fontFamily,
          fontSize: 20,
        ),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: Theme.of(context).textTheme,
      ));

  static Color creamcolor = Color(0xfff5f5f5);
  static Color darkcreamcolor = Vx.gray900;
  static Color darkbluishColor = Color(0xff403b58);
  static Color lightbluishColor = Vx.indigo500;
}


//
