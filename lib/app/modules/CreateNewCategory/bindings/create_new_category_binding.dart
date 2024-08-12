import 'package:get/get.dart';

import '../controllers/create_new_category_controller.dart';

class CreateNewCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateNewCategoryController>(
      () => CreateNewCategoryController(),
    );
  }
}
