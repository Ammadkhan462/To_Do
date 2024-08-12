import 'package:flutter/material.dart';
import 'package:todo_ui/commons/common_button.dart';
import 'package:todo_ui/commons/common_text.dart';

class CommonSelectionTile extends StatelessWidget {
  final IconData icon;
  final IconData? iconbutton;

  final String title;
  final String buttonText;
  final VoidCallback? onButtonPressed;

  const CommonSelectionTile({
    Key? key,
    this.iconbutton,
    required this.icon,
    required this.title,
    required this.buttonText,
    this.onButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        children: <Widget>[
          Icon(icon),
          const SizedBox(width: 10),
          CommonTextWidget(text: '$title :', fontWeight: FontWeight.normal),
          const Spacer(),
          CommonButton(
            height: 40,
            isborder: true,
            text: buttonText,
            iconData: iconbutton,
            fontsizee: 15,
            action: onButtonPressed,
            primary: Colors.grey[800], // Assuming a dark theme as in the image
            borderradius: 10,
            Width: 120,
          ),
        ],
      ),
    );
  }
}
