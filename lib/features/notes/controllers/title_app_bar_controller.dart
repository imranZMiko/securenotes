import 'package:get/get.dart';

class TitleAppBarController extends GetxController {
  var title = 'Title'.obs;

  void updateTitle(String newTitle) {
    title.value = newTitle;
  }
}
