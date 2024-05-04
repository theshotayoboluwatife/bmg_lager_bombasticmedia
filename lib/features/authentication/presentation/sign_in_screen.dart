import 'package:flutter/material.dart';

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
