import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/common/widgets/icon_large.dart';
import 'package:securenotes/features/authentication/controllers/registration_controller.dart';
import 'package:securenotes/features/authentication/widgets/authentication_button.dart';
import 'package:securenotes/features/authentication/widgets/authentication_field.dart';
import 'package:securenotes/features/authentication/widgets/switch_auth_section_button.dart';
import 'package:securenotes/features/notes/screens/notes/notes.dart';
import 'package:securenotes/utils/validators/validation.dart';

import '../../../utils/constants/sizes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final RegistrationController registrationController =
        Get.put(RegistrationController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: registrationController.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconLarge(),
                  Text(
                    "SecureNotes",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: Sizes.spaceBtwSections),
                  AuthenticationField(
                    labelText: 'E-mail',
                    controller: registrationController.emailController,
                    validator: Validator.validateEmail,
                  ),
                  const SizedBox(height: Sizes.spaceBtwInputFields),
                  AuthenticationField(
                    labelText: 'Username',
                    controller: registrationController.usernameController,
                  ),
                  const SizedBox(height: Sizes.spaceBtwInputFields),
                  AuthenticationField(
                    labelText: 'Password',
                    controller: registrationController.passwordController,
                    isPassword: true,
                    validator: (data) {
                      if (data !=
                          registrationController
                              .confirmPasswordController.text) {
                        return "Passwords do not match";
                      }
                      return Validator.validatePassword(data);
                    },
                  ),
                  const SizedBox(height: Sizes.spaceBtwInputFields),
                  AuthenticationField(
                    labelText: 'Confirm Password',
                    controller:
                        registrationController.confirmPasswordController,
                    isPassword: true,
                    validator: (data) {
                      if (data !=
                          registrationController.passwordController.text) {
                        return "Passwords do not match";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: Sizes.spaceBtwSections),
                  AuthenticationButton(
                    labelText: 'Register',
                    onPressed: () async {
                      if (registrationController.formKey.currentState!
                          .validate()) {
                        print(registrationController.emailController.text);
                        var success = await registrationController.registerUser(
                          registrationController.emailController.text,
                          registrationController.passwordController.text,
                        );
                        if (success) {
                          Get.offNamed("/notes");
                        }
                      }
                    },
                  ),
                  SwitchAuthSectionButton(
                    buttonText: "Already have an account? Login",
                    onPressed: () {
                      Get.offNamed("/login");
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
