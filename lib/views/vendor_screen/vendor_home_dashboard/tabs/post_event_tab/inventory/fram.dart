import 'package:flutter/material.dart';

import '../../../../../../themes/app_textstyles.dart';

class Frame extends StatefulWidget {
  const Frame({super.key});

  @override
  State<Frame> createState() => _FrameState();
}

class _FrameState extends State<Frame> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "+ New products",
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontSize: 9,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: ShapeDecoration(
                  color: Color(0xEDF1F0ED),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 199,
                      height: 94,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Center(
                          child: Text(
                            'Add  Images',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.plusJakartaSans.copyWith(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),),
                    ),
                    SizedBox(height: 30),

                    Text(
                      'Product Info',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name ',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              height: 31,
                              decoration: BoxDecoration(color: Colors.white),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(borderSide: BorderSide.none),
                                  focusedBorder: OutlineInputBorder(),
                                ),
                              ),
                            )
                          ],
                        ),),
                        SizedBox(width: 20),
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Category  ',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              height: 31,
                              decoration: BoxDecoration(color: Colors.white),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(borderSide: BorderSide.none),
                                  focusedBorder: OutlineInputBorder(),
                                ),
                              ),
                            )
                          ],
                        ),),
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Name ',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              height: 31,
                              decoration: BoxDecoration(color: Colors.white),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(borderSide: BorderSide.none),
                                  focusedBorder: OutlineInputBorder(),
                                ),
                              ),
                            )
                          ],
                        ),),
                        SizedBox(width: 20),
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Category  ',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              height: 31,
                              decoration: BoxDecoration(color: Colors.white),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(borderSide: BorderSide.none),
                                  focusedBorder: OutlineInputBorder(),
                                ),
                              ),
                            )
                          ],
                        ),),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Description',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              height: 100,
                              decoration: BoxDecoration(color: Colors.white),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(borderSide: BorderSide.none),
                                  focusedBorder: OutlineInputBorder(),
                                ),
                              ),
                            )
                          ],
                        ),),
                        SizedBox(width: 20),
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Last ordered from',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              height: 31,
                              decoration: BoxDecoration(color: Colors.white),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(borderSide: BorderSide.none),
                                  focusedBorder: OutlineInputBorder(),
                                ),
                              ),
                            )
                          ],
                        ),),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              height: 31,
                              decoration: BoxDecoration(color: Colors.white),
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.attach_money_sharp),
                                  border: OutlineInputBorder(borderSide: BorderSide.none),
                                  focusedBorder: OutlineInputBorder(),
                                ),
                              ),
                            )
                          ],
                        ),),
                        SizedBox(width: 20),
                        Expanded(child: SizedBox()),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(width: 94,
                          height: 25,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Cancel",
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 94,
                          height: 25,
                          decoration: ShapeDecoration(
                            color: Color(0xFF4A4E69),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Save",
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 12,color: Colors.white
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
