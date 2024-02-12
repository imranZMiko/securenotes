import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/card/leading_bar.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/card/note_content.dart';
import 'package:securenotes/features/notes/screens/notes/widgets/card/note_options_menu_button.dart';
import 'package:securenotes/utils/constants/sizes.dart';
import 'package:securenotes/utils/helpers/helper_functions.dart';

import '../../../../../../utils/constants/colors.dart';

class NoteCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String timestamp;

  NoteCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.timestamp,
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
            Get.toNamed("/note-editor");
          },
          child: Container(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LeadingColorBar(
                    color: HelperFunctions.isDarkMode(context)
                        ? CustomColors.dark
                        : CustomColors.grey),
                SizedBox(width: Sizes.lg),
                Expanded(
                  child: NoteContent(
                    title: title,
                    subtitle: subtitle,
                    time: timestamp,
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
