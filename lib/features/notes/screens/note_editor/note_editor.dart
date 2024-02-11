import 'package:flutter/material.dart';
import 'package:securenotes/features/notes/screens/note_editor/widgets/note_action_buttons_row.dart';
import 'package:securenotes/features/notes/screens/note_editor/widgets/note_input_field.dart';
import 'package:securenotes/features/notes/screens/note_editor/widgets/title_appbar.dart';

import '../../../../utils/constants/sizes.dart';

class NoteEditorScreen extends StatelessWidget {
  const NoteEditorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
