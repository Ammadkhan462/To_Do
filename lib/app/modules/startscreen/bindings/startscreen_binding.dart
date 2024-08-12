import 'package:get/get.dart';

import '../controllers/startscreen_controller.dart';

class StartscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StartscreenController>(
      () => StartscreenController(),
    );
  }
}
