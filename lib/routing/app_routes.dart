import 'package:BmgLager/features/authentication/screens/forget_password_screen.dart';
import 'package:BmgLager/features/authentication/screens/new_password_screen.dart';
import 'package:BmgLager/features/authentication/screens/verify_otp_screen.dart';
import 'package:BmgLager/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/authentication/screens/sign_in_screen.dart';
import '../features/authentication/screens/sign_up_screen.dart';
import '../features/home/screens/export_inventory_screen.dart';
import '../features/home/screens/scan_qr_screen.dart';
import '../features/home/widgets/home_wrapper.dart';

class AppNavigation {
  AppNavigation._();

  static String initial = '/sign-in';

  // Private navigators
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorHome =
      GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  static final _shellNavigatorExport =
      GlobalKey<NavigatorState>(debugLabel: 'shellExport');
  static final _shellNavigatorScanQR =
      GlobalKey<NavigatorState>(debugLabel: 'shellScanQR');

  static GoRouter router = GoRouter(
    initialLocation: initial,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      /// HomeWrapper
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return HomeWrapper(
            navigationShell: navigationShell,
          );
        },
        branches: <StatefulShellBranch>[
          /// Home
          StatefulShellBranch(
            navigatorKey: _shellNavigatorHome,
            routes: <RouteBase>[
              GoRoute(
                path: "/home",
                name: "Home",
                builder: (BuildContext context, GoRouterState state) =>
                    const HomeScreen(),
                /* routes: [
                  GoRoute(
                    path: 'menu',
                    name: 'Menu',
                    pageBuilder: (context, state) => CustomTransitionPage<void>(
                      key: state.pageKey,
                      child: const MenuDrawer(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) =>
                          FadeTransition(opacity: animation, child: child),
                    ),
                  ),
                  GoRoute(
                    path: 'order',
                    name: 'Order',
                    pageBuilder: (context, state) => CustomTransitionPage<void>(
                      key: state.pageKey,
                      child: const OrderScreen(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) =>
                          FadeTransition(opacity: animation, child: child),
                    ),
                  ),
                  GoRoute(
                    path: 'food-combo',
                    name: 'FoodCombo',
                    pageBuilder: (context, state) => CustomTransitionPage<void>(
                      key: state.pageKey,
                      child: const FoodComboScreen(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) =>
                          FadeTransition(opacity: animation, child: child),
                    ),
                  ),
                ],*/
              ),
            ],
          ),

          ///   Export
          StatefulShellBranch(
            navigatorKey: _shellNavigatorExport,
            routes: <RouteBase>[
              GoRoute(
                path: "/export-inventory",
                name: "ExportInventory",
                builder: (BuildContext context, GoRouterState state) =>
                    const ExportInventoryScreen(),
              ),
              /* GoRoute(
                path: "/user-profile",
                name: "UserProfile",
                builder: (BuildContext context, GoRouterState state) =>
                const UserProfileScreen(),
              ),*/
            ],
          ),

          ///   Scan QR
          StatefulShellBranch(
            navigatorKey: _shellNavigatorScanQR,
            routes: <RouteBase>[
              GoRoute(
                path: "/scan-qr",
                name: "ScanQR",
                builder: (BuildContext context, GoRouterState state) =>
                    const ScanQRScreen(),
              ),
            ],
          ),
        ],
      ),

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

      ///Set New Password
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/new-password',
        name: "NewPassword",
        builder: (context, state) => NewPasswordScreen(
          key: state.pageKey,
        ),
      ),
    ],
  );
}
