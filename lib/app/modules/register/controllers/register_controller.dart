import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_ui/app/routes/app_pages.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController
  final formkey = GlobalKey<FormState>();

  final TextEditingController usernamecontroller = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordcontroller =
      TextEditingController();
  var usernaem = ''.obs; // Reactive email
  var password = ''.obs;
  // Reactive password
  var confirmpassword = ''.obs;

  var isFieldsFilled = false.obs;
  final count = 0.obs;
  void SignupWithEmailPassword() {
    if (formkey.currentState!.validate()) {
      Get.offNamed(Routes.HOME_SCREEN);

      Get.snackbar('Success', 'Logged in successfully with email and password');
    }
  }

  @override
  void onInit() {
    super.onInit();
    usernamecontroller.addListener(() {
      usernaem.value = usernamecontroller.text;
      updateButtonState();
    });
    passwordController.addListener(() {
      password.value = passwordController.text;
      updateButtonState();
    });
    confirmPasswordcontroller.addListener(() {
      confirmpassword.value = confirmPasswordcontroller.text;
      updateButtonState();
    });
  }

  void updateButtonState() {
    isFieldsFilled.value = usernamecontroller.text.length > 6 &&
        passwordController.text.length > 6 &&
        confirmPasswordcontroller.text.length > 6;
  }
}
