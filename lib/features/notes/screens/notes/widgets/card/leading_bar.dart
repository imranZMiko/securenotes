import 'package:flutter/material.dart';
import 'package:securenotes/utils/constants/sizes.dart';

class LeadingColorBar extends StatelessWidget {
  final Color color;
  const LeadingColorBar({Key? key, required this.color}) : super(key: key);

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
