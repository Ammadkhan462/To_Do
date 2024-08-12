import 'package:get/get.dart';

import '../controllers/home_not_empty_controller.dart';

class HomeNotEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeNotEmptyController>(
      () => HomeNotEmptyController(),
    );
  }
}
