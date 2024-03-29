import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_foodie/core/widgets/custom_button.dart';
import 'package:quick_foodie/features/auth/presentation/manager/auth%20cubit/auth_cubit.dart';
import 'package:quick_foodie/features/auth/presentation/views/widgets/auth_form.dart';

class AuthCard extends StatelessWidget {
  final bool isLogin;
  const AuthCard({Key? key, required this.isLogin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    final blocProvider=BlocProvider.of<AuthCubit>(context);
    final size=MediaQuery.of(context).size;
    final textTheme=Theme.of(context).textTheme;
    return Center(
      child: Container(
        padding: const EdgeInsets.all(32),
        width: size.width*.85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(color: Colors.grey[300]!,blurRadius: 2,spreadRadius: .8,offset: const Offset(0,2))]
          ),
        child:  Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(isLogin? 'Login' : 'Sign Up',style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w600),),
            const SizedBox(height: 10,),
            AuthForm(isLogin: isLogin, nameController: nameController, passwordController: passwordController, emailController: emailController,formKey: formKey,),
            const SizedBox(height: 40,),
            CustomButton(text: isLogin? "Login" : "Sign Up" , func: (){
              print("object");
              if(formKey.currentState!.validate()) {
                print("object");
                blocProvider.name=nameController.text;
                blocProvider.email=emailController.text;
                blocProvider.password=passwordController.text;
                isLogin
                    ? blocProvider.loginWithEmailAndPassword()
                    : blocProvider.signupWithEmailAndPassword();
              }
            })
          ],
        ),
      ),
    );
  }
}
