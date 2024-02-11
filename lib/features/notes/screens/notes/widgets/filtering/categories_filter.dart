import 'package:flutter/material.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/filtering/category_list.dart';

class CategoriesFilter extends StatelessWidget {
  const CategoriesFilter({
    super.key,
    required this.onFilterPressed,
  });

  final VoidCallback onFilterPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CategoryList(
            items: [
              "All",
              "Study",
              "Home",
              "Home",
              "Home",
              "Home",
            ],
          ),
        ),
        IconButton(
          onPressed: onFilterPressed,
          icon: Icon(Icons.filter_list),
        ),
      ],
    );
  }
}
