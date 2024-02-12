import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/filtering/filter_drawer.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/filtering/filter_option.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/filtering/filter_section.dart';
import 'package:securenotes/utils/constants/enums.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import 'note_list.dart';

class FilteredNoteList extends StatelessWidget {
  FilteredNoteList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Sizes.spaceBtwItems),
        Expanded(
          child: NoteList(),
        ),
      ],
    );
  }
}
