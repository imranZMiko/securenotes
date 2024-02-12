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
    return FutureBuilder(
      future: NoteController.fetchNotes(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(),
          );
        }
        return ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: snapshot.data!.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Sizes.defaultSpace, vertical: Sizes.sm),
              child: NoteCard(
                title: snapshot.data![index].title,
                subtitle: HelperFunctions.truncateText(
                    snapshot.data![index].content, 30),
                timestamp: DateFormat('h:mm a  dd/MM/yyyy')
                    .format(snapshot.data![index].created),
              ),
            );
          },
        );
      },
    );
  }
}
