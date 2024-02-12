// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDOUMuJnGvZhyaBW7_OPoAxvBg523zUX8I',
    appId: '1:1040862733222:web:58b49e7a0a94847fa4a567',
    messagingSenderId: '1040862733222',
    projectId: 'notes-9203c',
    authDomain: 'notes-9203c.firebaseapp.com',
    storageBucket: 'notes-9203c.appspot.com',
    measurementId: 'G-21BW446QMB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBjTnp6WK9VQfj6xskKLg1EyXKv175zNjE',
    appId: '1:1040862733222:android:8716428b3a84886fa4a567',
    messagingSenderId: '1040862733222',
    projectId: 'notes-9203c',
    storageBucket: 'notes-9203c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA5Qan_w21at5RrYgRqNrTg-eCRBkMT2eM',
    appId: '1:1040862733222:ios:990e9dbcd493177ea4a567',
    messagingSenderId: '1040862733222',
    projectId: 'notes-9203c',
    storageBucket: 'notes-9203c.appspot.com',
    iosBundleId: 'com.example.securenotes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA5Qan_w21at5RrYgRqNrTg-eCRBkMT2eM',
    appId: '1:1040862733222:ios:e55da600e054e35fa4a567',
    messagingSenderId: '1040862733222',
    projectId: 'notes-9203c',
    storageBucket: 'notes-9203c.appspot.com',
    iosBundleId: 'com.example.securenotes.RunnerTests',
  );
}
