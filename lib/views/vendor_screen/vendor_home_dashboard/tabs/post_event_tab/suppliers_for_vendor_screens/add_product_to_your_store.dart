import 'package:flutter/material.dart';

import '../../../../../../themes/app_textstyles.dart';

class AddProductToYourStore extends StatelessWidget {
  const AddProductToYourStore({super.key});

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
                  color: Color(0xff4A4E69)),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 110,
                  height: 30.70,
                  decoration: ShapeDecoration(
                    color: Color(0xEDF1F0ED),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Back to List',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: Color(0xEDF1F0ED),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Title ',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 61.40,
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
                      'Title ',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      height: 140.34,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        )),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Media',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 110,
                                height: 30.70,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: Color(0xFFA99F96)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Upload ',
                                    textAlign: TextAlign.center,
                                    style:
                                        AppTextStyles.plusJakartaSans.copyWith(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Add from URL ',
                                textAlign: TextAlign.center,
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: 214,
                            height: 15.35,
                            child: Text(
                              'Accepted images, videos in JPG and PNG',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Price',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 110,
                      height: 30.70,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: TextField(),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Checkbox( value: true,
                          fillColor: MaterialStateProperty.all(Colors.black),
                          onChanged: (v) {},),
                        SizedBox(width: 10),
                        Text(
                          'charge tax on this product',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Inventory',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Checkbox( value: true,
                          fillColor: MaterialStateProperty.all(Colors.black),
                          onChanged: (v) {},),
                        SizedBox(width: 10),
                        Text(
                          'Track quantity',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'Shipping',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Weight ',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(width: 110,
                      height: 30.70,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: TextField(),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Origin',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 245,
                      height: 31.06,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: TextField(),
                    ),
                    SizedBox(height: 40),
                    Container(
                      width: double.infinity,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'Size',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              height: 31.06,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: TextField(),
                            ),
                          ],
                        ),),
                        SizedBox(width: 20),
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'Color',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              height: 31.06,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: TextField(),
                            ),
                          ],
                        ),),

                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'Option Name',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              height: 31.06,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: TextField(),
                            ),
                          ],
                        ),),
                        SizedBox(width: 20),
                        Expanded(child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'Option Name',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: double.infinity,
                              height: 31.06,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: TextField(),
                            ),
                          ],
                        ),),

                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  width: 146,
                  height: 31.06,
                  decoration: ShapeDecoration(
                    color: Color(0xFF4A4E69),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Color(0xFF4A4E69),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Save ',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.white,
                        fontSize: 12,
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
