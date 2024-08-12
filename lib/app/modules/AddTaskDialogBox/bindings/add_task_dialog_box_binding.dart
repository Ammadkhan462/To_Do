import 'package:get/get.dart';

import '../controllers/add_task_dialog_box_controller.dart';

class AddTaskDialogBoxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddTaskDialogBoxController>(
      () => AddTaskDialogBoxController(),
    );
  }
}
