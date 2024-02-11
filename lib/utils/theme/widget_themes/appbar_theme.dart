import 'package:flutter/material.dart';
import 'package:securenotes/utils/constants/sizes.dart';
import 'package:securenotes/utils/constants/colors.dart';

class TAppBarTheme{
  TAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: CustomColors.black, size: Sizes.iconMd),
    actionsIconTheme: IconThemeData(color: CustomColors.black, size: Sizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: CustomColors.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: CustomColors.black, size: Sizes.iconMd),
    actionsIconTheme: IconThemeData(color: CustomColors.white, size: Sizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: CustomColors.white),
  );
}