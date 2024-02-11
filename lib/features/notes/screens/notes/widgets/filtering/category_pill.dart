import 'package:flutter/material.dart';
import 'package:securenotes/utils/constants/sizes.dart';

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
      color: isSelected ? CustomColors.grey : CustomColors.slightGrey,
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
