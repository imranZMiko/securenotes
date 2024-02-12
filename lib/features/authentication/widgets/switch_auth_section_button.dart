import 'package:flutter/material.dart';

class SwitchAuthSectionButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const SwitchAuthSectionButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}
