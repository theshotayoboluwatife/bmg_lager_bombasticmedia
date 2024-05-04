import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(
      {super.key,
      required this.text,
      this.height,
      this.color = Colors.black,
      this.fontSize = 14,
      this.fontWeight,
      this.textAlign,
      this.textOverflow,
      this.fontFamily = 'Poppins'});

  final String text;
  final String? fontFamily;
  final Color? color;
  final double? fontSize;
  final double? height;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          overflow: textOverflow,
          height: height),
    );
  }
}
