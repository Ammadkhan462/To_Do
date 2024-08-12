import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_ui/commons/common_text.dart';

class ProfileCommonTile extends StatelessWidget {
  final String title;
  final IconData icon;
  const ProfileCommonTile({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      child: Row(
        children: [
          Icon(icon).marginOnly(right: 18),
          CommonTextWidget(
                  text: title, fontSize: 18, fontWeight: FontWeight.w500)
              .marginOnly(right: 190),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 22,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
