import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utility/constants.dart';
import '../../../widgets/app_text.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              const AppText(
                text: 'Hello there',
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              const Gap(10),
              AppText(
                text: 'Please enter your email and password',
                color: AppColor.grey,
              ),
              const Gap(20),
              const AppText(
                text: 'Name',
                fontWeight: FontWeight.w200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
