import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final Widget child;

  const AppTextField({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 12.0, top: 8.0, right: 8.0),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffdadada), width: 1),
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.transparent,
      ),
      child: child,
    );
  }
}
