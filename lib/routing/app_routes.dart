import 'package:BmgLager/features/authentication/screens/forget_password_screen.dart';
import 'package:BmgLager/features/authentication/screens/verify_otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/authentication/screens/sign_in_screen.dart';
import '../features/authentication/screens/sign_up_screen.dart';

class AppNavigation {
  AppNavigation._();

  static String initial = '/sign-in';

  // Private navigators
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static GoRouter router = GoRouter(
    initialLocation: initial,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      /// SignIn
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/sign-in',
        name: "SignIn",
        builder: (context, state) => SignInScreen(
          key: state.pageKey,
        ),
      ),

      ///SignUp
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/sign-up',
        name: "SignUp",
        builder: (context, state) => SignUpScreen(
          key: state.pageKey,
        ),
      ),

      ///Forget Password
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/forget-password',
        name: "ForgetPassword",
        builder: (context, state) => ForgetPasswordScreen(
          key: state.pageKey,
        ),
      ),

      ///VerifyOTP
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/verify-otp',
        name: "VerifyOTP",
        builder: (context, state) => VerifyOTPScreen(
          key: state.pageKey,
        ),
      ),
    ],
  );
}
