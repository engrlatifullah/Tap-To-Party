import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final String ? hintText;
  final TextEditingController ? controller;
  final Widget ? SuffixIcon;
  const CustomTextField({super.key, this.hintText, this.controller, this.SuffixIcon,});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(

          filled: true,
          fillColor: Color(0xffF1F0ED),
          hintText: hintText,
          suffixIcon: SuffixIcon,
          hintStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(6)

          )
        ),
      ),
    );
  }
}
