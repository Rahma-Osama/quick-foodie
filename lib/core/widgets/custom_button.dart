import 'package:flutter/material.dart';
import 'package:quick_foodie/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final func;
  const CustomButton({Key? key, required this.text, required this.func}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity,child: ElevatedButton(onPressed: func,style: const ButtonStyle(backgroundColor:MaterialStatePropertyAll( AppColors.mainRed),foregroundColor: MaterialStatePropertyAll(Colors.white)), child: Text(text),));
  }
}
