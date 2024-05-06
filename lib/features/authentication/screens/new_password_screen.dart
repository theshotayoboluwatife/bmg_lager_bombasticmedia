import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import '../../../utility/constants.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/email_password_textfield.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController confirmPasswordController =
        TextEditingController();
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
              text: 'Reset Password Successful',
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
            ),
            actions: [
              AppButton(
                  onPressed: () => context.goNamed('SignIn'),
                  text: 'Go to Log in')
            ],
            content: AppText(
              text: 'Your password has been updated',
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
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppText(
                text: 'Create new password',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              const Gap(10),
              AppText(
                text: 'Please enter your new password',
                color: AppColor.grey,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              const Gap(20),
              const AppText(
                text: 'New Password',
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              const Gap(8.0),
              PasswordTextField(controller: passwordController),
              const Gap(30.0),
              const AppText(
                text: 'Confirm Password',
              ),
              const Gap(8.0),
              PasswordTextField(controller: confirmPasswordController),
              const Spacer(),
              // const Gap(120.0),
              AppButton(
                  onPressed: () => showDialogBox(), text: 'Reset Password'),
            ],
          ),
        ),
      ),
    );
  }
}
