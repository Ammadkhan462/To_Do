import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:neon_circular_timer/neon_circular_timer.dart';

class FocusMoodController extends GetxController {
  TextEditingController usernamecontroller = TextEditingController();
  final reset = CountDownController();
  String t1 = 'fdf';
  String t2 = 'sdsd';

  var isonTap = false.obs;
  void onpressed() {
    if (isonTap.value) {
      reset.pause();
    } else {
      reset.restart();
    }

    // Toggle the boolean value
    isonTap.value = !isonTap.value;
  }

  //GetUtils.isEmail(emailController.text)
  // storage.write("email", emailController);
  // print(storage.read(
  //   "email",
  // ));
  // storage.listen(() {
  //   print("email");
  // });

  void onInit() {
    super.onInit();
  }

  void updateButtonState() {}
}
