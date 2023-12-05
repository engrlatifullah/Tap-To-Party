import 'package:flutter/material.dart';

import '../../../../../../themes/app_textstyles.dart';
import '../../../../../../widget/primary_button.dart';

class ProfileTazInformation extends StatelessWidget {
  const ProfileTazInformation({super.key});

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
                  "Tax Information",
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
              "Business Federal Tax ID",
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
              "Type of Ownership",
              style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.grey.shade200,
                      child: Checkbox(
                        value: true,
                        onChanged: (v) {},
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "S Corp",
                      style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.grey.shade200,
                      child: Checkbox(
                        value: true,
                        onChanged: (v) {},
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "LLC",
                      style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox.shrink()
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.grey.shade200,
                      child: Checkbox(
                        value: false,
                        onChanged: (v) {},
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Corporation",
                      style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      color: Colors.grey.shade200,
                      child: Checkbox(
                        value: false,
                        onChanged: (v) {},
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Partnership",
                      style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                SizedBox.shrink()
              ],
            ),
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
  }
}
