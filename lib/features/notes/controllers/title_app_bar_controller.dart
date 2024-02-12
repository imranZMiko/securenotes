import 'package:get/get.dart';

/// Controller for managing the title displayed in the app bar.
class TitleAppBarController extends GetxController {
  /// Observable title value.
  var title = 'Title'.obs;

  /// Update the title with a new value.
  void updateTitle(String newTitle) {
    title.value = newTitle;
  }
}
