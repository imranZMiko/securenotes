import 'package:flutter/material.dart';

class EditCategoriesDialog extends StatelessWidget {
  const EditCategoriesDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Edit Categories',
              textAlign: TextAlign.center,
              style: TextStyle().copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SimpleDialogOption(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  SizedBox(width: 12),
                  Text('Option 1')
                ],
              ),
            ),
            SimpleDialogOption(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  SizedBox(width: 12),
                  Text('Option 2')
                ],
              ),
            ),
            SimpleDialogOption(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.check_box_outline_blank),
                  SizedBox(width: 12),
                  Text('Option 3')
                ],
              ),
            ),
            SimpleDialogOption(
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 12),
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
