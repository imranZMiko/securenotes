import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/filtering/category_pill.dart';
import 'package:securenotes/features/notes/controllers/category_list_controller.dart'; // Import the controller

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';

class CategoryList extends StatelessWidget {
  final List<String> items;
  final CategoryListController controller = Get.put(CategoryListController());

  CategoryList({required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.categoryPillHeight,
      child: Obx(() {
        final selectedIndex = controller.selectedIndex.value;
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            bool isFirstItem = index == 0;
            return Padding(
              padding: EdgeInsets.only(
                left: isFirstItem ? Sizes.defaultSpace : Sizes.md,
                top: Sizes.sm,
                bottom: Sizes.sm,
              ),
              child: CategoryPill(
                text: items[index],
                isSelected: index == selectedIndex, // Use the local variable.
                onTap: () => controller.selectCategory(index),
              ),
            );
          },
        );
      }),
    );
  }
}
