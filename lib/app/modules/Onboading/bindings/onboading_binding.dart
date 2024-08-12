import 'package:get/get.dart';

import '../controllers/onboading_controller.dart';

class OnboadingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboadingController>(
      () => OnboadingController(),
    );
  }
}
