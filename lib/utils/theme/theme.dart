import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:securenotes/utils/constants/colors.dart';
import 'package:securenotes/utils/theme/text_theme.dart';
import 'package:securenotes/utils/theme/widget_themes/text_button_theme.dart';
import 'package:securenotes/utils/theme/widget_themes/text_field_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    textTheme: CustomTextTheme.lightTextTheme,
    textButtonTheme: CustomTextButtonTheme.lightTextButtonTheme,
    inputDecorationTheme: CustomTextFormFieldTheme.lightInputDecorationTheme,
    appBarTheme: AppBarTheme().copyWith(surfaceTintColor: Colors.transparent),
  );
  static ThemeData darkTheme = ThemeData(
    textTheme: CustomTextTheme.darkTextTheme,
    textButtonTheme: CustomTextButtonTheme.darkTextButtonTheme,
    inputDecorationTheme: CustomTextFormFieldTheme.darkInputDecorationTheme,
    appBarTheme: AppBarTheme().copyWith(surfaceTintColor: Colors.transparent),
  );
}
