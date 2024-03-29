import 'package:flutter/material.dart';
import 'package:quick_foodie/core/utils/assets.dart';
import 'package:quick_foodie/features/auth/presentation/views/widgets/auth_card.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool isLogin=false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return  SizedBox(
      height: size.height,
      child: Stack(
        children: [
        Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64.0),
            child: Image.asset(AssetData.logo),
          ),
          Container(
            height: size.height * .65,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30), topLeft: Radius.circular(30))),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 80.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        isLogin?"Don't have an account ? " :"Already have an account ? ",
                        style: textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        child:  Text(isLogin?"Sign Up":"Login"),
                        onTap: () {
                          setState(() {
                            isLogin = !isLogin;
                          });
                        },
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
          AuthCard(isLogin: isLogin,),
        ],
      ),
    );
  }
}
