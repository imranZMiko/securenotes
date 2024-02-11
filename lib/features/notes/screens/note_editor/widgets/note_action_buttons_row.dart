import 'package:flutter/material.dart';

class NoteActionButtonsRow extends StatelessWidget {
  const NoteActionButtonsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.copy),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.paste),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.check_box_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.font_download_outlined),
          onPressed: () {},
        ),
      ],
    );
  }
}
