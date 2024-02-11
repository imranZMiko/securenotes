import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import 'card/note_card.dart';

class NoteList extends StatelessWidget {
  const NoteList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Sizes.defaultSpace, vertical: 12),
          child: NoteCard(),
        );
      },
    );
  }
}
