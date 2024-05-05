import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utility/constants.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_text.dart';

class VerifyOTPScreen extends StatelessWidget {
  const VerifyOTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.navigate_before,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20.0),
        color: Colors.white,
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppText(
                text: 'You\'ve got a mail',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              const Gap(10),
              AppText(
                text:
                    'An OTP code has been sent to your email address for verification. Check amd enter the code below',
                color: AppColor.grey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              const Gap(20),

              ///OTP FIELD PACKAGE
              Container(
                width: double.infinity,
                height: 20,
                color: Colors.grey,
              ),
              const Gap(30),
              Row(
                children: [

                ],
              ),
              const Spacer(),
              AppButton(onPressed: () {}, text: 'Confirm'),
            ],
          ),
        ),
      ),
    );
  }
}
