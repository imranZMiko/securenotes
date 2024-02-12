import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/notes/controllers/filter_section_controller.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/filtering/filter_section.dart';
import 'package:securenotes/utils/constants/colors.dart';
import 'package:securenotes/utils/constants/sizes.dart';
import 'package:securenotes/utils/helpers/helper_functions.dart';

class FilterDrawer extends StatelessWidget {
  const FilterDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put<FilterSectionController>(FilterSectionController());

    return Container(
      height: Sizes.filterDrawerHeight,
      width: HelperFunctions.screenWidth(context),
      decoration: BoxDecoration(
        color: HelperFunctions.isDarkMode(context)
            ? CustomColors.dark
            : CustomColors.white,
        borderRadius: BorderRadius.circular(Sizes.borderRadiusLg),
        boxShadow: [
          BoxShadow(
            color: CustomColors.black.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(Sizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sort By",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: Sizes.spaceBtwItems),
            FilterSection(
              options: ['Alphabetical Order', 'Timestamp'],
              sectionKey: 'Sort By',
            ),
            SizedBox(height: Sizes.spaceBtwItems),
            Text(
              "Sort Order",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: Sizes.spaceBtwItems),
            FilterSection(
              options: ['Ascending', 'Descending'],
              sectionKey: 'Sort Order',
            ),
          ],
        ),
      ),
    );
  }
}
