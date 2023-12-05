import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

class RoundCard extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String subTitle;

  const RoundCard(
      {super.key,
      required this.onTap,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      color: Color(0xFFA99F96),
      child: ListTile(
        onTap: onTap,
        title: Text(
          title,
          style: AppTextStyles.gfsDidotStyle
              .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        subtitle: Text(
          subTitle,
          style: AppTextStyles.gfsDidotStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff4A4E69)),
        ),
        trailing: Icon(Icons.navigate_next),
      ),
    );
  }
}
