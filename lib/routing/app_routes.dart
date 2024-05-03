import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/authentication/presentation/login_signup_screen.dart';

class AppNavigation {
  AppNavigation._();

  static String initial = '/home';

  // Private navigators
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static GoRouter router = GoRouter(
    initialLocation: initial,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      /// LoginSignUp
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/login-signup',
        name: "LoginSignUp",
        builder: (context, state) => LoginSignUpScreen(
          key: state.pageKey,
        ),
      ),

    ],
  );
}
