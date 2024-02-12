import 'package:flutter/material.dart';

class AuthenticationField extends StatelessWidget {
  const AuthenticationField({
    super.key,
    required this.labelText,
    required this.controller,
    this.isPassword = false,
    this.validator,
  });

  final String labelText;
  final TextEditingController controller;
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
