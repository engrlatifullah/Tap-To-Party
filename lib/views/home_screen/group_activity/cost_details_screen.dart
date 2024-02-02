import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';

import 'cost_split_screen.dart';

class CostDetailsScreen extends StatelessWidget {
  const CostDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 250,
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                    color: AppColors.mainColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.navigate_before,
                              color: Colors.white,
                            )),
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Column(
                          children: [
                            Text(
                              "Tap To Part",
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 20, color: AppColors.primaryWhite),
                            ),
                            Text(
                              "Cost Details",
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 24, color: AppColors.primaryWhite),
                            ),
                            Text(
                              "\$1580",
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 16, color: AppColors.primaryWhite),
                            ),
                            Text(
                              "Total Bill",
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 12, color: AppColors.primaryWhite),
                            ),
                          ],
                        ),
                        Image.asset(
                          "images/c5832030ef9d4824161fa06e4a23a739.gif",
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    SizedBox(),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Cost table
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Cost",
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 16, color: AppColors.primaryBlack),
                    ),
                  ),
                  SizedBox(height: 15),

                  Container(
                    color: Color(0x92F1F0EDED),
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: Column(
                      children: [
                        //header
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                "Item",
                                style: AppTextStyles.gfsDidotStyle
                                    .copyWith(fontSize: 14),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                "Cost",
                                style: AppTextStyles.gfsDidotStyle
                                    .copyWith(fontSize: 14),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Paid By",
                                style: AppTextStyles.gfsDidotStyle
                                    .copyWith(fontSize: 14),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Split",
                                style: AppTextStyles.gfsDidotStyle
                                    .copyWith(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        //Footer
                        CostTableRow(
                          item: "Food",
                          cost: "\$200",
                          paidBy: "Mike",
                        ),

                        CostTableRow(
                          item: "Photographer",
                          cost: "\$80",
                          paidBy: "Mary",
                        ),
                      ],
                    ),
                  ),

                  //Payment table
                  SizedBox(height: 20),

                  Container(
                    color: Color(0x92F1F0EDED),
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payment Summary",
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                              fontSize: 16, color: AppColors.primaryBlack),
                        ),
                        SizedBox(height: 15),

                        //header
                        Container(
                          height: 30,
                          width: double.infinity,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  "Name",
                                  style: AppTextStyles.gfsDidotStyle
                                      .copyWith(fontSize: 14),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  "Status",
                                  style: AppTextStyles.gfsDidotStyle
                                      .copyWith(fontSize: 14),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  "Amount",
                                  style: AppTextStyles.gfsDidotStyle
                                      .copyWith(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //Footer
                        PaymentTableRow(
                          name: "Mike",
                          status: "is owe",
                          amount: "\$40",
                          statusColor: Colors.green,
                        ),

                        PaymentTableRow(
                          name: "Jenny",
                          status: "owe",
                          amount: "\$30",
                          statusColor: Colors.red,
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            "Name",
                            style: AppTextStyles.gfsDidotStyle
                                .copyWith(fontSize: 14),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Owes",
                            style: AppTextStyles.gfsDidotStyle
                                .copyWith(fontSize: 14),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Name",
                            style: AppTextStyles.gfsDidotStyle
                                .copyWith(fontSize: 14),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Amount",
                            style: AppTextStyles.gfsDidotStyle
                                .copyWith(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    color: Color(0x92F1F0EDED),
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Footer
                        NameWithOwesAndAmount(
                          name: 'John',
                          owes: 'owes',
                          owesColor: Colors.red,
                          nameForAmount: 'Ali',
                          amount: '\$30',
                        ),
                        NameWithOwesAndAmount(
                          name: 'Lucky',
                          owes: 'owes',
                          owesColor: Colors.red,
                          nameForAmount: 'Raj',
                          amount: '\$130',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Center(
                          child: Container(
                            width: 155,
                            height: 36,
                            decoration: ShapeDecoration(
                                color: Color(0xFF4A4E69),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ]),
                            child: Center(
                              child: Text(
                                "Back to Payments",
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                    fontSize: 16,
                                    color: AppColors.primaryWhite),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          navigateToPage(
                            context: context,
                            pageName: CostSplitScreen(),
                          );
                        },
                        child: Center(
                          child: Container(
                            width: 155,
                            height: 36,
                            decoration: ShapeDecoration(
                                color: Color(0xFF4A4E69),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ]),
                            child: Center(
                              child: Text(
                                "Pay Now",
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                    fontSize: 16,
                                    color: AppColors.primaryWhite),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CostTableRow extends StatelessWidget {
  final String item;
  final String cost;
  final String paidBy;
  const CostTableRow(
      {super.key,
      required this.item,
      required this.cost,
      required this.paidBy});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              item,
              style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 14),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              cost,
              style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 14),
            ),
          ),
          Expanded(
            child: Text(
              paidBy,
              style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 14),
            ),
          ),
          Expanded(
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.keyboard_arrow_down_outlined))),
        ],
      ),
    );
  }
}

class PaymentTableRow extends StatelessWidget {
  final String name;
  final String status;
  final String amount;
  final Color statusColor;
  const PaymentTableRow(
      {super.key,
      required this.name,
      required this.status,
      required this.amount,
      required this.statusColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              name,
              style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 14),
            ),
          ),
          Expanded(
            child: Text(
              status,
              style: AppTextStyles.gfsDidotStyle
                  .copyWith(fontSize: 14, color: statusColor),
            ),
          ),
          Expanded(
            child: Text(
              amount,
              style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class NameWithOwesAndAmount extends StatelessWidget {
  final String name;
  final String owes;
  final String nameForAmount;
  final String amount;
  final Color owesColor;
  const NameWithOwesAndAmount(
      {super.key,
      required this.name,
      required this.owes,
      required this.nameForAmount,
      required this.amount,
      required this.owesColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              name,
              style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 14),
            ),
          ),
          Expanded(
            child: Text(
              owes,
              style: AppTextStyles.gfsDidotStyle
                  .copyWith(fontSize: 14, color: owesColor),
            ),
          ),
          Expanded(
            child: Text(
              nameForAmount,
              style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 14),
            ),
          ),
          Expanded(
            child: Text(
              amount,
              style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
