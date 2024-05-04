import 'package:flutter/material.dart';

class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({super.key});

  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color:  Colors.white,
        child: const SafeArea(
            child: Center(
          child: Text(
            'BMG LAGER',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 36,
            ),
            textAlign: TextAlign.center,
          ),
        )),
      ),
    );
  }
}
