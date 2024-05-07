import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../utility/constants.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_text.dart';

class VerifyOTPScreen extends StatefulWidget {
  const VerifyOTPScreen({Key? key}) : super(key: key);

  @override
  State<VerifyOTPScreen> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<VerifyOTPScreen> {
  TextEditingController pinController = TextEditingController();

  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String time = '00:34';
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.navigate_before,
            color: Colors.black,
            size: 32,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
              const Gap(30),

              ///OTP FIELD PACKAGE
              PinCodeTextField(
                appContext: context,
                textStyle: const TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
                length: 6,
                enableActiveFill: true,
                keyboardType: TextInputType.phone,
                pinTheme: PinTheme(
                  inactiveFillColor: Colors.white,
                  inactiveColor: AppColor.grey,
                  activeFillColor: AppColor.blue,
                  activeColor: Colors.white,
                  selectedColor: Colors.black,
                  selectedFillColor: Colors.blue[100],
                  borderWidth: 1,
                  borderRadius: BorderRadius.circular(16),
                  fieldWidth: 55,
                  fieldHeight: 55,
                  shape: PinCodeFieldShape.box,
                ),
                cursorColor: Colors.white,
                onChanged: (value) {},
                onCompleted: (value) {},
                controller: pinController,
              ),
              const Gap(30),
              Align(
                  alignment: Alignment.center,
                  child: AppText(text: 'Send code again      $time')),
              const Spacer(),
              AppButton(
                  onPressed: () => context.goNamed('NewPassword'),
                  text: 'Confirm'),
            ],
          ),
        ),
      ),
    );
  }
}
