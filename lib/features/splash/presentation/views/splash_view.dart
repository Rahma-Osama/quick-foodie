import 'package:flutter/material.dart';
import 'package:quick_foodie/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SplashViewbody(),
      ),
    );
  }
}