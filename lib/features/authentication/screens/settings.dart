import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/authentication/controllers/settings_card_controller.dart';
import 'package:securenotes/features/authentication/widgets/settings_card.dart';
import 'package:securenotes/utils/constants/sizes.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put<SettingsCardController>(SettingsCardController());

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
