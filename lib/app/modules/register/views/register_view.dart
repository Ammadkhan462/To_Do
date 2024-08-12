import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todo_ui/app/modules/register/controllers/register_controller.dart';
import 'package:todo_ui/app/routes/app_pages.dart';
import 'package:todo_ui/commons/common_button.dart';
import 'package:todo_ui/commons/common_text.dart';
import 'package:todo_ui/commons/common_textfield.dart';
import 'package:todo_ui/commons/divider.dart';
import 'package:todo_ui/commons/validation.dart';
import 'package:todo_ui/constant/colors.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          leading: InkWell(
            child: Icon(Icons.arrow_back_ios_new_rounded),
            onTap: () {
              Get.toNamed(Routes.LOGIN);
            },
          ),
        ),
        body: Scaffold(
          body: GetBuilder<RegisterController>(
              init: RegisterController(),
              builder: (_) {
                return Form(
                  key: _.formkey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: CommonTextWidget(
                            text: 'Register',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ).marginOnly(bottom: 20),
                        ).marginAll(10),
                        commonTextField(
                          label: 'Username',
                          controller: _.usernamecontroller,
                          validator: validateName,
                          hintText: 'Enter your Username',
                        ).marginOnly(bottom: 15),
                        commonTextField(
                                label: 'Password',
                                controller: _.passwordController,
                                hintText: 'Enter your Username',
                                validator: validatepass,
                                isPassword: true)
                            .marginOnly(bottom: 15),
                        commonTextField(
                                label: 'Password',
                                isPassword: true,
                                controller: _.confirmPasswordcontroller,
                                hintText: 'Enter your Username',
                                validator: (val) => validateConfirmPassword(
                                    val, _.passwordController.text))
                            .marginOnly(bottom: 30),
                        Obx(
                          () => CommonButton(
                            text: 'Login',
                            action: () {
                              if (_.formkey.currentState!.validate()) {
                                _.SignupWithEmailPassword();
                              }
                            },
                            primary: _.isFieldsFilled.value
                                ? DarkThemeColors.buttonprimaryColor
                                : Colors
                                    .transparent, // Fallback color when fields are not filled
                          ).marginOnly(bottom: 0),
                        ),
                        // You can adjust the spacing as needed
                        dividerWithText(text: 'OR'),
                        SizedBox(height: 10),

                        CommonButton(
                          text: 'Login with Google',
                          iconAssetPath: 'assets/images/google.png',
                        ).marginOnly(bottom: 10),
                        CommonButton(
                          iconAssetPath: 'assets/images/apple.png',
                          text: 'Login with Apple',
                        ).marginOnly(bottom: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CommonTextWidget(
                              text: 'Don’t have an account? ',
                              fontSize: 16,
                            ),
                            InkWell(
                                onTap: () {
                                  Get.offAllNamed(Routes.LOGIN);
                                },
                                child: CommonTextWidget(
                                  text: 'Login',
                                  fontSize: 18,
                                ))
                          ],
                        ).marginOnly(
                            top: 5), // You can adjust the spacing as needed
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}
