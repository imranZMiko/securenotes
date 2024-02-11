import 'package:flutter/material.dart';
import 'package:securenotes/common/widgets/icon_large.dart';
import 'package:securenotes/features/authentication/widgets/authentication_button.dart';
import 'package:securenotes/features/authentication/widgets/authentication_field.dart';

import '../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconLarge(),
                Text(
                  "SecureNotes",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: Sizes.spaceBtwSections),
                AuthenticationField(labelText: "Username"),
                const SizedBox(height: Sizes.spaceBtwInputFields),
                AuthenticationField(labelText: "Password"),
                const SizedBox(height: Sizes.spaceBtwSections),
                AuthenticationButton(labelText: "Log In"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
