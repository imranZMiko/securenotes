import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/colors.dart';

class CustomTextFormFieldTheme {
  CustomTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: CustomColors.darkGrey,
    suffixIconColor: CustomColors.darkGrey,
    labelStyle: const TextStyle()
        .copyWith(fontSize: Sizes.fontSizeMd, color: CustomColors.black),
    hintStyle: const TextStyle()
        .copyWith(fontSize: Sizes.fontSizeSm, color: CustomColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: CustomColors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CustomColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CustomColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CustomColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CustomColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: CustomColors.warning),
    ),
    contentPadding:
        const EdgeInsets.symmetric(horizontal: Sizes.md, vertical: Sizes.md),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: CustomColors.darkGrey,
    suffixIconColor: CustomColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: Sizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: Sizes.fontSizeMd, color: CustomColors.white),
    hintStyle: const TextStyle()
        .copyWith(fontSize: Sizes.fontSizeSm, color: CustomColors.white),
    floatingLabelStyle:
        const TextStyle().copyWith(color: CustomColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CustomColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CustomColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CustomColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: CustomColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: CustomColors.warning),
    ),
    contentPadding:
        const EdgeInsets.symmetric(horizontal: Sizes.md, vertical: Sizes.md),
  );
}
