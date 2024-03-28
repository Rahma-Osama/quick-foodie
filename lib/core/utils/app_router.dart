import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_foodie/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const SplashView()),
  ]);
}
