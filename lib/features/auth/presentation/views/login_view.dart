import 'package:flutter/material.dart';
import 'package:quick_foodie/core/utils/app_colors.dart';
import 'package:quick_foodie/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.mainRed,
      body: LoginViewBody(),
    );
  }
}
