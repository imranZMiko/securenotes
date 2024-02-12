import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/notes/controllers/note_controller.dart';
import 'package:securenotes/features/notes/models/note_model.dart';

/// Widget for displaying action buttons for a note.
class NoteActionButtonsRow extends StatelessWidget {
  /// Constructor for NoteActionButtonsRow.
  const NoteActionButtonsRow({super.key, required this.note});

  final Note note;

  @override
  Widget build(BuildContext context) {
    NoteController noteController = Get.find();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.delete_outline),
          onPressed: () async {
            Get.back();
            await noteController.deleteNoteById(note.id);
          },
        ),
      ],
    );
  }
}
