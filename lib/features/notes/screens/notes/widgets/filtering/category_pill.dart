import 'package:flutter/material.dart';
import 'package:securenotes/utils/constants/sizes.dart';
import 'package:securenotes/utils/helpers/helper_functions.dart';

import '../../../../../../utils/constants/colors.dart';

class CategoryPill extends StatelessWidget {
  CategoryPill({
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isSelected
          ? (HelperFunctions.isDarkMode(context)
              ? CustomColors.mDarkerGrey
              : CustomColors.grey)
          : (HelperFunctions.isDarkMode(context)
              ? CustomColors.darkerGrey
              : CustomColors.slightGrey),
      borderRadius: BorderRadius.circular(Sizes.borderRadiusLg),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(Sizes.borderRadiusLg),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: Sizes.lg),
          child: Center(
            child: Text(
              text,
            ),
          ),
        ),
      ),
    );
  }
}
