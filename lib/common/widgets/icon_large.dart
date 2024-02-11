import 'package:flutter/material.dart';
import 'package:securenotes/utils/constants/sizes.dart';

class IconLarge extends StatelessWidget {
  const IconLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.event_note,
      size: Sizes.iconXxl,
    );
  }
}
