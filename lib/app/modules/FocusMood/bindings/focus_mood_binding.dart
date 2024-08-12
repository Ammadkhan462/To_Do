import 'package:get/get.dart';

import '../controllers/focus_mood_controller.dart';

class FocusMoodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FocusMoodController>(
      () => FocusMoodController(),
    );
  }
}
