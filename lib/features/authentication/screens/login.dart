import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/common/widgets/icon_large.dart';
import 'package:securenotes/features/authentication/controllers/login_controller.dart';
import 'package:securenotes/features/authentication/widgets/authentication_button.dart';
import 'package:securenotes/features/authentication/widgets/authentication_field.dart';
import 'package:securenotes/features/authentication/widgets/switch_auth_section_button.dart';
import 'package:securenotes/utils/validators/validation.dart';

import '../../../utils/constants/sizes.dart';

/// Screen for user login
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: loginController.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const IconLarge(),
                  Text(
                    "SecureNotes",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: Sizes.spaceBtwSections),
                  AuthenticationField(
                    labelText: "E-mail",
                    controller: loginController.emailController,
                    validator: Validator.validateEmail,
                  ),
                  const SizedBox(height: Sizes.spaceBtwInputFields),
                  AuthenticationField(
                    labelText: "Password",
                    controller: loginController.passwordController,
                    isPassword: true,
                    validator: Validator.validatePassword,
                  ),
                  const SizedBox(height: Sizes.spaceBtwSections),
                  AuthenticationButton(
                    labelText: "Log In",
                    onPressed: () async {
                      if (loginController.formKey.currentState!.validate()) {
                        var success = await loginController.signInUser(
                          loginController.emailController.text,
                          loginController.passwordController.text,
                        );
                        if (success) {
                          Get.offNamed("/notes");
                        }
                      }
                    },
                  ),
                  SwitchAuthSectionButton(
                    buttonText: "Don't have an account? Register",
                    onPressed: () {
                      Get.offNamed("/register");
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
