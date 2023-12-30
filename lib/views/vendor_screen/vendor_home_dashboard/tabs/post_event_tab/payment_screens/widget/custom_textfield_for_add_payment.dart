import 'package:flutter/material.dart';

class CustomTextFieldForAddPayment extends StatelessWidget {
  final TextEditingController ? controller;
  final int maxLines;
  const CustomTextFieldForAddPayment({super.key, this.controller,  this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return maxLines == 1 ? SizedBox(
      height: 40,
      child: TextField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF4A4E69)),
            ),
            focusedBorder: OutlineInputBorder()
        ),
      ),
    ) : TextField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF4A4E69)),
          ),
          focusedBorder: OutlineInputBorder()
      ),
    );
  }
}