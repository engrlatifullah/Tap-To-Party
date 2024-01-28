import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

class WhoIsInScreen extends StatelessWidget {
  const WhoIsInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    ' Tap to Party ',
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 21,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 110,
                    width: double.infinity,
                    decoration: ShapeDecoration(
                      color: Color(0xEDF1F0ED),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Who Is Joining',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              '5',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff51B960)),
                            ),
                            Text(
                              'Yes',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '3',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: Colors.red,
                              ),
                            ),
                            Text(
                              'No',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '2',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff17A1FA)),
                            ),
                            Text(
                              'Maybe',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 33,
                            width: 86,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Center(
                              child: Text(
                                'All',
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 17,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 33,
                            width: 86,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Center(
                              child: Text(
                                'Filter',
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 17,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(color: Color(0xffF1F0ED)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          DottedBorder(
                            borderType: BorderType.Rect,
                            radius: Radius.circular(12),
                            child: Container(
                              height: 70,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Image(
                                      image: AssetImage('images/clip2.png'),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Nicole ',
                                      style:
                                          AppTextStyles.gfsDidotStyle.copyWith(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.green,
                                            width: 2.5,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.done,
                                          color: Colors.green,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          DottedBorder(
                            borderType: BorderType.Rect,
                            radius: Radius.circular(12),
                            child: Container(
                              height: 70,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Image(
                                      image: AssetImage('images/newpic2.png'),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'jack ',
                                      style:
                                          AppTextStyles.gfsDidotStyle.copyWith(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.close,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          DottedBorder(
                            borderType: BorderType.Rect,
                            radius: Radius.circular(12),
                            child: Container(
                              height: 70,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Image(
                                      image: AssetImage('images/clip3.png'),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Mike  ',
                                      style:
                                          AppTextStyles.gfsDidotStyle.copyWith(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                        height: 30,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xff17A1FA)),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Icon(
                                          Icons.question_mark,
                                          color: Color(0xff17A1FA),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            width: 175,
                            height: 38,
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
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'Invite More',
                                textAlign: TextAlign.center,
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
