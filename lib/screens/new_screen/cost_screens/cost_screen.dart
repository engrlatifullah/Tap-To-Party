import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taptoparty/screens/new_screen/cost_screens/payment_setup.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';

import 'cost_details_screen.dart';

class CostScreen extends StatefulWidget {
  const CostScreen({super.key});

  @override
  State<CostScreen> createState() => _CostScreenState();
}

class _CostScreenState extends State<CostScreen> {
  @override
  Widget build(BuildContext context) {
    String? attendeesPay;
    String? whoPaid;
    String? paymentPending;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Tap to Party",
          style: AppTextStyles.gfsDidotStyle.copyWith(
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Group Event Cost Summary",
                    style: AppTextStyles.gfsDidotStyle
                        .copyWith(fontSize: 20, color: AppColors.mainColor),
                  ),
                  SvgPicture.asset("images/Group 1.svg")
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.mainColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Pay",
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 12, color: AppColors.mainColor),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "\$20",
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 12, color: AppColors.mainColor),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      width: MediaQuery.sizeOf(context).width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade300,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Request",
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 12, color: AppColors.mainColor),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "\$0",
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 12, color: AppColors.mainColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Split Cost And Pay",
                    style: AppTextStyles.gfsDidotStyle
                        .copyWith(fontSize: 20, color: AppColors.mainColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      navigateToPage(
                          context: context, pageName: CostDetailsScreen());
                    },
                    child: Container(
                      height: 30,
                      width: 100,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.mainColor,
                      ),
                      child: Text(
                        "Cost Detail",
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 16, color: AppColors.primaryWhite),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CostAndPayWidget(
                    amount: "\$200",
                    title: "Total Bill",
                  ),
                  CostAndPayWidget(
                    amount: "\$20",
                    title: "Per Group/Person",
                  ),
                  CostAndPayWidget(
                    amount: "\$10",
                    title: "Add Cost",
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      alignment: Alignment.center,
                      color: Color(0xFFA99F96),
                      child: Text(
                        "USD",
                        style:
                            AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        color: Colors.grey.shade200,
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                              hintText: "\$ Amount",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: AppColors.primaryBlack,
                                ),
                              )),
                        )),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                color: Colors.grey.shade200,
                padding: EdgeInsets.all(10),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    isExpanded: true,
                    items: ["person 1", "person 2"].map((e) {
                      return DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      );
                    }).toList(),
                    value: attendeesPay,
                    onChanged: (value) {
                      attendeesPay = value;
                      setState(() {});
                    },
                    hint: Text(
                      "Select which attendees will pay",
                      style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                color: Colors.grey.shade200,
                padding: EdgeInsets.all(10),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    isExpanded: true,
                    items: ["person 1", "person 2"].map((e) {
                      return DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      );
                    }).toList(),
                    value: whoPaid,
                    onChanged: (value) {
                      whoPaid = value;
                      setState(() {});
                    },
                    hint: Text(
                      "Who paid",
                      style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                color: Colors.grey.shade200,
                padding: EdgeInsets.all(10),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    isExpanded: true,
                    items: ["person 1", "person 2"].map((e) {
                      return DropdownMenuItem(
                        child: Text(e),
                        value: e,
                      );
                    }).toList(),
                    value: paymentPending,
                    onChanged: (value) {
                      paymentPending = value;
                      setState(() {});
                    },
                    hint: Text(
                      "Who's payment is pending",
                      style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  navigateToPage(context: context, pageName: PaymentSetup());
                },
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.mainColor,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.mainColor,
                          blurRadius: 4,
                          offset: Offset(3, 0),
                        )
                      ]),
                  child: Center(
                    child: Text(
                      "Pay Now",
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 16, color: AppColors.primaryWhite),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.primaryBlack),
                  ),
                  child: Center(
                    child: Text(
                      "Pay Now",
                      style: AppTextStyles.gfsDidotStyle
                          .copyWith(fontSize: 16, color: AppColors.mainColor),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CostAndPayWidget extends StatelessWidget {
  final String amount;
  final String title;

  const CostAndPayWidget(
      {super.key, required this.amount, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          amount,
          style: AppTextStyles.gfsDidotStyle
              .copyWith(fontSize: 14, color: AppColors.mainColor),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: AppTextStyles.gfsDidotStyle
              .copyWith(fontSize: 13, color: AppColors.mainColor),
        ),
      ],
    );
  }
}
