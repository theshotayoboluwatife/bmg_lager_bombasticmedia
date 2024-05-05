import 'package:BmgLager/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utility/constants.dart';
import '../../../widgets/app_text.dart';

class AppDialogBox extends StatelessWidget {
  final String promptTitle, promptDescription, buttonText;
  final void Function()? onPressed;

  const AppDialogBox({
    super.key,
    required this.promptTitle,
    required this.promptDescription,
    required this.buttonText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.2,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppText(
            text: promptTitle,
            fontWeight: FontWeight.w500,
          ),
          const Gap(10.0),
          AppText(
            text: promptDescription,
            fontWeight: FontWeight.w400,
            fontSize: 15,
            color: AppColor.grey,
          ),
          const Gap(24.0),
          AppButton(onPressed: onPressed, text: buttonText)
        ],
      ),
    );
  }
}
