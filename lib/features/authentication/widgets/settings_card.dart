import 'package:flutter/material.dart';
import 'package:securenotes/features/authentication/widgets/settings_card_fields.dart';
import 'package:securenotes/utils/constants/sizes.dart';

class SettingsCard extends StatefulWidget {
  const SettingsCard({super.key, required this.title});

  final String title;

  @override
  State<SettingsCard> createState() => _SettingsCardState();
}

class _SettingsCardState extends State<SettingsCard> {
  var isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isOpen = !isOpen;
            });
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Sizes.defaultSpace, vertical: Sizes.sm),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                isOpen ? Icon(Icons.arrow_drop_down) : Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
        AnimatedSize(
          duration: Duration(milliseconds: Sizes.animationDuration),
          curve: Curves.easeInOut,
          child: isOpen ? SettingsCardFields() : SizedBox(),
        )
      ],
    );
  }
}
