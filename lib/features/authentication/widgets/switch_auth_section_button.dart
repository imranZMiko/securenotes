import 'package:flutter/material.dart';

/// Widget for a button that switches authentication sections.
class SwitchAuthSectionButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  /// Constructor for SwitchAuthSectionButton.
  const SwitchAuthSectionButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}
