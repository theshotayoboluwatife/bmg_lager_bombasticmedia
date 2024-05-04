import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/authentication/presentation/sign_in_screen.dart';

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
      /// LoginSignUp
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/sign-in',
        name: "SignIn",
        builder: (context, state) => SignInScreen(
          key: state.pageKey,
        ),
      ),
    ],
  );
}
