import 'package:BmgLager/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../../../utility/constants.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/email_password_textfield.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20.0),
        color: Colors.white,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppText(
                  text: 'Hello there',
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
                const Gap(12.0),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const AppText(
                      text: 'Forgot password?',
                    ),
                  ),
                ),
                const Gap(120.0),
                AppButton(onPressed: () {}, text: 'Log in'),
                const Gap(8.0),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      context.goNamed('SignUp');                    },
                    child: const AppText(
                      text: 'Create Account',
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
