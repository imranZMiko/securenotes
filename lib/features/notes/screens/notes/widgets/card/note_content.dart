import 'package:flutter/material.dart';
import 'package:securenotes/utils/constants/sizes.dart';

/// Widget for displaying the content of a note.
class NoteContent extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;

  /// Constructor for NoteContent widget.
  const NoteContent({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: Sizes.xs),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: Sizes.xs),
        Text(
          time,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
