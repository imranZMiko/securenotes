import 'package:flutter/material.dart';
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
                horizontal: Sizes.defaultSpace, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    style: TextStyle().copyWith(
                      fontSize: 18,
                    ),
                  ),
                ),
                isOpen ? Icon(Icons.arrow_drop_down) : Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
        AnimatedSize(
          duration: Duration(milliseconds: 150),
          curve: Curves.easeInOut,
          child: isOpen ? _buildInnerColumn() : SizedBox(),
        )
      ],
    );
  }
}

Widget _buildInnerColumn() {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Sizes.defaultSpace,
          vertical: 10,
        ),
        child: TextField(
          decoration: InputDecoration(
            label: Text("Username"),
          ),
        ),
      ),
      TextButton(
        onPressed: () {},
        child: const Text("Confirm"),
      ),
      SizedBox(height: 10),
    ],
  );
}
