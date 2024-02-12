import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// SplashScreen widget displayed when the app is initializing
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  /// Initializes Firebase and checks user authentication status
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();

    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      Get.offNamed(
          '/notes'); // Navigate to notes screen if user is authenticated
    } else {
      Get.offNamed(
          '/login'); // Navigate to login screen if user is not authenticated
    }

    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        });
  }
}
