import 'package:flutter/material.dart';
import 'package:todo_ui/commons/validation.dart';
import 'package:get/get.dart';
import 'package:todo_ui/app/routes/app_pages.dart';
import 'package:todo_ui/commons/common_button.dart';
import 'package:todo_ui/commons/common_text.dart';
import 'package:todo_ui/commons/common_textfield.dart';
import 'package:todo_ui/commons/divider.dart';
import 'package:todo_ui/constant/colors.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          leading: InkWell(
            child: const Icon(Icons.arrow_back_ios_new_rounded),
            onTap: () {
              Get.toNamed(Routes.REGISTER);
            },
          ),
        ),
        body: Scaffold(
          body: GetBuilder<LoginController>(
              init: LoginController(),
              builder: (_) {
                return Form(
                  key: _.formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: const CommonTextWidget(
                            text: 'Login',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ).marginOnly(bottom: 30),
                        ).marginAll(10),
                        commonTextField(
                                label: 'Username',
                                controller: _.usernamecontroller,
                                hintText: 'Enter your Username',
                                validator: validateName)
                            .marginOnly(bottom: 20),
                        commonTextField(
                                label: 'Password',
                                controller: _.passwordController,
                                hintText: 'Password field',
                                validator: validatepass,
                                isPassword: true)
                            .marginOnly(bottom: 60),

                        Obx(
                          () => CommonButton(
                            text: 'Login',
                            action: () {
                              if (_.formKey.currentState!.validate()) {
                                _.loginWithEmailPassword();
                              }
                            },
                            primary: _.isFieldsFilled.value
                                ? DarkThemeColors.buttonprimaryColor
                                : Colors
                                    .transparent, // Fallback color when fields are not filled
                          ).marginOnly(bottom: 40),
                        ),
                        // You can adjust the spacing as needed
                        dividerWithText(text: 'OR'),
                        const SizedBox(height: 20),

                        CommonButton(
                          text: 'Login with Google',
                          iconAssetPath: 'assets/images/google.png',
                        ).marginOnly(bottom: 10),
                        CommonButton(
                          iconAssetPath: 'assets/images/apple.png',
                          text: 'Login with Apple',
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CommonTextWidget(
                              text: 'Don’t have an account? ',
                              fontSize: 16,
                            ),
                            InkWell(
                                onTap: () {
                                  Get.offAllNamed(Routes.REGISTER);
                                },
                                child: const CommonTextWidget(
                                  text: 'Register',
                                  fontSize: 18,
                                ))
                          ],
                        ).marginAll(5),

                        // You can adjust the spacing as needed
                      ],
                    ),
                  ),
                );
              }),
        ));
  }
}
