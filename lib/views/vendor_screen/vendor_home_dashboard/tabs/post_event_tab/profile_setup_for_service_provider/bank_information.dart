import 'package:flutter/material.dart';

import '../../../../../../themes/app_textstyles.dart';
import '../../../../../../widget/primary_button.dart';

class BankingInformation extends StatelessWidget {
  const BankingInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.navigate_before,
                    size: 30,
                  ),
                ),
                Text(
                  "Bank Information",
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.edit,
                  size: 30,
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Routing Number",
              style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            Text(
              "Routing Number",
              style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                height: 30,
                width: 80,
                child: PrimaryButton(
                  onTap: () {},
                  title: "Save",
                ),
              ),
            )
          ],
        ),
      ),
    );
    ;
  }
}
