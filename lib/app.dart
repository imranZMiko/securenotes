import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/authentication/screens/login.dart';
import 'package:securenotes/features/authentication/screens/register.dart';
import 'package:securenotes/features/authentication/screens/settings.dart';
import 'package:securenotes/features/notes/screens/note_editor/note_editor.dart';
import 'package:securenotes/features/notes/screens/notes/notes.dart';
import 'package:securenotes/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Secure Notes',
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const LoginScreen(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginScreen()),
        GetPage(name: '/register', page: () => RegisterScreen()),
        GetPage(name: '/notes', page: () => NotesScreen()),
        GetPage(name: '/note-editor', page: () => NoteEditorScreen()),
        GetPage(name: '/settings', page: () => AccountSettingsScreen()),
      ],
    );
  }
}
