import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../../../utility/constants.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/email_password_textfield.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

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
                text: 'Forget Password',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              const Gap(10),
              AppText(
                text:
                    'Please enter your email address. An OTP code will be sent for verification',
                color: AppColor.grey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              const Gap(20),
              const AppText(
                text: 'Email',
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              const Gap(8.0),
              EmailTextField(emailController: emailController),
              const Spacer(),
              AppButton(
                  onPressed: () => context.goNamed('VerifyOTP'),
                  text: 'Send Code'),
            ],
          ),
        ),
      ),
    );
  }
}
