import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/notes/controllers/filter_section_controller.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/filtering/filter_option.dart';
import 'package:securenotes/utils/constants/enums.dart';

class FilterSection extends StatelessWidget {
  final List<String> options;
  final String sectionKey;
  FilterSection({
    Key? key,
    required this.options,
    required this.sectionKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FilterSectionController controller =
        Get.find<FilterSectionController>();

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: options.length,
      itemBuilder: (context, index) {
        FilterOptionType type = FilterOptionType.middle;
        if (index == 0) {
          type = FilterOptionType.top;
        } else if (index == options.length - 1) {
          type = FilterOptionType.bottom;
        }
        return Obx(() => FilterOption(
              type: type,
              label: options[index],
              isSelected: controller.selectedIndex(sectionKey) == index,
              onTap: () => controller.selectIndex(sectionKey, index),
            ));
      },
    );
  }
}
