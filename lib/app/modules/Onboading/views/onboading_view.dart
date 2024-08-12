import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

import 'package:get/get.dart';
import 'package:todo_ui/app/modules/Onboading/controllers/onboading_controller.dart';
import 'package:todo_ui/app/routes/app_pages.dart';

class OnboadingView extends GetView<OnboadingController> {
  const OnboadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingSlider(
        indicatorAbove: true,
        indicatorPosition: 180,
        headerBackgroundColor: Colors.transparent,
        finishButtonText: 'Register',
        centerBackground: true,
        hasFloatingButton: true,
        hasSkip: true,
        onFinish: () {
          Get.offNamed(Routes.STARTSCREEN);
        },
        finishButtonStyle:
            FinishButtonStyle(backgroundColor: Color(0xFF8875FF)),
        skipTextButton: Text(
          'Skip',
          style: TextStyle(color: Colors.grey[500]),
        ),
        trailing: Text('Login', style: TextStyle(color: Colors.grey[500])),
        background: [
          Image.asset('assets/images/Frame1.png'),
          Image.asset('assets/images/Frame2.png'),
          Image.asset('assets/images/Frame3.png'),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 400,
                ),
                Text(
                  'Manage your tasks',
                  style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ).marginOnly(bottom: 30),
                Text(
                  'You can easily manage all of your daily tasks in DoMe for free',
                  style: TextStyle(fontFamily: 'Lato', fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(children: <Widget>[
              SizedBox(
                height: 400,
              ),
              Text(
                'Create daily routine',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ).marginOnly(bottom: 30),
              Text(
                'In Uptodo  you can create your personalized routine to stay productive',
                style: TextStyle(fontFamily: 'Lato', fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ]),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 400,
                ),
                Text(
                  'Orgonaize your tasks',
                  style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ).marginOnly(bottom: 30),
                Text(
                  'You can organize your daily tasks by adding your tasks into separate categories',
                  style: TextStyle(fontFamily: 'Lato', fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
