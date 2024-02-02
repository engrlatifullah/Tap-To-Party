import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/suppliers_for_vendor_screens/widget/reusable_textfield.dart';

import '../../../../../../themes/app_textstyles.dart';
import '../../../../../home_screen/shops_screen/delivery_address_screen.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Address',
          style: AppTextStyles.plusJakartaSans.copyWith(
            color: Color(0xFF1D1E20),
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Zip code',
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
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Row(
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
                  )
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
                  onTap: () {
                    navigateToPage(
                      context: context,
                      pageName: DeliveryAddressScreen(),
                    );
                  },
                  child: Container(
                    width: 268,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: AppColors.mainColor,
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
