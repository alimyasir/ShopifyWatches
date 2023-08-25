import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant.dart';



class MyThemes {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.light,
    scaffoldBackgroundColor: kScaffoldBgColor,
    cardColor: kWhiteColor,
    appBarTheme: const AppBarTheme(
      color: kWhiteColor,
      elevation: 0.0,
      surfaceTintColor: Colors.transparent
    )
  );
  static final darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: kDarkGrayColor,
      appBarTheme: const AppBarTheme(
        color: kDarkGrayColor,
        elevation: 0.0,
        surfaceTintColor: Colors.transparent

      )
  );
}