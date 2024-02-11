import 'package:flutter/material.dart';

class NoteContent extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;

  const NoteContent({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 3),
        Text(
          subtitle,
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(height: 3),
        Text(
          time,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}
