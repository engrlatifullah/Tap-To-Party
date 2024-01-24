import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

class CostDetails extends StatelessWidget {
  const CostDetails({super.key});

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
                    Text(
                      "Tap To Part",
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 20, color: AppColors.primaryWhite),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          children: [
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
                        SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              "images/design.png",
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                    SizedBox(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Cost table
                    SizedBox(height: 20),
                    Text(
                      "Cost",
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 16, color: AppColors.primaryBlack),
                    ),
                    SizedBox(height: 15),

                    //header
                    Container(
                      height: 30,
                      width: double.infinity,
                      color: Colors.grey.shade200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Item",
                                style: AppTextStyles.gfsDidotStyle
                                    .copyWith(fontSize: 14),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Cost",
                                style: AppTextStyles.gfsDidotStyle
                                    .copyWith(fontSize: 14),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Paid By",
                                style: AppTextStyles.gfsDidotStyle
                                    .copyWith(fontSize: 14),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Split",
                                style: AppTextStyles.gfsDidotStyle
                                    .copyWith(fontSize: 14),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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

                    //Payment table
                    SizedBox(height: 20),
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
                      color: Colors.grey.shade200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Name",
                                style: AppTextStyles.gfsDidotStyle
                                    .copyWith(fontSize: 14),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Status",
                                style: AppTextStyles.gfsDidotStyle
                                    .copyWith(fontSize: 14),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Amount",
                                style: AppTextStyles.gfsDidotStyle
                                    .copyWith(fontSize: 14),
                              ),
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

                    SizedBox(height: 30),
                    Container(
                      height: 30,
                      width: double.infinity,
                      color: Colors.grey.shade200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Name",
                                style: AppTextStyles.gfsDidotStyle
                                    .copyWith(fontSize: 14),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Owes",
                                style: AppTextStyles.gfsDidotStyle
                                    .copyWith(fontSize: 14),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Name",
                                style: AppTextStyles.gfsDidotStyle
                                    .copyWith(fontSize: 14),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Amount",
                                style: AppTextStyles.gfsDidotStyle
                                    .copyWith(fontSize: 14),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Center(
                        child: Container(
                          height: 30,
                          width: 150,
                          // padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.mainColor,
                          ),
                          child: Center(
                            child: Text(
                              "Back to Payments",
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 16, color: AppColors.primaryWhite),
                            ),
                          ),
                        ),
                      ),
                    )
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
            child: Container(
              alignment: Alignment.center,
              child: Text(
                item,
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 14),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                cost,
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 14),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                paidBy,
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 14),
              ),
            ),
          ),
          Expanded(
              child: Container(
                  alignment: Alignment.center,
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
            child: Container(
              alignment: Alignment.center,
              child: Text(
                name,
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 14),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                status,
                style: AppTextStyles.gfsDidotStyle
                    .copyWith(fontSize: 14, color: statusColor),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                amount,
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 14),
              ),
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
            child: Container(
              alignment: Alignment.center,
              child: Text(
                name,
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 14),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                owes,
                style: AppTextStyles.gfsDidotStyle
                    .copyWith(fontSize: 14, color: owesColor),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                nameForAmount,
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 14),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                amount,
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
