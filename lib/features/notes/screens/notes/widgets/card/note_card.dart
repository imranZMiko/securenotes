import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:securenotes/features/notes/models/note_model.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/card/leading_bar.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/card/note_content.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/card/note_options_menu_button.dart';
import 'package:securenotes/utils/constants/sizes.dart';
import 'package:securenotes/utils/helpers/helper_functions.dart';

import '../../../../../../utils/constants/colors.dart';

/// Widget representing a note card.
class NoteCard extends StatelessWidget {
  final Note note;

  /// Constructor for NoteCard.
  const NoteCard({
    super.key,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Sizes.borderRadiusSm),
      child: Material(
        color: HelperFunctions.isDarkMode(context)
            ? CustomColors.darkerGrey
            : CustomColors.slightGrey,
        child: InkWell(
          onTap: () {
            Get.toNamed("/note-editor", arguments: note);
          },
          child: SizedBox(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LeadingColorBar(
                    color: HelperFunctions.isDarkMode(context)
                        ? CustomColors.dark
                        : CustomColors.grey),
                const SizedBox(width: Sizes.lg),
                Expanded(
                  child: NoteContent(
                    title: note.title,
                    subtitle: HelperFunctions.truncateText(note.content, 30),
                    time: DateFormat('h:mm a  dd/MM/yyyy').format(note.created),
                  ),
                ),
                NoteOptionsMenuButton(note: note),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
