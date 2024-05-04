import 'package:flutter/material.dart';
import 'app_text.dart';

class AppButton extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final Color foregroundColor, backgroundColor;

  const AppButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.foregroundColor = Colors.white,
    this.backgroundColor = const Color(0xff18396b),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        child: AppText(
          text: text,
          color: foregroundColor,
        ),
      ),
    );
  }
}
