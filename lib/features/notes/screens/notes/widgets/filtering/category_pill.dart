import 'package:flutter/material.dart';

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
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 28),
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
