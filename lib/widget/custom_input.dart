import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_colors.dart';

class CustomInput extends StatelessWidget {
  final String ? hintText;
  final Widget ? suffixIcon;
  final TextEditingController ? controller;
  const CustomInput({Key? key, this.hintText, this.controller, this.suffixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: AppColors.mainColor,
          )
        ),
      ),
    );
  }
}
