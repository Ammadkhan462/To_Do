import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:todo_ui/commons/common_button.dart';
import 'package:todo_ui/commons/common_text.dart';
import 'package:todo_ui/commons/profilecommontile.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          CommonTextWidget(
            text: 'Profile',
            fontSize: 20,
          ).marginOnly(
            top: 40,
            bottom: 20,
          ),
          CircleAvatar(
            minRadius: 25,
            maxRadius: 35,

            //backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/images/Maskgroup.png'),
          ),
          CommonTextWidget(
            text: 'Martha Hays',
            fontWeight: FontWeight.normal,
            fontSize: 22,
          ).marginOnly(
            top: 15,
            bottom: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonButton(
                text: '10 Task left',
                Width: 150,
                isborder: true,
                fontsizee: 17,
              ),
              CommonButton(
                text: '5 Task done',
                Width: 150,
                isborder: true,
                fontsizee: 17,
              ).marginOnly(left: 20),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: CommonTextWidget(
              text: 'Settings',
              color: Colors.grey[500],
              fontSize: 13,
            ),
          ).marginOnly(
            top: 20,
            left: 20,
          ),
          ProfileCommonTile(
            icon: Icons.person,
            title: 'Account',
          ).marginOnly(top: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: CommonTextWidget(
              text: 'Account',
              color: Colors.grey[500],
              fontSize: 13,
            ),
          ).marginOnly(
            top: 20,
            left: 20,
          ),
        ],
      ),
    ));
  }
}
