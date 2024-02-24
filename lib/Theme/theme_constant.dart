import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoliio/constants/colors.dart';

class AppTheme{

  static ThemeData lightTheme = ThemeData(
    brightness:  Brightness.light,
        useMaterial3: true,
    scaffoldBackgroundColor: LightColors.scafoldColor,
    appBarTheme: AppBarTheme(
      color: LightColors.appBarColor,
    ),
      dividerTheme: DividerThemeData(
          thickness: 3,
          color: LightColors.drawColor
      ),
    textTheme: TextTheme(
        headline2: GoogleFonts.abrilFatface(fontSize: 30, fontWeight:  FontWeight.w800),
        subtitle2: GoogleFonts.abrilFatface(fontSize: 20, fontWeight: FontWeight.w600),
        bodyText1: GoogleFonts.abrilFatface(fontSize: 13)
    )
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
  scaffoldBackgroundColor: DarkColors.scafoldColor,
  useMaterial3: true,
    appBarTheme: AppBarTheme(
      color: DarkColors.appBarColor
    ),
    dividerTheme: DividerThemeData(
      thickness: 3,
      color: DarkColors.drawColor
    ),
      textTheme: TextTheme(
          headline2: GoogleFonts.abrilFatface(fontSize: 30, fontWeight:  FontWeight.w800),
          subtitle2: GoogleFonts.abrilFatface(fontSize: 20, fontWeight: FontWeight.w600),
        bodyText1: GoogleFonts.abrilFatface(fontSize: 13)

      )
  );
}
