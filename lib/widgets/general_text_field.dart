import 'package:flutter/material.dart';

import '../utility/constants.dart';

class GeneralTextField extends StatelessWidget {
  final TextEditingController textController;
  final String? hintText;

  const GeneralTextField({
    super.key,
    required this.textController,
    this.hintText = '',
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(color: AppColor.grey)),
      child: TextFormField(
        controller: textController,
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: InputBorder.none,
          isDense: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
