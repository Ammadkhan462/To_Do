import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_ui/commons/common_text.dart';

class CommonTilesSocialWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  CommonTilesSocialWidget(
      {required this.title, required this.subtitle, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[800],
        ),
        height: 60,
        width: 330,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(width: 35, height: 35, child: Image.asset(image))
                .marginAll(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonTextWidget(
                  text: title,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.start,
                ).marginOnly(top: 5),
                CommonTextWidget(
                  fontSize: 13,
                  text: subtitle,
                  fontWeight: FontWeight.normal,
                  textAlign: TextAlign.start,
                ).marginOnly(top: 10),
              ],
            ).paddingOnly(right: 10),
            SizedBox(
                    height: 40,
                    child: VerticalDivider(
                        width: 2, thickness: 2, color: Colors.grey[400]))
                .marginOnly(right: 5),
            Icon(
              Icons.error_outline_rounded,
              color: const Color.fromRGBO(224, 224, 224, 1),
              size: 30,
            ).marginOnly(right: 15),
          ],
        ));
  }
}
