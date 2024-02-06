import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/home_screen/home_screen.dart';
import 'package:taptoparty/widget/primary_button.dart';

import '../../../widget/custom_input.dart';
import '../login_screen.dart';

class BusinessOwnerRegistrationScreen extends StatefulWidget {
  const BusinessOwnerRegistrationScreen({super.key});

  @override
  State<BusinessOwnerRegistrationScreen> createState() =>
      _BusinessOwnerRegistrationScreenState();
}

class _BusinessOwnerRegistrationScreenState
    extends State<BusinessOwnerRegistrationScreen> {
  final List<String> items = [
    "caterer",
    "florist",
    "photographer",
    "makeup",
    "artist",
    "musician",
    "car",
    "service",
    "wedding",
    "Cakes",
    "Birthday",
    "Cakes",
    "Venues"
  ];
  String? dropDownValue;

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
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 88,
                    width: 325,
                    decoration: BoxDecoration(color: Color(0xffF1F0ED)),
                    child: Center(
                      child: Text(
                        'Vendor Registration',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Business Details.',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                CustomInput(
                  hintText: 'Business Name',
                ),
                SizedBox(
                  height: 20,
                ),
                const CustomInput(
                  hintText: 'Business Address',
                ),
                SizedBox(
                  height: 20,
                ),
                CustomInput(
                  hintText: 'Contact Number',
                ),
                SizedBox(
                  height: 20,
                ),
                CustomInput(
                  hintText: 'Email Address ',
                ),
                SizedBox(height: 20.h),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          items: items.map((e) {
                            return DropdownMenuItem(
                              child: Text(
                                e,
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                              value: e,
                            );
                          }).toList(),
                          hint: Text("Please Select Your Business Category"),
                          value: dropDownValue,
                          isExpanded: true,
                          onChanged: (v) {
                            dropDownValue = v;
                            setState(() {});
                          }),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Text("or Claim your profile through"),
                      Spacer(),
                      SvgPicture.asset("images/googleICon.svg"),
                      SizedBox(width: 4),
                      Image.asset("images/yelp.png"),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                CustomInput(
                  hintText: "Business License  Number or EIN if  applicable",
                ),
                SizedBox(height: 30),
                PrimaryButton(
                    title: 'Submit',
                    onTap: () {
                      navigateToPage(context: context, pageName: HomeScreen());
                    }),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    navigateToPage(context: context, pageName: LoginScreen());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: AppTextStyles.plusJakartaSans,
                      ),
                      Text(
                        "Login",
                        style: AppTextStyles.plusJakartaSans
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
