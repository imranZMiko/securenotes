import 'package:flutter/material.dart';
import 'package:securenotes/utils/constants/sizes.dart';

/// Widget for displaying a colored bar at the leading edge of a card.
class LeadingColorBar extends StatelessWidget {
  final Color color;

  /// Constructor for LeadingColorBar.
  const LeadingColorBar({Key? key, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.md,
      height: Sizes.noteCardHeight,
      child: Container(
        color: color,
      ),
    );
  }
}
