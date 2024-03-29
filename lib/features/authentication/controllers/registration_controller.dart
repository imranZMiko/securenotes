import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:securenotes/utils/helpers/helper_functions.dart';

/// Controller for handling user registration
class RegistrationController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  /// Registers a new user with the provided email and password
  ///
  /// Returns true if registration is successful, false otherwise
  Future<bool> registerUser(String email, String password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        HelperFunctions.showSnackBar(
            'An account already exists for that email.');
      }
      return false;
    } catch (e) {
      HelperFunctions.showSnackBar('An unknown error occurred.');
      return false;
    }
  }
}
