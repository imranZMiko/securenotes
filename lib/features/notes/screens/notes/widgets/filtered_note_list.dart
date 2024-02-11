import 'package:flutter/material.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/filtering/categories_filter.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/filtering/filter_drawer.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/filtering/filter_option.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/filtering/filter_section.dart';
import 'package:securenotes/utils/constants/enums.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import 'filtering/category_list.dart';
import 'note_list.dart';

class FilteredNoteList extends StatefulWidget {
  const FilteredNoteList({super.key});

  @override
  State<FilteredNoteList> createState() => _FilteredNoteListState();
}

class _FilteredNoteListState extends State<FilteredNoteList> {
  var _drawerVisible = false;

  void closeDrawer() {
    setState(() {
      _drawerVisible = false;
    });
  }

  void toggleDrawer() {
    setState(() {
      _drawerVisible = !_drawerVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: closeDrawer,
          child: Column(
            children: [
              SizedBox(height: Sizes.spaceBtwItems),
              CategoriesFilter(onFilterPressed: toggleDrawer),
              SizedBox(height: Sizes.spaceBtwItems),
              Expanded(
                child: NoteList(),
              ),
            ],
          ),
        ),
        FilterDrawer(
          drawerVisible: _drawerVisible,
          onVerticalDragUpdate: (details) {
            if (details.primaryDelta! > 0) {
              closeDrawer();
            }
          },
        ),
      ],
    );
  }
}
