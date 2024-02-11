import 'dart:math';

import 'package:flutter/material.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/filtering/filter_option.dart';
import 'package:securenotes/utils/constants/enums.dart';

class FilterSection extends StatefulWidget {
  const FilterSection({
    super.key,
    required this.options,
  });

  final List<String> options;

  @override
  _FilterSectionState createState() => _FilterSectionState();
}

class _FilterSectionState extends State<FilterSection> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: widget.options.length,
      itemBuilder: (context, index) {
        FilterOptionType type;
        if (index == 0) {
          type = FilterOptionType.top;
        } else if (index == widget.options.length - 1) {
          type = FilterOptionType.bottom;
        } else {
          type = FilterOptionType.middle;
        }
        return FilterOption(
          type: type,
          label: widget.options[index],
          isSelected: selectedIndex == index,
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
        );
      },
    );
  }
}
