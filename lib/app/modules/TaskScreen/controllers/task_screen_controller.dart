import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskScreenController extends GetxController {
  //TODO: Implement TaskScreenController
late TextEditingController taskTitleController;
  late TextEditingController taskDescriptionController;
  var selectedPriority =
      0.obs; // Observable to keep track of the selected priority

  @override
  void onInit() {
    super.onInit();
    taskTitleController = TextEditingController();
    taskDescriptionController = TextEditingController();
  }

  @override
  void onClose() {
    taskTitleController.dispose();
    taskDescriptionController.dispose();
    super.onClose();
  }

  // Call this method when a priority box is tapped
  void selectPriority(int priority) {
    selectedPriority.value = priority;
  }

}
