import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/authentication/widgets/settings_card_fields.dart';
import 'package:securenotes/features/authentication/controllers/settings_card_controller.dart';
import 'package:securenotes/utils/constants/sizes.dart';

class LogoutCard extends StatelessWidget {
  final String title;

  const LogoutCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await FirebaseAuth.instance.signOut();
        Get.offNamed('/splash');
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
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
