import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/notes/controllers/note_controller.dart';
import 'package:securenotes/features/notes/models/note_model.dart';

class NoteOptionsMenuButton extends StatelessWidget {
  const NoteOptionsMenuButton({Key? key, required this.note}) : super(key: key);

  final Note note;

  @override
  Widget build(BuildContext context) {
    final NoteController noteController = Get.find();

    return PopupMenuButton(
      surfaceTintColor: Colors.transparent,
      icon: Icon(Icons.more_vert),
      offset: Offset(-2, 40),
      onSelected: (value) {
        if (value == 'Edit') {
          Get.toNamed("/note-editor", arguments: note);
        } else {
          noteController.deleteNoteById(note.id);
        }
      },
      itemBuilder: (BuildContext context) => [
        PopupMenuItem<String>(
          value: 'Edit',
          child: Text('Edit'),
        ),
        PopupMenuItem<String>(
          value: 'Delete',
          child: Text('Delete'),
        ),
      ],
    );
  }
}
