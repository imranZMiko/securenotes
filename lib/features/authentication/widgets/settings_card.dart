import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/authentication/widgets/settings_card_fields.dart';
import 'package:securenotes/features/authentication/controllers/settings_card_controller.dart';
import 'package:securenotes/utils/constants/sizes.dart';

class SettingsCard extends StatelessWidget {
  final String title;

  const SettingsCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SettingsCardController controller =
        Get.find<SettingsCardController>();

    return Column(
      children: [
        InkWell(
          onTap: () => controller.toggle(title),
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
                Obx(
                  () => controller.isOpen(title)
                      ? Icon(Icons.arrow_drop_down)
                      : Icon(Icons.arrow_right),
                ),
              ],
            ),
          ),
        ),
        Obx(
          () => AnimatedSize(
            duration: Duration(milliseconds: Sizes.animationDurationSm),
            curve: Curves.easeInOut,
            child: controller.isOpen(title) ? SettingsCardFields() : SizedBox(),
          ),
        ),
      ],
    );
  }
}
