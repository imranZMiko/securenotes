import 'package:flutter/material.dart';
import 'package:securenotes/utils/theme/text_theme.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class CustomElevatedButtonTheme {
  CustomElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: CustomColors.dark,
      backgroundColor: CustomColors.primary,
      disabledForegroundColor: CustomColors.darkGrey,
      disabledBackgroundColor: CustomColors.buttonDisabled,
      side: const BorderSide(color: CustomColors.darkGrey),
      padding: const EdgeInsets.symmetric(
          horizontal: Sizes.buttonWidth, vertical: Sizes.buttonHeight),
      textStyle: CustomTextTheme.lightTextTheme.bodyLarge,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.buttonRadius)),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: CustomColors.primary,
      backgroundColor: CustomColors.dark,
      disabledForegroundColor: CustomColors.darkGrey,
      disabledBackgroundColor: CustomColors.darkerGrey,
      side: const BorderSide(color: CustomColors.softGrey),
      padding: const EdgeInsets.symmetric(
          horizontal: Sizes.buttonWidth, vertical: Sizes.buttonHeight),
      textStyle: CustomTextTheme.darkTextTheme.bodyLarge,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.buttonRadius)),
    ),
  );
}
