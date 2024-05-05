import 'package:BmgLager/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../utility/constants.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/email_password_textfield.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final TextEditingController confirmPasswordController =
        TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    void showDialogBox() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            alignment: Alignment.center,
            surfaceTintColor: Colors.white,
            backgroundColor: Colors.white,
            title: const AppText(
              text: 'Account Successful',
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
            ),
            actions: [AppButton(onPressed: () {}, text: 'Go to Home')],
            content: AppText(
              text: 'Your account has been created',
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: AppColor.grey,
              textAlign: TextAlign.center,
            ),
          );
        },
      );
    }

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20.0),
        color: Colors.white,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                const Gap(8.0),
                EmailTextField(emailController: emailController),
                const Gap(30.0),
                const AppText(
                  text: 'Password',
                ),
                const Gap(8.0),
                PasswordTextField(controller: passwordController),
                const Gap(30.0),
                const AppText(
                  text: 'Confirm Password',
                ),
                const Gap(8.0),
                PasswordTextField(controller: confirmPasswordController),
                const Gap(120.0),
                AppButton(
                    onPressed: () => showDialogBox(), text: 'Create Account'),
                const Gap(8.0),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      context.goNamed('SignIn');
                    },
                    child: const AppText(
                      text: 'Already have an account? Sign In',
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
