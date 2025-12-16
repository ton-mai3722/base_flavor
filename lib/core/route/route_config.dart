import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loop_flavor/core/route/routes.dart';

import '../../features/home/presentation/pages/home_page.dart';
import '../../features/home_detail/presentation/pages/home_detail_page.dart';
import '../../features/main/presentation/pages/main_page.dart';
import '../../features/playback_screen/presentation/pages/playback_screem_page.dart';
import '../../features/splash_screen/presentation/pages/splash_screen.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final mainNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'main');
final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final favoritesNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'favorites',
);
final searchNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'search');
final profileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'profile');

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
      path: Routes.playbackScreen,
      builder: (context, state) {
        return PlaybackScreenPage();
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainPage(
          key: mainNavigatorKey,
          navigationShell: navigationShell,
        );
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: homeNavigatorKey,
          routes: [
            GoRoute(
              path: Routes.homeScreen,
              builder: (context, state) => const HomePage(),
              routes: [
                GoRoute(
                  path: Routes.detail,
                  builder: (context, state) {
                    return HomeDetailPage();
                  },
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: favoritesNavigatorKey,
          routes: [
            GoRoute(
              path: Routes.favoritesScreen,
              builder: (context, state) =>
                  const Scaffold(body: Center(child: Text('Favorites'))),
              routes: [],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: searchNavigatorKey,
          routes: [
            GoRoute(
              path: Routes.searchScreen,
              builder: (context, state) =>
                  const Scaffold(body: Center(child: Text('Search'))),
              routes: [],
            ),
          ],
        ),
      ],
    ),
  ],
);
