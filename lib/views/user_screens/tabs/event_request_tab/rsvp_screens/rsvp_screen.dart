import 'package:flutter/material.dart';
import 'package:taptoparty/widget/custom_input_textfield.dart';

import '../../../../../themes/app_textstyles.dart';

class RsvpScreen extends StatefulWidget {
  const RsvpScreen({super.key});

  @override
  State<RsvpScreen> createState() => _RsvpScreenState();
}

class _RsvpScreenState extends State<RsvpScreen> {
  bool isYes = true;
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
                )),
            Icon(
              Icons.menu,
            ),
          ],
        ),
        actions: [
          Text(
            ' Tap to Party ',
            style: AppTextStyles.gfsDidotStyle.copyWith(
              fontSize: 20,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    'Back to dashboard',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      color: Color(0xFF4A4E69),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'RSVP',
                textAlign: TextAlign.center,
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Please let us know if you'll be joining the celebration! \nKindly RSVP by entering your name and response below. \n\nWe can't wait to celebrate with you!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'GFS Didot',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              SizedBox(height: 20),
              CustomInputField(
                hintText: "First Name",
              ),
              SizedBox(height: 15),
              CustomInputField(
                hintText: "Last Name",
              ),
              SizedBox(height: 15),
              CustomInputField(
                hintText: "Email",
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  'Will You attend the event',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  width: 162,
                  height: 36,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFA99F96)),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isYes = true;
                            });
                          },
                          child: Container(
                            height: 36,
                            decoration: ShapeDecoration(
                              color: isYes
                                  ? Color(0xEDF1F0ED)
                                  : Colors.transparent,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFFA99F96)),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Yes',
                                textAlign: TextAlign.center,
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isYes = false;
                            });
                          },
                          child: Container(
                            height: 36,
                            decoration: ShapeDecoration(
                              color: !isYes
                                  ? Color(0xEDF1F0ED)
                                  : Colors.transparent,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFFA99F96)),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'No',
                                textAlign: TextAlign.center,
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  'Will You attend the event',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  width: 162,
                  height: 36,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFA99F96)),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_up,
                        ),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Container(
                  width: 162,
                  height: 49,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4A4E69),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Respond',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        color: Colors.white,
                        fontSize: 16,
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
