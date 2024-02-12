import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/notes/controllers/title_app_bar_controller.dart';

/// Widget for displaying the title app bar in the note editor screen.
class TitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  TitleAppBar({super.key});

  final TitleAppBarController controller = Get.find();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        title: Obx(
          () => TextField(
            controller: TextEditingController.fromValue(TextEditingValue(
              text: controller.title.value,
              selection: TextSelection.collapsed(
                  offset: controller.title.value.length),
            )),
            decoration: const InputDecoration(
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              contentPadding: EdgeInsets.zero,
            ),
            style: Theme.of(context).textTheme.headlineSmall,
            onChanged: (value) => controller.updateTitle(value),
          ),
        ),
      ),
    );
  }
}
