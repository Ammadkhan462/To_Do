// splash_screen_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:todo_ui/app/routes/app_pages.dart';
  
class IntroController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // The duration of the animation
    );

    animation = Tween<double>(begin: 0.0, end: 1.0).animate(animationController)
      ..addListener(() {
        update();
      });

    animationController.forward();

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Get.offAllNamed(Routes.ONBOADING);
      }
    });
  }

}
