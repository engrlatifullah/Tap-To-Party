import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taptoparty/utils/navigation.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_textstyles.dart';
import 'create_invoice_and_add_payment.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

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
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Payments Tracker',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 34,
                      decoration: ShapeDecoration(
                        color: Color(0xFF4A4E69),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Paid',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 34,
                      decoration: ShapeDecoration(
                        color: Color(0x92F1F0EDED),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: AppColors.mainColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Outstanding',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 34,
                      decoration: ShapeDecoration(
                        color: Color(0xFFA99F96),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: AppColors.mainColor),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Upcoming',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.primaryWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset("images/payment-Sh1tl1PFv1.svg"),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      navigateToPage(
                          context: context,
                          pageName: CreateInvoiceAndAddPaymentScreen());
                    },
                    child: Container(
                      width: 128,
                      height: 36.67,
                      decoration: ShapeDecoration(
                        color: Color(0xEDF1F0ED),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Add Payments',
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total to date',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  Container(
                    width: 128,
                    height: 36.67,
                    decoration: ShapeDecoration(
                      color: Color(0xEDF1F0ED),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        '\$10,000',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 31,
                    height: 31.58,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD9D9D9),
                      shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                    ),
                    child: Center(
                      child: Text(
                        '10 ',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Payments received ',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0x92F1F0EDED),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'All Payments',
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            color: Colors.black,
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search by",
                                suffixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 24.45,
                            decoration: ShapeDecoration(
                              color: Color(0xEDF1F0ED),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1)),
                            ),
                            child: Center(
                              child: Text(
                                'Date Range',
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                  color: Colors.black,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 24.45,
                            decoration: ShapeDecoration(
                              color: Color(0xEDF1F0ED),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1)),
                            ),
                            child: Center(
                              child: Text(
                                'Amount',
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                  color: Colors.black,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            height: 24.45,
                            decoration: ShapeDecoration(
                              color: Color(0xEDF1F0ED),
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1)),
                            ),
                            child: Center(
                              child: Text(
                                'Client',
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                  color: Colors.black,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    ListView.separated(
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                child: Center(
                                  child: Text(
                                    '10/15/2021',
                                    style:
                                        AppTextStyles.plusJakartaSans.copyWith(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: SizedBox(
                                child: Center(
                                  child: Text(
                                    '\$1,000',
                                    style:
                                        AppTextStyles.plusJakartaSans.copyWith(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: SizedBox(
                                child: Center(
                                  child: Text(
                                    'Client A',
                                    style:
                                        AppTextStyles.plusJakartaSans.copyWith(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Divider();
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Outstanding Payment',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 19,
                ),
              ),
              SizedBox(height: 10),
              ListView.separated(
                itemCount: 5,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              '10/15/2021',
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              '\$1,000',
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: SizedBox(
                          child: Center(
                            child: Text(
                              'Client A',
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
              ),
              SizedBox(height: 10),
              Text(
                'Invoices & Reports',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 19,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          hintText: "Search by client name",
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0x92F1F0EDED),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Text(
                          'Create Invoice',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Print',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.black,
                      fontSize: 13,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Text(
                    'Download PDF',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.black,
                      fontSize: 13,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Text(
                    'Download CSV',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.black,
                      fontSize: 13,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Center(
                child: Container(
                  width: 162.50,
                  height: 34,
                  decoration: ShapeDecoration(
                    color: Color(0xFFA99F96),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Save',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
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
