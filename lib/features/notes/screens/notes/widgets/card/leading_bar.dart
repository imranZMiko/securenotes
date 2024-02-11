import 'package:flutter/material.dart';

class LeadingColorBar extends StatelessWidget {
  final Color color;
  const LeadingColorBar({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 18,
      height: 90,
      child: Container(
        color: color,
      ),
    );
  }
}
