import 'package:get/get.dart';

import '../controllers/task_screen_controller.dart';

class TaskScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskScreenController>(
      () => TaskScreenController(),
    );
  }
}
