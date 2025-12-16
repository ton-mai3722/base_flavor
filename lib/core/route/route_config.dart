import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loop_flavor/core/route/routes.dart';

import '../../features/home/presentation/pages/home_page.dart';
import '../../features/splash_screen/presentation/pages/splash_screen.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: Routes.splashScreen,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: Routes.splashScreen,
      builder: (context, state) {
        return SplashScreen();
      },
    ),
    GoRoute(
      path: Routes.homeScreen,
      builder: (context, state) {
        return HomePage();
      },
    ),
  ],
);
