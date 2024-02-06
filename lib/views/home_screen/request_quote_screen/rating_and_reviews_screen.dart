import 'package:flutter/material.dart';

import '../../../themes/app_textstyles.dart';

class RatingAndReviewScreen extends StatelessWidget {
  const RatingAndReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                15, MediaQuery.of(context).padding.top, 15, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Back to dashboard",
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff4A4E69)),
                      ),
                    )
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        'Rating & Reviews',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Color(0xFF222222),
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '4.3',
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 44,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.41,
                                ),
                              ),
                              Text(
                                '23 ratings',
                                style: TextStyle(
                                  color: Color(0xFF9B9B9B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: List.generate(
                                          5,
                                          (index) => Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Color(0xFFFFBA49),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Container(
                                        width: 114,
                                        height: 8,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFDB3022),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '12',
                                      style: TextStyle(
                                        color: Color(0xFF4F4F4F),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: List.generate(
                                          4,
                                          (index) => Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Color(0xFFFFBA49),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 50,
                                            height: 8,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFDB3022),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '5',
                                      style: TextStyle(
                                        color: Color(0xFF4F4F4F),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: List.generate(
                                          3,
                                          (index) => Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Color(0xFFFFBA49),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 30,
                                            height: 8,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFDB3022),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '4',
                                      style: TextStyle(
                                        color: Color(0xFF4F4F4F),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: List.generate(
                                          2,
                                          (index) => Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Color(0xFFFFBA49),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 20,
                                            height: 8,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFDB3022),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '2',
                                      style: TextStyle(
                                        color: Color(0xFF4F4F4F),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: List.generate(
                                          1,
                                          (index) => Icon(
                                            Icons.star,
                                            size: 15,
                                            color: Color(0xFFFFBA49),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 10,
                                            height: 8,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFDB3022),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '0',
                                      style: TextStyle(
                                        color: Color(0xFF4F4F4F),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '8 reviews',
                            style: TextStyle(
                              color: Color(0xFF222222),
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.41,
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(value: false, onChanged: (v) {}),
                              Text(
                                'With photo',
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                  color: Color(0xFF222222),
                                  fontSize: 14,
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w400,
                                  height: 0.11,
                                  letterSpacing: -0.15,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(15),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          shadows: [
                            BoxShadow(
                              color: Color(0x0C000000),
                              blurRadius: 25,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage: AssetImage("images/3.jpg"),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Helene Moore',
                                        style: AppTextStyles.gfsDidotStyle
                                            .copyWith(
                                          color: Color(0xFF222222),
                                          fontSize: 14,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          ...List.generate(
                                            5,
                                            (index) => Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Color(0XFFFFBA49),
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            'June 5, 2019',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: Color(0xFF9B9B9B),
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7\" and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.",
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Color(0xFF222222),
                                fontSize: 14,
                                fontFamily: 'Plus Jakarta Sans',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.15,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Helpful',
                                  style: TextStyle(
                                    color: Color(0xFF9B9B9B),
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.thumb_up_rounded,
                                  color: Color(0xFF9B9B9B),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Container(
                          width: 140.80,
                          height: 40.61,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: ShapeDecoration(
                            color: Color(0xFF4A4E69),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3FD32525),
                                blurRadius: 8,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Write a review',
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  color: Colors.white,
                                  fontSize: 11,
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
          Align(
              alignment: Alignment.topRight,
              child: Image.asset("images/Ellipse 49 (1).png")),
        ],
      ),
    );
  }
}
