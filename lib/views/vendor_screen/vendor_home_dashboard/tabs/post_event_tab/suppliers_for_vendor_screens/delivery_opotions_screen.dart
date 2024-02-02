import 'package:flutter/material.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/suppliers_for_vendor_screens/widget/reusable_textfield.dart';

import '../../../../../../themes/app_textstyles.dart';

class DeliveryOptionsScreen extends StatelessWidget {
  const DeliveryOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            width: 45,
            height: 45,
            margin: EdgeInsets.all(10),
            decoration: ShapeDecoration(
              color: Color(0xFFF5F6FA),
              shape: OvalBorder(),
            ),
            child: Icon(Icons.arrow_back),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Delivery Options ',
                textAlign: TextAlign.center,
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (v) {}),
                      Container(
                        width: 110,
                        height: 30.70,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFF4A4E69)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Pick up only  ',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.plusJakartaSans.copyWith(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (v) {}),
                      Container(
                        width: 110,
                        height: 30.70,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFF4A4E69)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Delivery available ',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.plusJakartaSans.copyWith(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Shipping Address',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Color(0xFF1D1E20),
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Name',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Color(0xFF1D1E20),
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              ReusableTextField(
                hintText: "Molly",
              ),
              SizedBox(height: 20),
              Text(
                'Street address',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Color(0xFF1D1E20),
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              ReusableTextField(
                hintText: "USA",
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'City',
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Color(0xFF1D1E20),
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        ReusableTextField(
                          hintText: "Pleasontan",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'State',
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Color(0xFF1D1E20),
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        ReusableTextField(
                          hintText: "Pleasontan",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Save Address',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(width: 5),
                  Checkbox(value: true, onChanged: (v) {}),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Phone Number',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Color(0xFF1D1E20),
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              ReusableTextField(
                hintText: "+1 480 1453-987533",
              ),
              SizedBox(height: 20),
              Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 263,
                    height: 49,
                    decoration: ShapeDecoration(
                      color: Color(0xFF4A4E69),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Place Order',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Color(0xFFFEFEFE),
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
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
