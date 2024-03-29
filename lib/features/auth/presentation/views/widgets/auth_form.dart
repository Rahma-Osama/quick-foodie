import 'package:flutter/material.dart';
import 'package:quick_foodie/core/widgets/custom_text_field.dart';

class AuthForm extends StatelessWidget {
  final bool isLogin;
  final TextEditingController nameController ;
  final TextEditingController passwordController;
  final TextEditingController emailController;
  final formKey;
  const AuthForm({Key? key, required this.isLogin, required this.nameController, required this.passwordController, required this.emailController, this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
            children: [
          !isLogin?CustomTextField(
              controller: nameController,
              hint: 'Name',
              icon: Icons.person_outline,
              errorText: 'Please Enter Name'):const SizedBox.shrink(),
          const SizedBox(height: 30,),
          CustomTextField(
              controller: emailController,
              hint: 'Email',
              icon: Icons.email_outlined,
              errorText: 'Please Enter E-mail'),
              const SizedBox(height: 30,),

              CustomTextField(
            controller: passwordController,
            hint: 'Password',
            icon: Icons.password_outlined,
            errorText: 'Please Enter Password',
            isPassword: true,
          ),
        ]));
  }
}
