import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_ui/commons/common_text.dart';
import 'package:todo_ui/constant/colors.dart';

class CommonButton extends StatelessWidget {
  final String? text;
  final Rx<IconData?>? selectedIconData; // Change to Rx<IconData?>
  final bool? isborder;
  final Color? bordercolors;
  final double? Width;
  final double? borderradius;
  final double? fontsizee;
  final VoidCallback? action;
  final Color? primary;
  final double? height;
  final Color? textColor;
  final Color? shadowColor;
  final String? iconAssetPath;
  final IconData? iconData;

  CommonButton({
    this.Width,
    this.height,
    this.selectedIconData, // Require Rx<IconData?>
    this.text,
    this.action,
    this.borderradius,
    this.isborder = false,
    this.bordercolors,
    this.fontsizee,
    this.iconData,
    this.primary = Colors.transparent,
    this.textColor = Colors.white,
    this.shadowColor = Colors.transparent,
    this.iconAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> buttonChildren = [];

    if (iconData != null) {
      buttonChildren.add(Icon(
        iconData,
        color: textColor,
      ).marginOnly(left: 3));
      buttonChildren.add(SizedBox(width: 1));
    } else if (iconAssetPath != null) {
      buttonChildren.add(Image.asset(iconAssetPath!).marginAll(10));
      buttonChildren.add(SizedBox(width: 8));
    } else if (selectedIconData?.value != null) {
      // Access value directly
      buttonChildren.add(
        Icon(
          selectedIconData?.value!, // Access value directly
          color: textColor,
        ),
      );
    }

    if (selectedIconData?.value == null) {
      // Access value directly
      buttonChildren.add(
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: CommonTextWidget(
              text: text ?? 'Button',
              color: textColor ?? Colors.white,
              fontSize: fontsizee ?? 20,
            ).marginAll(5),
          ),
        ),
      );
    }
    return SizedBox(
      height: height ?? 50,
      width: Width ?? 320,
      child: ElevatedButton(
        onPressed: action,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderradius ?? 2)),
            side: isborder == false
                ? BorderSide(
                    color: bordercolors ?? DarkThemeColors.buttonprimaryColor)
                : BorderSide.none,
          ),
          backgroundColor: primary,
          foregroundColor: textColor,
          shadowColor: shadowColor,
          padding: EdgeInsets.zero,
        ),
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: buttonChildren,
          ),
        ),
      ),
    );
  }
}
