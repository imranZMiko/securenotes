import 'package:flutter/material.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/filtering/edit_categories_dialog.dart';

class NoteOptionsMenuButton extends StatelessWidget {
  const NoteOptionsMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      surfaceTintColor: Colors.transparent,
      icon: Icon(Icons.more_vert),
      offset: Offset(-2, 40),
      onSelected: (value) {
        if (value == 'Edit Categories') {
          showDialog(
            context: context,
            builder: (context) {
              return EditCategoriesDialog();
            },
          );
        }
      },
      itemBuilder: (BuildContext context) => [
        PopupMenuItem<String>(
          value: 'Edit',
          child: Text('Edit'),
        ),
        PopupMenuItem<String>(
          value: 'Edit Categories',
          child: Text('Edit Categories'),
        ),
        PopupMenuItem<String>(
          value: 'Delete',
          child: Text('Delete'),
        ),
      ],
    );
  }
}
