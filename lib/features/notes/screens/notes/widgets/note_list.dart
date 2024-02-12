import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/notes/controllers/note_controller.dart';

import '../../../../../utils/constants/sizes.dart';
import 'card/note_card.dart';

/// Widget for displaying a list of notes.
class NoteList extends StatelessWidget {
  const NoteList({super.key});

  @override
  Widget build(BuildContext context) {
    final NoteController noteController = Get.find();
    return Column(
      children: [
        const SizedBox(height: Sizes.spaceBtwItems),
        Expanded(
          child: Obx(
            () => ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: noteController.getNotes.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.defaultSpace, vertical: Sizes.sm),
                  child: NoteCard(
                    note: noteController.getNotes[index],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
