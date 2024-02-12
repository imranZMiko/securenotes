import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/notes/controllers/note_controller.dart';
import 'package:securenotes/features/notes/models/note_model.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/note_list.dart';
import 'package:securenotes/utils/constants/colors.dart';
import 'package:securenotes/utils/helpers/helper_functions.dart';

/// Widget representing the main screen for displaying notes.
class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NoteController noteController = Get.put(NoteController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('SecureNotes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              Get.toNamed("/settings");
            },
          ),
        ],
      ),
      body: const NoteList(),
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
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
