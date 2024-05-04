import 'package:BmgLager/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utility/constants.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/email_password_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController email_controller = TextEditingController();
    final TextEditingController password_controller = TextEditingController();
    final TextEditingController comfirm_password_controller = TextEditingController();
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              const AppText(
                text: 'Create account',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              const Gap(10),
              AppText(
                text: 'Please enter your email and password',
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
              const Gap(4.0),
              EmailTextField(emailController: email_controller),
              const Gap(16.0),
              const AppText(
                text: 'Password',
              ),
              const Gap(4.0),
              PasswordTextField(controller: password_controller),
              const Gap(16.0),
              const AppText(
                text: 'Confirm Password',
              ),
              const Gap(4.0),
              PasswordTextField(controller: comfirm_password_controller),
              const Gap(16.0),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                TextButton(
                  onPressed: () {},
                  child: const AppText(
                    text: 'Sign in',
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const AppText(
                    text: 'Forgot password?',
                  ),
                ),
              ]),
              const Spacer(),
              AppButton(onPressed: () {}, text: 'Log in'),
              const Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
