import 'package:flutter/material.dart';
import 'package:quick_foodie/core/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData icon;
  final String errorText;
  final bool isPassword;

  const CustomTextField({Key? key, required this.controller, required this.hint, required this.icon, required this.errorText,  this.isPassword=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorText;
        }
        return null;
      },
      cursorColor: Colors.black,
      decoration: InputDecoration(
          hintText: hint,
          focusColor: AppColors.mainRed,
          fillColor: AppColors.mainRed,
          // hintStyle,
          prefixIcon: Icon(icon),
      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.mainRed))),
    );
  }
}
