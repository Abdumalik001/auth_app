import 'package:auth_app_clone/utils/helper/go_router_refresh_stream.dart';
import 'package:auth_app_clone/utils/services/hive/hive.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/general/pages/pages.dart';

enum Routes {
  root('/'),
  splashScreen('/splashScreen'),
  dashboard('/dashboard'),
  settings('/settings'),
  login('/auth/login'),
  register('/auth/register');

  const Routes(this.path);

  final String path;
}

class AppRoute {
  static late BuildContext context;

  AppRoute.setStream(BuildContext ctx) {
    context = ctx;
  }

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.splashScreen.path,
        name: Routes.splashScreen.path,
        builder: (context, state) => const SplashScreenPage(),
      ),
      GoRoute(
        path: Routes.root.path,
        name: Routes.root.path,
        redirect: (context, state) => Routes.dashboard.path,
      )
    ],
    initialLocation: Routes.splashScreen.path,
    routerNeglect: true,
    debugLogDiagnostics: kDebugMode,
    // refreshListenable: GoRouterRefreshStream(),
    redirect: (context, state) {
      final bool isLoginPage = state.matchedLocation == Routes.login.path ||
          state.matchedLocation == Routes.register.path;

      if (!((MainBoxMixin.mainBox!.get(MainBoxKeys.isLogin.name) as bool?) ??
          false)) {
        return isLoginPage ? null : Routes.login.path;
      }

      if (isLoginPage &&
          ((MainBoxMixin.mainBox!.get(MainBoxKeys.isLogin.name) as bool?) ??
              false)) {
        return Routes.root.path;
      }
      return null;
    },
  );
}
