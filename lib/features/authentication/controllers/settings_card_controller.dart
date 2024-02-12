import 'package:get/get.dart';

class SettingsCardController extends GetxController {
  var openedCards = <String, RxBool>{}.obs;

  void toggle(String cardKey) {
    if (!openedCards.containsKey(cardKey)) {
      openedCards[cardKey] = false.obs;
    }
    openedCards[cardKey]!.value = !openedCards[cardKey]!.value;
  }

  bool isOpen(String cardKey) {
    return openedCards[cardKey]?.value ?? false;
  }
}
