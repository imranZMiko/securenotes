import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/utils/constants/sizes.dart';

/// Widget for displaying a logout card.
class LogoutCard extends StatelessWidget {
  final String title;

  /// Constructor for LogoutCard.
  const LogoutCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await FirebaseAuth.instance.signOut();
        Get.offNamed('/splash');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.defaultSpace,
          vertical: Sizes.sm,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
