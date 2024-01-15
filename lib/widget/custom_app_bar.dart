import 'package:flutter/material.dart';

import '../themes/app_textstyles.dart';



AppBar CustomAppBar(BuildContext context, {Color color = Colors.transparent}) {
  return AppBar(
    backgroundColor: color,
    elevation: 0,
    leadingWidth: 90,
    leading: Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.navigate_before,
              color: Colors.black,
            )),
        Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ],
    ),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
          "Back to dashboard",
          style: AppTextStyles.gfsDidotStyle.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff4A4E69)),
        ),
      )
    ],
  );
}