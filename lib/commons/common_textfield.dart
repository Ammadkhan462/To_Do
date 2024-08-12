import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_ui/commons/common_text.dart';
import 'package:todo_ui/constant/colors.dart';

Widget commonTextField({
  String? label,
  required String hintText,
  required TextEditingController controller,
  IconData? icon,
  double width = 325,
  bool isPassword = false,
  String? Function(String?)? validator,
}) {
  String displayedHintText = isPassword ? "••••••••" : hintText;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CommonTextWidget(text: label!).marginOnly(left: 25),
      const SizedBox(height: 8), // Space between label and text field
      Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: width,
          child: TextFormField(
            controller: controller,
            obscureText: isPassword,
            style: const TextStyle(
                color: DarkThemeColors.buttonprimaryColor, fontSize: 20),
            validator: validator,
            decoration: InputDecoration(
              hintText: displayedHintText,
              hintStyle: const TextStyle(
                  color: DarkThemeColors.hinttextcolor, fontSize: 20),
              prefixIcon: icon != null
                  ? Icon(icon, color: DarkThemeColors.buttonprimaryColor)
                  : null,
              filled: true,
              fillColor: DarkThemeColors.fillcolor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: 
                    const BorderSide(color: DarkThemeColors.outlinedtextfield),
              ),
              focusedBorder: OutlineInputBorder(
                // This is where you define the active border color
                borderRadius: BorderRadius.circular(6.0),
                borderSide: const BorderSide(
                    color: DarkThemeColors
                        .buttonprimaryColor), // Replace with actual color
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
