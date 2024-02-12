import 'package:flutter/material.dart';

/// A custom button widget for authentication purposes.
class AuthenticationButton extends StatelessWidget {
  /// Constructor for AuthenticationButton.
  const AuthenticationButton({
    super.key,
    required this.labelText,
    required this.onPressed,
  });

  /// The text displayed on the button.
  final String labelText;

  /// The function called when the button is pressed.
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(labelText),
    );
  }
}
