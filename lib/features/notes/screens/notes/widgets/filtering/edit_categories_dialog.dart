import 'package:flutter/material.dart';
import 'package:securenotes/utils/constants/colors.dart';
import 'package:securenotes/utils/constants/sizes.dart';
import 'package:securenotes/utils/helpers/helper_functions.dart';

class EditCategoriesDialog extends StatelessWidget {
  const EditCategoriesDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.borderRadiusMd),
      ),
      elevation: 0,
      backgroundColor: HelperFunctions.isDarkMode(context)
          ? CustomColors.darkerGrey
          : CustomColors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, Sizes.md, 0, Sizes.md),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Edit Categories',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(
              height: Sizes.md,
            ),
            SimpleDialogOption(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  SizedBox(width: Sizes.md),
                  Text('Option 1')
                ],
              ),
            ),
            SimpleDialogOption(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  SizedBox(width: Sizes.md),
                  Text('Option 2')
                ],
              ),
            ),
            SimpleDialogOption(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  SizedBox(width: Sizes.md),
                  Text('Option 3')
                ],
              ),
            ),
            SimpleDialogOption(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.add),
                  SizedBox(width: Sizes.md),
                  Text('Add a new Category')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
