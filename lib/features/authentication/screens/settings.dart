import 'package:flutter/material.dart';
import 'package:securenotes/features/authentication/widgets/settings_card.dart';
import 'package:securenotes/utils/constants/sizes.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecureNotes'),
      ),
      body: SingleChildScrollView(
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
            SettingsCard(
              title: 'Change Username',
            ),
            SettingsCard(
              title: 'Change Password',
            ),
          ],
        ),
      ),
    );
  }
}
