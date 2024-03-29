import 'package:flutter/material.dart';
import 'package:securenotes/utils/constants/colors.dart';
import 'package:securenotes/utils/theme/text_theme.dart';
import 'package:securenotes/utils/theme/widget_themes/text_button_theme.dart';
import 'package:securenotes/utils/theme/widget_themes/text_field_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    textTheme: CustomTextTheme.lightTextTheme,
    disabledColor: CustomColors.grey,
    brightness: Brightness.light,
    primaryColor: CustomColors.primary,
    scaffoldBackgroundColor: CustomColors.white,
    elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: CustomTextFormFieldTheme.lightInputDecorationTheme,
    appBarTheme: const AppBarTheme().copyWith(
      surfaceTintColor: Colors.transparent,
      color: CustomColors.white,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    textTheme: CustomTextTheme.darkTextTheme,
    disabledColor: CustomColors.grey,
    brightness: Brightness.dark,
    primaryColor: CustomColors.primary,
    scaffoldBackgroundColor: CustomColors.black,
    elevatedButtonTheme: CustomElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: CustomTextFormFieldTheme.darkInputDecorationTheme,
    appBarTheme: const AppBarTheme().copyWith(
      surfaceTintColor: Colors.transparent,
      color: CustomColors.black,
    ),
  );
}
