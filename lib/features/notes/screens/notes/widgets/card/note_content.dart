import 'package:flutter/material.dart';
import 'package:securenotes/utils/constants/sizes.dart';

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
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(height: Sizes.xs),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(height: Sizes.xs),
        Text(
          time,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
