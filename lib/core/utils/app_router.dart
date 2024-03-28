import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quick_foodie/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:quick_foodie/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {

  static const String onBoarding='/onBoarding';
  static final GoRouter router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const SplashView()),
    GoRoute(
        path: onBoarding,
        builder: (BuildContext context, GoRouterState state) =>
            const OnBoardingView()),
  ]);
}
