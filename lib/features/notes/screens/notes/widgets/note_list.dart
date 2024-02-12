import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:securenotes/features/notes/controllers/note_controller.dart';
import 'package:securenotes/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/sizes.dart';
import 'card/note_card.dart';

class NoteList extends StatelessWidget {
  const NoteList({super.key});

  @override
  Widget build(BuildContext context) {
    final NoteController noteController = Get.find();
    return Obx(() => ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: noteController.getNotes.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Sizes.defaultSpace, vertical: Sizes.sm),
              child: NoteCard(
                note: noteController.getNotes[index],
              ),
            );
          },
        ));
  }
}
