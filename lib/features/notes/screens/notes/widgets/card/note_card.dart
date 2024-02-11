import 'package:flutter/material.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/card/leading_bar.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/card/note_content.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/card/note_options_menu_button.dart';
import 'package:securenotes/utils/constants/sizes.dart';

import '../../../../../../utils/constants/colors.dart';

class NoteCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Material(
        color: CustomColors.slightGrey,
        child: InkWell(
          onTap: () {},
          child: Container(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LeadingColorBar(color: CustomColors.grey),
                SizedBox(width: 20),
                Expanded(
                  child: NoteContent(
                    title: 'Title',
                    subtitle: 'Subtitle',
                    time: '06:00 PM',
                  ),
                ),
                NoteOptionsMenuButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
