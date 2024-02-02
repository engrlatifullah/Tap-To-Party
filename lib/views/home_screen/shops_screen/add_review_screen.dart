import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_colors.dart';

import '../../../themes/app_textstyles.dart';

class AddReviewScreen extends StatefulWidget {
  const AddReviewScreen({super.key});

  @override
  State<AddReviewScreen> createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {
  double value = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.fromLTRB(15, MediaQuery.of(context).padding.top, 15, 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFF1F0EDED),
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Text(
                    'Reviews',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Color(0xFF1D1E20),
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox.shrink(),
                ],
              ),
              SizedBox(height: 40),
              Text(
                'Name',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Color(0xFF1D1E20),
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 50,
                decoration: ShapeDecoration(
                  color: Color(0xEDF1F0ED),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      hintText: "Type your name",
                      focusedBorder: OutlineInputBorder(),
                      border:
                          UnderlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'How was your experience ?',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Color(0xFF1D1E20),
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 213,
                decoration: ShapeDecoration(
                  color: Color(0xEDF1F0ED),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      hintText: "Describe your experience?",
                      focusedBorder: OutlineInputBorder(),
                      border:
                          UnderlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Star',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Color(0xFF1D1E20),
                  fontSize: 17,
                ),
              ),
              Row(
                children: [
                  Text(
                    '0.0',
                    style: TextStyle(
                      color: Color(0xFF1D1E20),
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      height: 0.10,
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Slider(
                        value: value,
                        activeColor: Color(0x92F1F0EDED),
                        inactiveColor: Color(0x92F1F0EDED),
                        thumbColor: AppColors.mainColor,
                        max: 100,
                        min: 0,
                        onChanged: (v) {
                          setState(() {
                            value = v;
                          });
                        }),
                  ),
                  Text(
                    '5.0',
                    style: TextStyle(
                      color: Color(0xFF1D1E20),
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      height: 0.10,
                    ),
                  ),
                  SizedBox(width: 5),
                ],
              ),
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                height: 48,
                decoration: ShapeDecoration(
                  color: Color(0xFFA99F96),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Submit Review',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
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
