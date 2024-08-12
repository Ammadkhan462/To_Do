import 'package:flutter/material.dart';

class CommonTextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  const CommonTextWidget({
    Key? key,
    required this.text,
    this.fontSize = 16.0,
    this.color,
    this.fontWeight = FontWeight.normal,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
          fontFamily: 'Latoname'),
      textAlign: textAlign,
    );
  }
}
