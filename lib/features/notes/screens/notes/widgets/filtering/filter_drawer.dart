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
          height: 390,
          width: HelperFunctions.screenWidth(context),
          decoration: BoxDecoration(
            color: CustomColors.white, // Background color of the container
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: CustomColors.grey.withOpacity(0.5), // Shadow color
                spreadRadius: 5, // Spread radius
                blurRadius: 7, // Blur radius
                offset:
                    Offset(0, 3), // Offset in x and y axes from the container
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
      bottom: drawerVisible ? 0 : -400,
      curve: Curves.easeInOut,
      duration: Duration(milliseconds: 200),
    );
  }
}
