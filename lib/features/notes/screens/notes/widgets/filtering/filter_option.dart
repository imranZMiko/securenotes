import 'package:flutter/material.dart';
import 'package:securenotes/utils/constants/colors.dart';
import 'package:securenotes/utils/constants/enums.dart';
import 'package:securenotes/utils/constants/sizes.dart';

class FilterOption extends StatelessWidget {
  const FilterOption({
    super.key,
    required this.type,
    required this.label,
    required this.onTap,
    required this.isSelected,
  });

  final FilterOptionType type;
  final String label;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final Map<FilterOptionType, BorderRadius> borderRadiusMap = {
      FilterOptionType.top: BorderRadius.only(
        topLeft: Radius.circular(Sizes.borderRadiusSm),
        topRight: Radius.circular(Sizes.borderRadiusSm),
      ),
      FilterOptionType.middle: BorderRadius.zero,
      FilterOptionType.bottom: BorderRadius.only(
        bottomLeft: Radius.circular(Sizes.borderRadiusSm),
        bottomRight: Radius.circular(Sizes.borderRadiusSm),
      ),
    };

    final BorderRadius borderRadius =
        borderRadiusMap[type] ?? BorderRadius.zero;

    return Material(
      color: isSelected ? CustomColors.grey : CustomColors.slightGrey,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(Sizes.smd),
          decoration: BoxDecoration(),
          child: Text(label),
        ),
      ),
    );
  }
}
