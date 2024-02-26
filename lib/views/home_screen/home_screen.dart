import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/home_screen/request_quote_screen/vendor_list_screen.dart';
import 'package:taptoparty/views/home_screen/shops_screen/vendor_product_for_sale_screen.dart';
import 'package:taptoparty/widget/primary_button.dart';

import 'group_activity/group_activity_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Tap to Party",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Your one-stop shop for epic parties!",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Container(
                height: 59,
                width: double.infinity,
                color: Color(0xFFA99F96),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "Discover Events",
                      style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Plan Parties",
                      style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Find Vendors",
                      style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Shop",
                          style: AppTextStyles.gfsDidotStyle
                              .copyWith(fontSize: 18),
                        ),
                        SizedBox(width: 5),
                        Icon(Icons.keyboard_arrow_down_rounded),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Throw the most unforgettable parties with Tap to Party. Our app makes it easy to plan, organize, and manage your parties, from start to finish.",
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: 20),
                    IntrinsicWidth(
                      child: PrimaryButton(
                        title: "Download App",
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              navigateToPage(
                                context: context,
                                pageName: GroupActivityScreen(),
                              );
                            },
                            child: Container(
                              width: 132,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: AppColors.mainColor),
                              child: Center(
                                child: Text(
                                  "Events",
                                  style: AppTextStyles.gfsDidotStyle.copyWith(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              navigateToPage(
                                  context: context,
                                  pageName: VendorListScreen());
                            },
                            child: Container(
                              width: 132,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: AppColors.mainColor),
                              child: Center(
                                child: Text(
                                  "Venues",
                                  style: AppTextStyles.gfsDidotStyle.copyWith(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              navigateToPage(
                                context: context,
                                pageName: VendorProductForSaleScreen(),
                              );
                            },
                            child: Container(
                              width: 132,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: AppColors.mainColor),
                              child: Center(
                                child: Text(
                                  "Shops",
                                  style: AppTextStyles.gfsDidotStyle.copyWith(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 35,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black),
                        color: Color(0xFFA99F96),
                      ),
                      child: Center(
                        child: Text(
                          "Business Providers login here",
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                color: Colors.white,
                child: Column(
                  children: [
                    Text(
                      "Tap to Party: The Ultimate Event Planning App",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Plan your perfect event with ease and efficiency.",
                      style:
                          AppTextStyles.plusJakartaSans.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 150,
                      child: PrimaryButton(title: "Get Started", onTap: () {}),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 150,
                      width: double.infinity,
                      child: Image.asset(
                        "images/4.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Download Tap to Party now and get started planning your next party",
                      style:
                          AppTextStyles.plusJakartaSans.copyWith(fontSize: 24),
                    ),
                    SizedBox(height: 20),
                    IntrinsicWidth(
                      child: PrimaryButton(
                        title: "Download App",
                        onTap: () {},
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Container(
                height: 80,
                width: double.infinity,
                color: Color(0xFFF1F0ED),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discover the Perfect Venue and Vendors for Your Next Event",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Tap to Party makes it easy to find and book the ideal venue and vendors for any occasion. With our comprehensive search options and user-friendly interface, planning your event has never been simpler.",
                        style:
                            AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
                      ),
                      SizedBox(height: 20),
                      SvgPicture.asset("images/Relume.svg"),
                      SizedBox(height: 10),
                      Text(
                        "Venue Search",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Browse through a wide selection of venues to find the perfect setting for your event.",
                        style: AppTextStyles.plusJakartaSans
                            .copyWith(fontSize: 16),
                      ),
                      SizedBox(height: 20),
                      SvgPicture.asset("images/Relume.svg"),
                      SizedBox(height: 10),
                      Text(
                        "Vendor Search",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Connect with top-notch vendors who can bring your event vision to life.",
                        style: AppTextStyles.plusJakartaSans
                            .copyWith(fontSize: 16),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 150,
                        width: double.infinity,
                        child: Image.asset(
                          "images/4.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      "Discover the Key Features of Tap to Party",
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Tap to Party offers a range of powerful features to make event planning a breeze. From finding the perfect vendors to managing your guest list, we've got you covered.",
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      width: 135,
                      child: PrimaryButton(title: "Learn More", onTap: () {}),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Find the Best Vendors for Your Event",
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Tap to Party connects you with a wide range of vendors, ensuring that you can find the perfect match for your event. From caterers to photographers, we've got the best in the business.",
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      width: 135,
                      child: PrimaryButton(title: "Sign Up Now!", onTap: () {}),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Manage Your Venues with Ease",
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "With Tap to Party, you can effortlessly manage your venues. Keep track of availability, pricing, and more, all in one convenient location.",
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 20),
                    IntrinsicWidth(
                      child: PrimaryButton(
                        title: "Download App",
                        onTap: () {},
                      ),
                    ),
                    SizedBox(height: 50),
                    SizedBox(
                      height: 150,
                      width: double.infinity,
                      child: Image.asset(
                        "images/2.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Simplify",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "The Ultimate Event Planning Solution for You",
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Tap to Party is the all-in-one platform that streamlines event planning, making it easier and more efficient than ever before. With our comprehensive features and user-friendly interface, you can plan your events with confidence and ease.",
                      style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Save Time",
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Our intuitive tools and automated processes eliminate the hassle of manual planning.",
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Stay Organized",
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Effortlessly manage guest lists, vendors, tasks, inventory, and more in one place.",
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 135,
                          child: PrimaryButton(
                            title: "Learn More",
                            onTap: () {},
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Sign Up",
                          style: AppTextStyles.gfsDidotStyle
                              .copyWith(fontSize: 16),
                        ),
                        SizedBox(width: 10),
                        SvgPicture.asset(
                          "images/Relume.svg",
                          height: 20,
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      height: 180,
                      width: double.infinity,
                      child: Image.asset(
                        "images/5.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Simplify",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Plan Your Events with Ease",
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    IntrinsicWidth(
                      child: PrimaryButton(
                        title: "Get Started",
                        onTap: () {},
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("images/Relume.svg"),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sign Up",
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Tap to Party is the ultimate event planning tool. Sign up now!",
                                style: AppTextStyles.plusJakartaSans
                                    .copyWith(fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 120,
                      width: 2,
                      color: Colors.black,
                      margin: EdgeInsets.only(left: 20),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("images/Relume.svg"),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Plan Events",
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "From creating guest lists to managing tasks and inventory, we've got you covered.",
                                style: AppTextStyles.plusJakartaSans
                                    .copyWith(fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 120,
                      width: 2,
                      color: Colors.black,
                      margin: EdgeInsets.only(left: 20),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("images/Relume.svg"),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Invite Guests",
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Send beautiful evites and manage RSVPs all in one place.",
                                style: AppTextStyles.plusJakartaSans
                                    .copyWith(fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 120,
                      width: 2,
                      color: Colors.black,
                      margin: EdgeInsets.only(left: 20),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("images/Relume.svg"),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Connect with Vendors",
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Chat with vendors, upload pictures, and view their profiles to find the perfect fit.",
                                style: AppTextStyles.plusJakartaSans
                                    .copyWith(fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 120,
                      width: 2,
                      color: Colors.black,
                      margin: EdgeInsets.only(left: 20),
                    ),
                    SizedBox(height: 40),
                    Icon(
                      Icons.star_border,
                      size: 40,
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Limited time offer: Get premium service at an unbelievable price!! ",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontSize: 32, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Affordable",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Subscription Plans",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("images/Relume.svg"),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Flexible Pricing Options",
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Choose the plan that best fits your needs and budget.",
                                style: AppTextStyles.plusJakartaSans
                                    .copyWith(fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("images/Relume.svg"),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Advanced Features",
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Customize your subscription with add-ons and upgrades.",
                                style: AppTextStyles.plusJakartaSans
                                    .copyWith(fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("images/Relume.svg"),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "24/7 Support",
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Unlock powerful tools to enhance your event planning experience.",
                                style: AppTextStyles.plusJakartaSans
                                    .copyWith(fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "\$10 annual \nor \$1/month",
                            style: AppTextStyles.plusJakartaSans.copyWith(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Perfect for small events and gatherings",
                            style: AppTextStyles.plusJakartaSans
                                .copyWith(fontSize: 16),
                          ),
                          SizedBox(height: 40),
                          CustomRow(
                            text: "Guest List Management",
                          ),
                          SizedBox(height: 10),
                          CustomRow(
                            text: "Task and Inventory Tracking",
                          ),
                          SizedBox(height: 10),
                          CustomRow(
                            text: "RSVP Management",
                          ),
                          SizedBox(height: 10),
                          CustomRow(
                            text: "Chat and Messaging",
                          ),
                          SizedBox(height: 10),
                          CustomRow(
                            text: "Photo and Profile Uploads",
                          ),
                          SizedBox(height: 10),
                          CustomRow(
                            text: "Online Store",
                          ),
                          SizedBox(height: 10),
                          CustomRow(
                            text: "Team Management",
                          ),
                          SizedBox(height: 10),
                          CustomRow(
                            text: "Evites and Invitations",
                          ),
                          SizedBox(height: 10),
                          CustomRow(
                            text: "Vendor and Venue Listings",
                          ),
                          SizedBox(height: 10),
                          CustomRow(
                            text: "Task and Inventory Management",
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: double.infinity,
                            height: 1,
                            color: Colors.black,
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF6F6862),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.black,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Subscribe Now",
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Start your journey with us and enjoy incredible savings!",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    SizedBox(
                      height: 150,
                      width: double.infinity,
                      child: Image.asset(
                        "images/3.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Happy Customers",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Read what our satisfied customers have to say",
                      style:
                          AppTextStyles.plusJakartaSans.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: List.generate(
                          4,
                          (index) => Icon(
                                Icons.star,
                                color: Color(0xFfFFBA49),
                              )),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Our experience with Tap to Party was amazing. The app made event planning so much easier!",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey.shade300,
                      child: Icon(
                        Icons.image_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Lucy Joe",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Event Planner, XYZ Events",
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      children: List.generate(
                          4,
                          (index) => Icon(
                                Icons.star,
                                color: Color(0xFfFFBA49),
                              )),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Tap to Party is a game-changer in the event planning industry. Highly recommended!",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey.shade300,
                      child: Icon(
                        Icons.image_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Jane Smith",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Marketing Manager, ABC Company",
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 20,
                color: Color(0xFF6F6862),
              ),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Plan your dream event today",
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Discover the perfect vendors and venues for your event",
                      style:
                          AppTextStyles.plusJakartaSans.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 140,
                      height: 50,
                      child: PrimaryButton(
                        onTap: () {},
                        title: "Get Started",
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      "Shop exclusive products from our vendors for all your event needs.",
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Simply select and add items you want to your cart from our Tap to Party shop.",
                      style:
                          AppTextStyles.plusJakartaSans.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    PrimaryButton(
                        title: "Shop",
                        onTap: () {
                          navigateToPage(
                            context: context,
                            pageName: VendorProductForSaleScreen(),
                          );
                        }),
                    SizedBox(height: 50),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Stay Updated with Tap to Party",
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Subscribe to our newsletter for the latest updates and exclusive offers.",
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 50,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF6F6862),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                          child: Text(
                        "Signup",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "By clicking Sign Up, you confirm that you agree with our Terms and Conditions.",
                      style:
                          AppTextStyles.plusJakartaSans.copyWith(fontSize: 12),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 180,
                      width: double.infinity,
                      child: Image.asset(
                        "images/7.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text(
                      "Get in touch",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Contact us",
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 30),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(Icons.email_outlined),
                      title: Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "support@taptoparty.com",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Icon(Icons.phone),
                      title: Text(
                        "Phone",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "+1 (555) 123-4567",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF6F6862),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "FAQs",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Find answers to frequently asked questions about Tap to Party and its features.',
                      style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    TextWithIcon(
                      text: "How do I sign up?",
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    TextWithIcon(
                      text: "Can I invite guests?",
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    TextWithIcon(
                      text: "How do I manage tasks?",
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    TextWithIcon(
                      text: "Can I upload photos?",
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    TextWithIcon(
                      text: "Is there a chat feature?",
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Still have questions?",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Contact us for further assistance.",
                      style:
                          AppTextStyles.plusJakartaSans.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 50,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Center(
                        child: Text(
                          "Contact us",
                          style: AppTextStyles.gfsDidotStyle
                              .copyWith(fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class TextWithIcon extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const TextWithIcon({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Text(
              text,
              style: AppTextStyles.plusJakartaSans.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  final String text;
  const CustomRow({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.done),
        SizedBox(width: 20),
        Text(
          text,
          style: AppTextStyles.plusJakartaSans.copyWith(fontSize: 16),
        ),
      ],
    );
  }
}
