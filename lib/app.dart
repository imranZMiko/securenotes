import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/authentication/screens/login.dart';
import 'package:securenotes/features/authentication/screens/register.dart';
import 'package:securenotes/features/authentication/screens/settings.dart';
import 'package:securenotes/features/authentication/screens/splash.dart';
import 'package:securenotes/features/notes/screens/note_editor/note_editor.dart';
import 'package:securenotes/features/notes/screens/notes/notes.dart';
import 'package:securenotes/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  Future<User?> _checkAuthStatus() async {
    return FirebaseAuth.instance.authStateChanges().first;
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Secure Notes',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      defaultTransition: Transition.noTransition,
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => SplashScreen()),
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/register', page: () => RegisterScreen()),
        GetPage(name: '/notes', page: () => NotesScreen()),
        GetPage(name: '/note-editor', page: () => NoteEditorScreen()),
        GetPage(name: '/settings', page: () => AccountSettingsScreen()),
      ],
    );
  }
}
