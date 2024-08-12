import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todo_ui/app/routes/app_pages.dart';
import 'package:todo_ui/commons/common_button.dart';
import 'package:todo_ui/commons/common_text.dart';
import 'package:todo_ui/constant/colors.dart';

import '../controllers/startscreen_controller.dart';

class StartscreenView extends GetView<StartscreenController> {
  const StartscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          leading: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.center,
              child: CommonTextWidget(
                text: 'Welcome to UpTodo',
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ).marginOnly(bottom: 20),
            Align(
              alignment: Alignment.center,
              child: const CommonTextWidget(
                text:
                    'Please login to your account or create new account to continue',
                fontSize: 16,
                textAlign: TextAlign.center,
              ).paddingAll(10),
            ).marginOnly(bottom: 350),
            CommonButton(
              text: 'LOGIN ',
              height: 50,
              
              action: () => Get.toNamed(Routes.LOGIN),
              primary: DarkThemeColors.buttonprimaryColor,
            ).marginOnly(bottom: 20),
            CommonButton(
                    height: 50,
                    text: "Create account",
                    action: () => Get.offAll(Routes.REGISTER))
                .marginOnly(bottom: 20),
          ],
        ));
  }
}
