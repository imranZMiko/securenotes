import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:securenotes/utils/constants/colors.dart';

class CustomTextTheme {
  CustomTextTheme._();

  static TextTheme lightTextTheme = GoogleFonts.quicksandTextTheme().copyWith(
    headlineLarge: GoogleFonts.quicksand()
        .copyWith(fontSize: 32.0, color: CustomColors.dark),
    headlineMedium: GoogleFonts.quicksand()
        .copyWith(fontSize: 28.0, color: CustomColors.dark),
    headlineSmall: GoogleFonts.quicksand()
        .copyWith(fontSize: 24.0, color: CustomColors.dark),
    titleLarge: GoogleFonts.quicksand()
        .copyWith(fontSize: 22.0, color: CustomColors.dark),
    titleMedium: GoogleFonts.quicksand()
        .copyWith(fontSize: 16.0, color: CustomColors.dark),
    titleSmall: GoogleFonts.quicksand()
        .copyWith(fontSize: 14.0, color: CustomColors.dark),
    bodyLarge: GoogleFonts.quicksand()
        .copyWith(fontSize: 18.0, color: CustomColors.dark),
    bodyMedium: GoogleFonts.quicksand()
        .copyWith(fontSize: 14.0, color: CustomColors.dark),
    bodySmall: GoogleFonts.quicksand()
        .copyWith(fontSize: 12.0, color: CustomColors.dark),
    labelLarge: GoogleFonts.quicksand()
        .copyWith(fontSize: 14.0, color: CustomColors.dark),
    labelMedium: GoogleFonts.quicksand()
        .copyWith(fontSize: 12.0, color: CustomColors.dark),
    labelSmall: GoogleFonts.quicksand()
        .copyWith(fontSize: 11.0, color: CustomColors.dark),
  );

  static TextTheme darkTextTheme = GoogleFonts.quicksandTextTheme().copyWith(
    headlineLarge: GoogleFonts.quicksand()
        .copyWith(fontSize: 32.0, color: CustomColors.light),
    headlineMedium: GoogleFonts.quicksand()
        .copyWith(fontSize: 28.0, color: CustomColors.light),
    headlineSmall: GoogleFonts.quicksand()
        .copyWith(fontSize: 24.0, color: CustomColors.light),
    titleLarge: GoogleFonts.quicksand()
        .copyWith(fontSize: 22.0, color: CustomColors.light),
    titleMedium: GoogleFonts.quicksand()
        .copyWith(fontSize: 16.0, color: CustomColors.light),
    titleSmall: GoogleFonts.quicksand()
        .copyWith(fontSize: 14.0, color: CustomColors.light),
    bodyLarge: GoogleFonts.quicksand()
        .copyWith(fontSize: 16.0, color: CustomColors.light),
    bodyMedium: GoogleFonts.quicksand()
        .copyWith(fontSize: 14.0, color: CustomColors.light),
    bodySmall: GoogleFonts.quicksand()
        .copyWith(fontSize: 12.0, color: CustomColors.light),
    labelLarge: GoogleFonts.quicksand()
        .copyWith(fontSize: 14.0, color: CustomColors.light),
    labelMedium: GoogleFonts.quicksand()
        .copyWith(fontSize: 12.0, color: CustomColors.light),
    labelSmall: GoogleFonts.quicksand()
        .copyWith(fontSize: 11.0, color: CustomColors.light),
  );
}
