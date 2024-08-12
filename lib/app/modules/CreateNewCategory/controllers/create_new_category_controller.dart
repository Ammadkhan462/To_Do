import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_ui/constant/colors.dart';

class CreateNewCategoryController extends GetxController {
  final TextEditingController creatcategorycontroller = TextEditingController();

  final count = 0.obs;
  
  // Define selectedIconData as Rx<IconData?> type
  Rx<IconData?> selectedIconData = Rx<IconData?>(null);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  static Color getRandomColor() {
    List<Color> colors = [
      CustomThemeColors.primaryColor,
      CustomThemeColors.lightPrimaryColor,
      CustomThemeColors.textColor,
      CustomThemeColors.secondaryTextColor,
      CustomThemeColors.hintTextColor,
      CustomThemeColors.outlinedTextFieldColor,
      CustomThemeColors.fillColor,
    ];
    int randomIndex = Random().nextInt(colors.length);
    return colors[randomIndex];
  }

  // Update selectIconData to set the value of selectedIconData
  void selectIconData(IconData iconData) {
    selectedIconData.value = iconData;
    Get.back(); 
  }
}
