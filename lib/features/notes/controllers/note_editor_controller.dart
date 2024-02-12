import 'package:get/get.dart';

/// Controller for managing the note editor.
class NoteEditorController extends GetxController {
  var content = ''.obs;

  /// Update the content of the note.
  void updateContent(String newTitle) {
    content.value = newTitle;
  }
}
