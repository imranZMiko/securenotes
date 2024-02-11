import 'package:flutter/material.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/filtering/filter_section.dart';
import 'package:securenotes/utils/constants/colors.dart';
import 'package:securenotes/utils/constants/sizes.dart';
import 'package:securenotes/utils/helpers/helper_functions.dart';

class FilterDrawer extends StatelessWidget {
  const FilterDrawer(
      {super.key,
      required this.drawerVisible,
      required this.onVerticalDragUpdate});

  final bool drawerVisible;
  final Function(DragUpdateDetails)? onVerticalDragUpdate;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      child: GestureDetector(
        onVerticalDragUpdate: onVerticalDragUpdate,
        child: Container(
          height: Sizes.filterDrawerHeight,
          width: HelperFunctions.screenWidth(context),
          decoration: BoxDecoration(
            color: CustomColors.white,
            borderRadius: BorderRadius.circular(Sizes.borderRadiusLg),
            boxShadow: [
              BoxShadow(
                color: CustomColors.grey.withOpacity(0.5),
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
                  style: TextStyle().copyWith(fontSize: 20),
                ),
                SizedBox(height: Sizes.spaceBtwItems),
                FilterSection(
                  options: ['Alphabetical Order', 'Timestamp'],
                ),
                SizedBox(height: Sizes.spaceBtwItems),
                Text(
                  "Sort Order",
                  style: TextStyle().copyWith(fontSize: 20),
                ),
                SizedBox(height: Sizes.spaceBtwItems),
                FilterSection(
                  options: ['Ascending', 'Descending'],
                ),
              ],
            ),
          ),
        ),
      ),
      bottom: drawerVisible ? 0 : -Sizes.filterDrawerHeight,
      curve: Curves.easeInOut,
      duration: Duration(milliseconds: Sizes.animationDuration),
    );
  }
}
