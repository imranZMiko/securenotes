import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/notes/controllers/note_controller.dart';
import 'package:securenotes/features/notes/controllers/note_editor_controller.dart';
import 'package:securenotes/features/notes/controllers/title_app_bar_controller.dart';
import 'package:securenotes/features/notes/models/note_model.dart';
import 'package:securenotes/features/notes/screens/note_editor/widgets/note_action_buttons_row.dart';
import 'package:securenotes/features/notes/screens/note_editor/widgets/note_input_field.dart';
import 'package:securenotes/features/notes/screens/note_editor/widgets/title_appbar.dart';

import '../../../../utils/constants/sizes.dart';

class NoteEditorScreen extends StatelessWidget {
  const NoteEditorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Note note = Get.arguments;
    final TitleAppBarController controller = Get.put(TitleAppBarController());
    controller.updateTitle(note.title);
    final NoteEditorController noteEditorController =
        Get.put(NoteEditorController());
    noteEditorController.updateContent(note.content);
    final NoteController noteController = Get.find();

    return PopScope(
      onPopInvoked: (_) {
        var newNote = Note(
          id: note.id,
          title: controller.title.value,
          content: noteEditorController.content.value,
          created: note.created,
          lastModified: DateTime.now(),
        );
        noteController.addOrUpdateNote(newNote);
      },
      child: Scaffold(
        appBar: TitleAppBar(),
        body: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              Expanded(
                child: NoteInputField(),
              ),
              NoteActionButtonsRow(),
            ],
          ),
        ),
      ),
    );
  }
}
