import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/payment_screens/widget/custom_textfield_for_add_payment.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_textstyles.dart';

class SetupPaymentMethod extends StatefulWidget {
  const SetupPaymentMethod({super.key});

  @override
  State<SetupPaymentMethod> createState() => _SetupPaymentMethodState();
}

class _SetupPaymentMethodState extends State<SetupPaymentMethod> {
  String ? paymentMethod;
  bool switchValue = false;
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
            children: [
              Text(
                'Setup Payment Methods',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Supported payment methods\nPayment methods that are available with Tap To Party Payments.',
                textAlign: TextAlign.center,
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 333,
                decoration: ShapeDecoration(
                  color: Color(0xEDF1F0ED),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: SvgPicture.asset(
                          "images/simple-icons_zelle.svg"),
                      title: Text(
                        'Zelle',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      trailing: Text(
                        'Activate',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Color(0xFF166FF6),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Divider(color: Colors.white,),
                    ListTile(
                      leading: SvgPicture.asset("images/logos_paypal.svg"),
                      title: Text(
                        'Paypal',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      trailing: Text(
                        'Activate',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Color(0xFF166FF6),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Divider(color: Colors.white,),
                    ListTile(
                      leading: SvgPicture.asset("images/Vector (1).svg"),
                      title: Text(
                        'Apple Pay',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      trailing: Text(
                        'Activate',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Color(0xFF166FF6),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Divider(color: Colors.white,),
                    ListTile(
                      leading: SvgPicture.asset("images/Vector (2).svg"),
                      title: Align(
                          alignment: Alignment.centerLeft,
                          child: SvgPicture.asset(
                              "images/simple-icons_venmo.svg")),
                      trailing: Text(
                        'Activate',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Color(0xFF166FF6),
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Divider(color: Colors.white,),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Manual payment methods\n\n',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: "Payments that are made outside your online store. When a customer selects a manual payment method such as cash on delivery, you'll need to approve their order before it can be fulfilled.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 34,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: ShapeDecoration(
                  color: Color(0xEDF1F0ED),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: paymentMethod,
                    onChanged: (v){
                      setState(() {
                        paymentMethod = v;
                      });
                      if(
                      v == "Credit Card Payment"
                      ){
                        showDialog(context: context, builder: (BuildContext context) {
                          return Dialog(
                            child: Container(
                              width: double.infinity,
                              padding: EdgeInsets.all(15),
                              decoration: ShapeDecoration(
                                color: Color(0x92F0EDED),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child:  Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text(
                                    'Name on Card',
                                    style: AppTextStyles.plusJakartaSans.copyWith(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  CustomTextFieldForAddPayment(),
                                  SizedBox(height: 20),


                                  Text(
                                    'Credit Card Number',
                                    style: AppTextStyles.plusJakartaSans.copyWith(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  CustomTextFieldForAddPayment(),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Expanded(child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            'Expiration Date',
                                            style: AppTextStyles.plusJakartaSans.copyWith(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          CustomTextFieldForAddPayment(),
                                          SizedBox(height: 20),
                                        ],
                                      )),
                                      SizedBox(width: 20),
                                      Expanded(child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text(
                                            'CVV Code',
                                            style: AppTextStyles.plusJakartaSans.copyWith(
                                              color: Colors.black,
                                              fontSize: 15,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          CustomTextFieldForAddPayment(),
                                          SizedBox(height: 20),
                                        ],
                                      )),
                                    ],
                                  ),

                                  Text(
                                    'Billing Zip COde',
                                    style: AppTextStyles.plusJakartaSans.copyWith(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  SizedBox(
                                      width: 150,
                                      child: CustomTextFieldForAddPayment()),
                                  SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Billing address same as shipping',
                                          style: AppTextStyles.gfsDidotStyle.copyWith(
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                     StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) {
                                       return  CupertinoSwitch(value: switchValue,
                                           activeColor: Colors.black,
                                           onChanged: (v){
                                         setState(() {
                                           switchValue = v;
                                         });
                                       });
                                     },)
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                      }
                    },
                    hint: Text("Select payment method",style: AppTextStyles.gfsDidotStyle.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                    ),),
                    items: [
                      "Bank deposit",
                      "Cash on Delivery (COD)",
                      "Credit Card Payment"
                    ].map((e) {
                      return DropdownMenuItem(child: Text(
                        'Credit Card Payment',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                            color: Colors.black,
                            fontSize: 14,
                        ),
                      ),value: e,);
                    }).toList(),
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
