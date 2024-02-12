import 'package:flutter/material.dart';
import 'package:securenotes/features/authentication/widgets/logout_card.dart';
import 'package:securenotes/utils/constants/sizes.dart';

/// Screen for managing account settings
class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecureNotes'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: Sizes.spaceBtwItems,
                horizontal: Sizes.defaultSpace,
              ),
              child: Text('Account Settings'),
            ),
            LogoutCard(
              title: 'Log Out',
            ),
          ],
        ),
      ),
    );
  }
}
