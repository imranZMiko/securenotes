import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/notes/controllers/note_controller.dart';
import 'package:securenotes/features/notes/models/note_model.dart';

/// Widget for displaying options menu button for a note.
class NoteOptionsMenuButton extends StatelessWidget {
  const NoteOptionsMenuButton({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    final NoteController noteController = Get.find();

    return PopupMenuButton(
      surfaceTintColor: Colors.transparent,
      icon: const Icon(Icons.more_vert),
      offset: const Offset(-2, 40),
      onSelected: (value) {
        if (value == 'Edit') {
          Get.toNamed("/note-editor", arguments: note);
        } else {
          noteController.deleteNoteById(note.id);
        }
      },
      itemBuilder: (BuildContext context) => [
        const PopupMenuItem<String>(
          value: 'Edit',
          child: Text('Edit'),
        ),
        const PopupMenuItem<String>(
          value: 'Delete',
          child: Text('Delete'),
        ),
      ],
    );
  }
}
