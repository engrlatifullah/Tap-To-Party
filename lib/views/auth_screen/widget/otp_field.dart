import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../themes/app_colors.dart';

class OtpField extends StatelessWidget {
  final Function(String v) ? onChanged;


  const OtpField({
    Key? key, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: TextField(
        keyboardType: TextInputType.number,
        onChanged: (v){
          if(v.length == 1){
            FocusScope.of(context).nextFocus();
          }
        },
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration:  InputDecoration(
          contentPadding: EdgeInsets.only(left: 20,top: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
                color: AppColors.primaryBlack
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
                color: AppColors.mainColor
            ),
          ),

        ),
      ),
    );
  }
}