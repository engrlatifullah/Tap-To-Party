import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(Icons.navigate_before)),
                  SizedBox(width: 5),
                  Text(
                    'Profile',
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Share App',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.share)
                ],
              ),
              SizedBox(height: 20),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Container(
                  width: 67,
                  height: 73,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/2.jpg"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
                title: Text(
                  'Mary Johnson',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    fontSize: 20,
                  ),
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '214  336  4526',
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Color(0xFF4A4E69),
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.edit),
                        SizedBox(width: 5),
                        Text(
                          'Edit',
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            fontSize: 10,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Color(0xEDF1F0ED)),
                child: Column(
                  children: [
                    CustomListTile(
                      icon: "images/iconamoon_profile-thin.svg",
                      title: "Profile",
                    ),
                    CustomListTile(
                      icon: "images/fluent_payment-20-regular.svg",
                      title: "Payment Methods",
                    ),
                    CustomListTile(
                      icon: "images/carbon_security.svg",
                      title: "Security",
                    ),
                    CustomListTile(
                      icon: "images/system-uicons_location.svg",
                      title: "Location",
                    ),
                    CustomListTile(
                      icon: "images/mdi_favourite-border.svg",
                      title: "Favourites",
                    ),
                    CustomListTile(
                      icon: "images/wpf_message-outline.svg",
                      title: "Messages",
                    ),
                    CustomListTile(
                      icon: "images/iconamoon_notification-light.svg",
                      title: "Notifications",
                    ),
                    CustomListTile(
                      icon: "images/Group.svg",
                      title: "'Fine Print",
                    ),
                    CustomListTile(
                      icon: "images/faq.svg",
                      title: "FAQs",
                      isTrailing: false,
                    ),
                    CustomListTile(
                      icon: "images/iwwa_logout.svg",
                      title: "Logout",
                      isTrailing: false,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final VoidCallback? onTap;
  final String? icon;
  final String? title;
  final bool isTrailing;
  const CustomListTile(
      {super.key, this.onTap, this.icon, this.title, this.isTrailing = true});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: Row(
          children: [
            SizedBox(height: 24, width: 24, child: SvgPicture.asset(icon!)),
            SizedBox(width: 20),
            Text(
              title!,
              textAlign: TextAlign.center,
              style: AppTextStyles.plusJakartaSans.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            isTrailing
                ? Icon(
                    Icons.navigate_next,
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
