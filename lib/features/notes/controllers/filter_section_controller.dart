import 'package:get/get.dart';

class FilterSectionController extends GetxController {
  var selectedIndexes = <String, RxInt>{}.obs;

  void selectIndex(String sectionKey, int index) {
    if (!selectedIndexes.containsKey(sectionKey)) {
      selectedIndexes[sectionKey] = 0.obs;
    }
    selectedIndexes[sectionKey]!.value = index;
  }

  int selectedIndex(String sectionKey) {
    return selectedIndexes[sectionKey]?.value ?? 0;
  }
}
