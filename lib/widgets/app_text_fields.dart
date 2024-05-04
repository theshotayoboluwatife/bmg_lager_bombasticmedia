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
      padding: const EdgeInsets.all(8.0),
      alignment: Alignment.centerLeft,
      decoration:  BoxDecoration(
        border: Border.all(color: Colors.grey,),
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.transparent,
      ),
      child: child,
    );
  }
}
