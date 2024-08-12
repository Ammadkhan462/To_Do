import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_ui/app/routes/app_pages.dart';


class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernamecontroller = TextEditingController();
  var usernaem = ''.obs; // Reactive email
  var password = ''.obs; // Reactive password
  var isFieldsFilled =
      false.obs; // Reactive boolean to check if fields are filled

  void loginWithEmailPassword() {
    if (formKey.currentState!.validate()) {
      Get.offNamed(Routes.HOME_NOT_EMPTY);

      //GetUtils.isEmail(emailController.text)
      // storage.write("email", emailController);
      // print(storage.read(
      //   "email",
      // ));
      // storage.listen(() {
      //   print("email");
      // });
      Get.snackbar('Success', 'Logged in successfully with email and password');
    } else {
      Get.snackbar('Failed', 'Provide the Valid Email Address',
          colorText: Colors.white,
          backgroundColor: Colors.red,
          snackPosition: SnackPosition.BOTTOM);
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
  }

  void updateButtonState() {
    isFieldsFilled.value = usernamecontroller.text.length > 6 &&
        passwordController.text.length > 6;
  }

}
