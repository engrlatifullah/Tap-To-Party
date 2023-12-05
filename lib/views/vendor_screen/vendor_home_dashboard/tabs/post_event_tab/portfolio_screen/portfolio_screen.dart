import 'package:flutter/material.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/portfolio_screen/terms_for_vendors.dart';
import 'package:taptoparty/widget/primary_button.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_textstyles.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

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
                  color: AppColors.mainColor),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Center(
              child: Text(
                "Your Tap To Party Portfolio",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontSize: 24, fontWeight: FontWeight.w600),
              ),
            ),
            Center(
              child: Text(
                "Become a member of our Team",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontSize: 16, fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Kindly be aware that our team will review your submission prior to its publication. This process may require up to two days. Should we require any additional information, we will reach out to you. We greatly appreciate your patience. Thank you!",
              style: AppTextStyles.plusJakartaSans.copyWith(
                fontSize: 14,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    FittedBox(
                      child: Text(
                        "Service Category",
                        style:
                            AppTextStyles.gfsDidotStyle.copyWith(fontSize: 12),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder()),
                      ),
                    )
                  ],
                )),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                    child: Column(
                  children: [
                    FittedBox(
                      child: Text(
                        "Any additional",
                        style:
                            AppTextStyles.gfsDidotStyle.copyWith(fontSize: 12),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder()),
                      ),
                    )
                  ],
                )),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                    child: Column(
                  children: [
                    FittedBox(
                      child: Text(
                        "Service Category",
                        style:
                            AppTextStyles.gfsDidotStyle.copyWith(fontSize: 12),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder()),
                      ),
                    )
                  ],
                )),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                    child: Column(
                  children: [
                    FittedBox(
                      child: Text(
                        "Primary Location",
                        style:
                            AppTextStyles.gfsDidotStyle.copyWith(fontSize: 12),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder()),
                      ),
                    )
                  ],
                )),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                    child: Column(
                  children: [
                    FittedBox(
                      child: Text(
                        " additional Service",
                        style:
                            AppTextStyles.gfsDidotStyle.copyWith(fontSize: 12),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder()),
                      ),
                    )
                  ],
                )),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                    child: Column(
                  children: [
                    FittedBox(
                      child: Text(
                        "Locations",
                        style:
                            AppTextStyles.gfsDidotStyle.copyWith(fontSize: 12),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 30,
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            focusedBorder: OutlineInputBorder()),
                      ),
                    )
                  ],
                )),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "List Any hashtags that you would like to add to your Profile ",
              style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 12),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 30,
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    hintText: "##",
                    contentPadding: EdgeInsets.only(left: 10),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder()),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Display Your Talent To The World",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Craft a comprehensive description of yourself and your business",
              style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 12),
            ),
            SizedBox(height: 10),
            TextField(
              maxLines: 7,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            Text(
              "Social Presence",
              style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 14),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "Website URL",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontSize: 12, fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: SizedBox(
                height: 30,
                width: MediaQuery.sizeOf(context).width * 0.7,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder()),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Facebook URL",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                            fontSize: 12, fontStyle: FontStyle.italic),
                      ),
                      SizedBox(height: 5),
                      SizedBox(
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Instagram URL",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                            fontSize: 12, fontStyle: FontStyle.italic),
                      ),
                      SizedBox(height: 5),
                      SizedBox(
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "TikTok URL",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                            fontSize: 12, fontStyle: FontStyle.italic),
                      ),
                      SizedBox(height: 5),
                      SizedBox(
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pinterest URL",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                            fontSize: 12, fontStyle: FontStyle.italic),
                      ),
                      SizedBox(height: 5),
                      SizedBox(
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                "Upload Your Media",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/Group 33660.png"),
                SizedBox(
                  width: 15,
                ),
                Image.asset("images/logos_google-drive.png"),
                SizedBox(
                  width: 15,
                ),
                Image.asset("images/skill-icons_instagram.png"),
                SizedBox(
                  width: 15,
                ),
                Image.asset("images/circum_facebook.png"),
                SizedBox(
                  width: 15,
                ),
                Image.asset("images/logos_google-photos.png"),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 100,
                  color: Color(0xFFF1F0ED),
                ),
                SizedBox(width: 15),
                Container(
                  height: 90,
                  width: 100,
                  color: Color(0xFFF1F0ED),
                ),
                SizedBox(width: 15),
                Container(
                  height: 90,
                  width: 100,
                  color: Color(0xFFF1F0ED),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90,
                  width: 100,
                  color: Color(0xFFF1F0ED),
                ),
                SizedBox(width: 15),
                Container(
                  height: 90,
                  width: 100,
                  color: Color(0xFFF1F0ED),
                ),
                SizedBox(width: 15),
                Container(
                  height: 90,
                  width: 100,
                  color: Color(0xFFF1F0ED),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Checkbox(value: false, onChanged: (v) {}),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      navigateToPage(
                          context: context, pageName: TermsForVendor());
                    },
                    child: RichText(
                      text: TextSpan(
                          text: "By clicking submit you agree to our ",
                          style: AppTextStyles.gfsDidotStyle
                              .copyWith(fontSize: 12),
                          children: [
                            TextSpan(
                              text: "terms ",
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text:
                                  " and acknowledge that you have the rights and permissions of all parties involved.*",
                              style: AppTextStyles.gfsDidotStyle
                                  .copyWith(fontSize: 12),
                            ),
                          ]),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Center(
              child: SizedBox(
                height: 30,
                width: 80,
                child: PrimaryButton(
                  title: "Submit",
                  onTap: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
