import 'package:flutter/material.dart';

class AuthenticationField extends StatelessWidget {
  const AuthenticationField({
    super.key,
    required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        label: Text(labelText),
      ),
    );
  }
}
