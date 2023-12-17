import 'package:flutter/material.dart';

import '../../../../../../../themes/app_colors.dart';
import '../../../../../../../themes/app_textstyles.dart';

class PostAnEventScreen extends StatelessWidget {
  const PostAnEventScreen({super.key});

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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tap To Party",
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
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
            ),
            SizedBox(height: 50),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 10, top: 60, bottom: 30),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.grey.shade200, AppColors.mainColor])),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        children: [
                          Text(
                            'Share link',
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(width: 10),
                          ImageIcon(
                            AssetImage("images/ri_links-line.png"),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Title of Event',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 276,
                        height: 34,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1)),
                        ),
                        child: TextField(),
                      ),
                      SizedBox(height: 15),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Tagline',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: ' (optional)',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 276,
                        height: 34,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1)),
                        ),
                        child: TextField(),
                      ),
                      SizedBox(height: 15),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Description',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            TextSpan(
                              text: ' (optional)',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 286,
                        height: 80,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1)),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            'Location',
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.location_on),
                          Spacer(),
                          Column(
                            children: [
                              Text(
                                'Date     Time',
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                  height: 0,
                                ),
                              ),
                              SizedBox(height: 10),
                              Image.asset("images/Vector.png"),
                            ],
                          ),
                          SizedBox(width: 30)
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Price Range",
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 276,
                        height: 34,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1)),
                        ),
                        child: TextField(),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Add Cover image',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 281,
                        height: 80,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFF1170AF)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Icon(Icons.image),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Add Cover image',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(3, (index) {
                          return Container(
                            width: 95,
                            height: 74,
                            decoration:
                                BoxDecoration(color: Color(0xFFF1F0EDED)),
                            child: Container(
                              width: 71,
                              height: 56,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0xEDF1F0ED),
                                  border: Border.all(color: Colors.black38)),
                              child: Icon(
                                Icons.add,
                                color: Color(0xFF1270B0),
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Container(
                          width: 162,
                          height: 41,
                          decoration: ShapeDecoration(
                            color: Color(0xEDF1F0ED),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Post',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                color: Colors.black,
                                fontSize: 20,
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
                Positioned(
                    right: 20,
                    child:
                        Image.asset("images/eventos-tic-g2g-T9h6k6L2h4.png")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
