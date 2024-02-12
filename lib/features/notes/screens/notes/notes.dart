import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/notes/controllers/note_controller.dart';
import 'package:securenotes/features/notes/models/note_model.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/filtering/filter_drawer.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/note_list.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/filtered_note_list.dart';
import 'package:securenotes/utils/constants/colors.dart';
import 'package:securenotes/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  showDrawer(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return FilterDrawer();
        });
  }

  @override
  Widget build(BuildContext context) {
    final NoteController noteController = Get.put(NoteController());

    return Scaffold(
      appBar: AppBar(
        title: Text('SecureNotes'),
        actions: [
          IconButton(
            onPressed: () {
              showDrawer(context);
            },
            icon: Icon(Icons.filter_list),
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              Get.toNamed("/settings");
            },
          ),
        ],
      ),
      body: FilteredNoteList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var missingID = noteController.findMissingNoteId();
          var newNote = Note(
            id: missingID,
            title: "Title",
            content: "",
            created: DateTime.now(),
            lastModified: DateTime.now(),
          );

          noteController.addOrUpdateNote(newNote);

          Get.toNamed("/note-editor", arguments: newNote);
        },
        backgroundColor: HelperFunctions.isDarkMode(context)
            ? CustomColors.mDarkerGrey
            : CustomColors.slightGrey,
        child: Icon(Icons.add),
        shape: CircleBorder(),
      ),
    );
  }
}
