import 'package:flutter/material.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/filtering/category_pill.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';

class CategoryList extends StatefulWidget {
  final List<String> items;

  CategoryList({required this.items});

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.categoryPillHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index) {
          bool isFirstItem = index == 0;
          return Padding(
            padding: EdgeInsets.only(
              left: isFirstItem ? Sizes.defaultSpace : Sizes.md,
              top: Sizes.sm,
              bottom: Sizes.sm,
            ),
            child: CategoryPill(
              text: widget.items[index],
              isSelected: index == selectedIndex,
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
