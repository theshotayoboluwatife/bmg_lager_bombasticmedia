import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import 'app_text_fields.dart';

class EmailTextField extends StatefulWidget {
  final TextEditingController emailController;

  const EmailTextField({
    super.key,
    required this.emailController,
  });

  @override
  State<EmailTextField> createState() => _EmailTextField();
}

class _EmailTextField extends State<EmailTextField> {
  @override
  void dispose() {
    super.dispose();
    widget.emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      child: TextFormField(
        controller: widget.emailController,
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.emailAddress,
        autofillHints: const [AutofillHints.email],
        decoration: const InputDecoration(
          border: InputBorder.none,
          isDense: true,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your email';
          } else if (!EmailValidator.validate(value)) {
            return 'Please enter a valid email';
          }
          return null;
        },
      ),
    );
  }
}

class PasswordTextField extends StatefulWidget {
  final TextEditingController controller;

  const PasswordTextField({
    super.key,
    required this.controller,
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField>
    with SingleTickerProviderStateMixin {
  bool isVisible = false;

  @override
  void dispose() {
    super.dispose();
    widget.controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      child: TextFormField(
        controller: widget.controller,
        style: const TextStyle(color: Colors.black),
        keyboardType: TextInputType.visiblePassword,
        obscureText: !isVisible,
        decoration: InputDecoration(
          border: InputBorder.none,
          isDense: true,
          suffixIconConstraints: const BoxConstraints(
            maxWidth: 40,
            maxHeight: 40,
          ),
          suffixIcon: IconButton(
            alignment: Alignment.topCenter,
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            icon: isVisible
                ? const Icon(Icons.visibility_outlined)
                : const Icon(Icons.visibility_off_outlined),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          } else if (value.length < 8) {
            return 'Password must be at least 8 characters';
          }
          return null;
        },
      ),
    );
  }
}