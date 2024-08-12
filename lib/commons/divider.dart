import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget dividerWithText({
  required String text,
  Color lineColor = Colors.white,
  Color textColor = Colors.white,
}) {
  return Row(
    children: <Widget>[
      Expanded(
        child: Divider(
          color: lineColor,
          thickness: 2,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
      Expanded(
        child: Divider(
          color: lineColor,
          thickness: 2,
        ),
      ),
    ],
  ).marginAll(25);
}
