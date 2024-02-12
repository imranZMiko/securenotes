import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:securenotes/features/notes/controllers/note_editor_controller.dart';

/// Widget for the input field of a note in the note editor screen.
class NoteInputField extends StatelessWidget {
  const NoteInputField({super.key});

  @override
  Widget build(BuildContext context) {
    NoteEditorController controller = Get.find();
    return Obx(() => TextField(
          keyboardType: TextInputType.multiline,
          maxLines: null,
          controller: TextEditingController.fromValue(TextEditingValue(
            text: controller.content.value,
            selection: TextSelection.collapsed(
                offset: controller.content.value.length),
          )),
          decoration: const InputDecoration(
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            contentPadding: EdgeInsets.zero,
          ),
          onChanged: (value) => controller.updateContent(value),
        ));
  }
}
