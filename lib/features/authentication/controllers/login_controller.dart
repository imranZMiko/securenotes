import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:securenotes/utils/helpers/helper_functions.dart';

/// Controller for handling user authentication
class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  /// Sign in user with provided email and password
  Future<bool> signInUser(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        HelperFunctions.showSnackBar('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        HelperFunctions.showSnackBar('Wrong password provided for that user.');
      }
      return false;
    } catch (e) {
      HelperFunctions.showSnackBar('An unknown error occurred.');
      return false;
    }
  }
}
