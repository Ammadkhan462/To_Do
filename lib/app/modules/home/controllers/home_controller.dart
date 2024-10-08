import 'package:get/get.dart';
import 'package:todo_ui/app/modules/intro/controllers/intro_controller.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final introController = Get.find<IntroController>();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  void increment() {
    count.value++;
    update();
  }
}
