import 'package:flutter/material.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/note_list.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/filtered_note_list.dart';
import 'package:securenotes/utils/constants/colors.dart';
import 'package:securenotes/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';
import 'widgets/filtering/category_list.dart';
import 'widgets/card/note_card.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecureNotes'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: FilteredNoteList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: HelperFunctions.isDarkMode(context)
            ? CustomColors.mDarkerGrey
            : CustomColors.slightGrey,
        child: Icon(Icons.add),
        shape: CircleBorder(),
      ),
    );
  }
}
