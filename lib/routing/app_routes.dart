import 'package:BmgLager/features/authentication/screens/forget_password_screen.dart';
import 'package:BmgLager/features/authentication/screens/new_password_screen.dart';
import 'package:BmgLager/features/authentication/screens/verify_otp_screen.dart';
import 'package:BmgLager/features/home/screens/add_product_screen.dart';
import 'package:BmgLager/features/home/screens/product_details_screen.dart';
import 'package:BmgLager/features/home/screens/product_screen.dart';
import 'package:BmgLager/features/map/map_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/authentication/screens/sign_in_screen.dart';
import '../features/authentication/screens/sign_up_screen.dart';
import '../features/home/screens/scan_qr_screen.dart';
import '../features/home/screens/search_screen.dart';
import '../features/home/widgets/home_wrapper.dart';

class AppNavigation {
  AppNavigation._();

  static String initial = '/sign-in';

  // Private navigators
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorProducts =
      GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  static final _shellNavigatorSearch =
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
          /// Products
          StatefulShellBranch(
            navigatorKey: _shellNavigatorProducts,
            routes: <RouteBase>[
              GoRoute(
                  path: "/products",
                  name: "Products",
                  builder: (BuildContext context, GoRouterState state) =>
                      const ProductScreen(),
                  routes: [
                    ///Product Details
                    GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        path: 'product-details',
                        name: "ProductDetails",
                        pageBuilder: (context, state) =>
                            CustomTransitionPage<void>(
                              key: state.pageKey,
                              child: ProductDetailsScreen(
                                key: state.pageKey,
                              ),
                              transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) =>
                                  FadeTransition(
                                      opacity: animation, child: child),
                            ),
                        routes: [
                          ///View Map
                          GoRoute(
                            parentNavigatorKey: _rootNavigatorKey,
                            path: 'map-view',
                            name: "MapView",
                            pageBuilder: (context, state) =>
                                CustomTransitionPage<void>(
                              key: state.pageKey,
                              child: const MapViewScreen(),
                              transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) =>
                                  FadeTransition(
                                      opacity: animation, child: child),
                            ),
                          ),
                        ]),

                    ///Add Products
                    GoRoute(
                      parentNavigatorKey: _rootNavigatorKey,
                      path: 'add-product',
                      name: "AddProductScreen",
                      pageBuilder: (context, state) =>
                          CustomTransitionPage<void>(
                        key: state.pageKey,
                        child: const AddProductScreen(),
                        transitionsBuilder: (context, animation,
                                secondaryAnimation, child) =>
                            FadeTransition(opacity: animation, child: child),
                      ),
                    ),
                  ]),
            ],
          ),

          /// Search
          StatefulShellBranch(
            navigatorKey: _shellNavigatorSearch,
            routes: <RouteBase>[
              GoRoute(
                path: "/search",
                name: "Search",
                builder: (BuildContext context, GoRouterState state) =>
                    const SearchScreen(),
              ),
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
          routes: [
            ///Forget Password
            GoRoute(
              parentNavigatorKey: _rootNavigatorKey,
              path: 'forget-password',
              name: "ForgetPassword",
              /* builder: (context, state) => ForgetPasswordScreen(
              key: state.pageKey,
            ),*/
              pageBuilder: (context, state) => CustomTransitionPage<void>(
                key: state.pageKey,
                child: const ForgetPasswordScreen(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) =>
                        FadeTransition(opacity: animation, child: child),
              ),
            ),

            ///VerifyOTP
            GoRoute(
              parentNavigatorKey: _rootNavigatorKey,
              path: 'verify-otp',
              name: "VerifyOTP",
              /*builder: (context, state) => VerifyOTPScreen(
              key: state.pageKey,
            ),*/
              pageBuilder: (context, state) => CustomTransitionPage<void>(
                key: state.pageKey,
                child: VerifyOTPScreen(
                  key: state.pageKey,
                ),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) =>
                        FadeTransition(opacity: animation, child: child),
              ),
            ),

            ///Set New Password
            GoRoute(
              parentNavigatorKey: _rootNavigatorKey,
              path: 'new-password',
              name: "NewPassword",
              /* builder: (context, state) => NewPasswordScreen(
                key: state.pageKey,
              ),*/
              pageBuilder: (context, state) => CustomTransitionPage<void>(
                key: state.pageKey,
                child: NewPasswordScreen(
                  key: state.pageKey,
                ),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) =>
                        FadeTransition(opacity: animation, child: child),
              ),
            ),

            ///SignUp
            GoRoute(
              parentNavigatorKey: _rootNavigatorKey,
              path: 'sign-up',
              name: "SignUp",
              /* builder: (context, state) => SignUpScreen(
                key: state.pageKey,
              ),*/
              pageBuilder: (context, state) => CustomTransitionPage<void>(
                key: state.pageKey,
                child: SignUpScreen(
                  key: state.pageKey,
                ),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) =>
                        FadeTransition(opacity: animation, child: child),
              ),
            ),
          ]),
    ],
  );
}
