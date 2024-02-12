import 'package:flutter/material.dart';

/// A custom widget for an authentication input field.
class AuthenticationField extends StatelessWidget {
  /// Constructor for AuthenticationField.
  const AuthenticationField({
    super.key,
    required this.labelText,
    required this.controller,
    this.isPassword = false,
    this.validator,
  });

  /// The text to display as a label for the input field.
  final String labelText;

  /// The controller for the input field.
  final TextEditingController controller;

  /// A flag to determine if the input should be obscured (e.g., for passwords).
  final bool isPassword;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: labelText,
      ),
      validator: validator,
    );
  }
}
