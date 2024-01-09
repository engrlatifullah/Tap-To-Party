import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  final String ? hintText;
  final TextEditingController ? controller;
  const ReusableTextField({super.key, this.hintText, this.controller});

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: double.infinity,
        height: 50,

        decoration: ShapeDecoration(
          color: Color(0xEDF1F0ED),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )
          ),
        )
    );
  }
}
