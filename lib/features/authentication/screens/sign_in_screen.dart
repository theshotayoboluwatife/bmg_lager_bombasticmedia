import 'package:BmgLager/widgets/app_button.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../../services/app_auth.dart';
import '../../../utility/constants.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/email_password_textfield.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  Future<void> _signIn() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      try {
        await Auth.account(
          emailController.text,
          passwordController.text,
          AuthMode.login,
        );
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Sign In Successful')),
        );
        // Navigate to the next screen or show a success message
        context.goNamed('SignIn');
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to sign in: $e')),
        );
      } finally {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(20.0),
        color: Colors.white,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Form(
              key: _formKey,
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
                      onPressed: () => context.goNamed('ForgetPassword'),
                      child: const AppText(
                        text: 'Forgot password?',
                      ),
                    ),
                  ),
                  Gap(size.height * 0.35),
                  _isLoading
                      ? Center(
                          child: LoadingAnimationWidget.staggeredDotsWave(
                            color: AppColor.blue,
                            size: 50,
                          ),
                        )
                      : AppButton(
                          onPressed: (){
                            _signIn();
                          },
                          text: 'Log in',
                        ),
                  const Gap(8.0),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {
                        context.goNamed('SignUp');
                      },
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
      ),
    );
  }
}
