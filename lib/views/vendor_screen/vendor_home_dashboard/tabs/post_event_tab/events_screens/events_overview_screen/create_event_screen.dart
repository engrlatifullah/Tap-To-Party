import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/widget/primary_button.dart';

import '../../../../../../../themes/app_colors.dart';

class CreateEventScreen extends StatelessWidget {
  const CreateEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Event Details",
                    style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 24),
                  ),
                  SizedBox(
                      width: 125,
                      height: 40,
                      child: PrimaryButton(title: "Create event", onTap: () {}))
                ],
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Back to dashboard",
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.mainColor),
                  ),
                ),
              ),
              SizedBox(height: 5),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    hintText: "Charity Gala",
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(height: 10),
              ListTile(
                visualDensity: VisualDensity(vertical: -4),
                leading: Icon(Icons.calendar_month),
                title: Text(
                  "Where",
                  style: AppTextStyles.plusJakartaSans
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
              ListTile(
                visualDensity: VisualDensity(vertical: -4),
                leading: Icon(Icons.location_on),
                title: Text(
                  "when",
                  style: AppTextStyles.plusJakartaSans
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
              ListTile(
                visualDensity: VisualDensity(vertical: -4),
                leading: Icon(CupertinoIcons.person_3),
                title: Text(
                  "No.of guests",
                  style: AppTextStyles.plusJakartaSans
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
              ListTile(
                visualDensity: VisualDensity(vertical: -4),
                leading: Icon(CupertinoIcons.person_3),
                title: Text(
                  "Client Contact",
                  style: AppTextStyles.plusJakartaSans
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Order Details.",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontSize: 14, fontWeight: FontWeight.w300),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.shade300,
                  border: Border.all(color: Colors.grey),
                ),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Text("Category$index"),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      color: Colors.white,
                      endIndent: 5,
                      indent: 5,
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: IntrinsicWidth(
                    child: Container(
                      height: 45.h,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.mainColor),
                      child: Text(
                        "Save & Add to the Event List ",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 16.sp,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
