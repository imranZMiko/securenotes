import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/common/widgets/icon_large.dart';
import 'package:securenotes/features/authentication/widgets/authentication_button.dart';
import 'package:securenotes/features/authentication/widgets/authentication_field.dart';
import 'package:securenotes/features/notes/screens/notes/notes.dart';

import '../../../utils/constants/sizes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                AuthenticationField(labelText: 'E-mail'),
                const SizedBox(height: Sizes.spaceBtwInputFields),
                AuthenticationField(labelText: 'Username'),
                const SizedBox(height: Sizes.spaceBtwInputFields),
                AuthenticationField(labelText: 'Password'),
                const SizedBox(height: Sizes.spaceBtwInputFields),
                AuthenticationField(labelText: 'Confirm Password'),
                const SizedBox(height: Sizes.spaceBtwSections),
                AuthenticationButton(
                  labelText: 'Register',
                  onPressed: () {
                    Get.offNamed("/notes");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
