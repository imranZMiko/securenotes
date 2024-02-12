import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/common/widgets/icon_large.dart';
import 'package:securenotes/features/authentication/controllers/login_controller.dart';
import 'package:securenotes/features/authentication/widgets/authentication_button.dart';
import 'package:securenotes/features/authentication/widgets/authentication_field.dart';
import 'package:securenotes/features/authentication/widgets/switch_auth_section_button.dart';
import 'package:securenotes/features/notes/screens/notes/notes.dart';
import 'package:securenotes/utils/validators/validation.dart';

import '../../../utils/constants/sizes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      Get.offNamed('/notes');
    } else {
      Get.offNamed('/login');
    }

    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        });
  }
}
