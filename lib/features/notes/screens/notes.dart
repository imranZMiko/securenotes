import 'package:flutter/material.dart';
import 'package:securenotes/utils/constants/colors.dart';

import '../../../../utils/constants/sizes.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecureNotes'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Add your search functionality here
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Add your settings functionality here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          HorizontalPillList(items: [
            "All",
            "Study",
            "Home",
            "Home",
            "Home",
            "Home",
          ])
        ],
      ),
    );
  }
}
