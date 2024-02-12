import 'package:flutter/material.dart';
import 'package:securenotes/features/authentication/widgets/authentication_button.dart';
import 'package:securenotes/utils/constants/sizes.dart';

class SettingsCardFields extends StatelessWidget {
  const SettingsCardFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.defaultSpace,
            vertical: Sizes.sm,
          ),
          child: TextField(
            decoration: InputDecoration(
              label: Text("Username"),
            ),
          ),
        ),
        AuthenticationButton(
          onPressed: () {},
          labelText: "Confirm",
        ),
        SizedBox(height: Sizes.sm),
      ],
    );
  }
}
