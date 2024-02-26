import 'package:flutter/material.dart';
import 'package:taptoparty/views/home_screen/request_quote_screen/submitting_request_screen.dart';
import 'package:taptoparty/widget/custom_app_bar.dart';

import '../../../themes/app_textstyles.dart';

class SendInfoScreen extends StatelessWidget {
  const SendInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' Tap to Party ',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Where should we send you the info?",
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Name',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 35,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Email',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 35,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Phone',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 35,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Container(
                        width: 37,
                        height: 33,
                        decoration: ShapeDecoration(
                          color: Color(0xEDF1F0ED),
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFF4A4E69)),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '+1',
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Color(0xFF4A4E69),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      )),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Description',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 102,
                decoration: ShapeDecoration(
                  color: Color(0xEDF1F0ED),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  )),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SubmittingRequestScreen();
                      },
                    );
                  },
                  child: IntrinsicWidth(
                    child: Container(
                      height: 47,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: ShapeDecoration(
                        color: Color(0xFF4A4E69),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Color(0xFFA99F96),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Send Request',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
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
