import 'package:get/get.dart';

class NoteEditorController extends GetxController {
  var content = ''.obs;

  void updateContent(String newTitle) {
    content.value = newTitle;
  }
}
