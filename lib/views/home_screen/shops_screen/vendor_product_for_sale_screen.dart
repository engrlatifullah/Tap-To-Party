import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';

import 'category_screen.dart';
import 'checkout_screen.dart';

class VendorProductForSaleScreen extends StatelessWidget {
  const VendorProductForSaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            decoration: BoxDecoration(color: Color(0xFF4A4E69)),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.navigate_before,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ],
                ),
                Text(
                  "Tap 'n Trade",
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    color: Color(0xEDF1F0ED),
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Vendor Emporium & Party Haven"',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Color(0xEDF1F0ED),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: Color(0xEDF1F0ED),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 10),
                                  hintText: "Search",
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  focusedBorder: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.search)),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 26,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: ShapeDecoration(
                                  color: Color(0xFFF5F5F5),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Party Supplies',
                                    textAlign: TextAlign.center,
                                    style: AppTextStyles.gfsDidotStyle.copyWith(
                                      color: Color(0xFF222222),
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 26,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: ShapeDecoration(
                                  color: Color(0xFFA99F96),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Food & Catering',
                                    textAlign: TextAlign.center,
                                    style: AppTextStyles.gfsDidotStyle.copyWith(
                                      color: Color(0xFF222222),
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 26,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: ShapeDecoration(
                                  color: Color(0xFFF5F5F5),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Decorations',
                                    textAlign: TextAlign.center,
                                    style: AppTextStyles.gfsDidotStyle.copyWith(
                                      color: Color(0xFF222222),
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Sort Products',
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(color: Colors.white),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Price Range ',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Checkbox(
                                      value: false,
                                      onChanged: (v) {},
                                      activeColor: Color(0x92F1F0EDED),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Color(0xFFA99F96),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Newest",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Checkbox(
                                      value: false,
                                      onChanged: (v) {},
                                      activeColor: Color(0x92F1F0EDED),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Color(0xFFA99F96),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'On Sale',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Checkbox(
                                      value: false,
                                      onChanged: (v) {},
                                      activeColor: Color(0x92F1F0EDED),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Color(0xFFA99F96),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 96,
                                height: 34,
                                decoration: ShapeDecoration(
                                  color: Color(0xEDF1F0ED),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                      color: Color(0xFF4A4E69),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Reset',
                                    style: TextStyle(
                                      color: Color(0xFF4A4E69),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 96,
                                height: 34,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF4A4E69),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                child: Center(
                                  child: Text(
                                    'Done',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: Color(0xEDF1F0ED),
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
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 132,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/7.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: 81,
                                  height: 34,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF4A4E69),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Shop',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          GridView.builder(
                            itemCount: 4,
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Container(
                                    width: 165,
                                    height: 99,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage("images/5.jpg"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  GestureDetector(
                                    onTap: () {
                                      navigateToPage(
                                        context: context,
                                        pageName: CategoryScreen(),
                                      );
                                    },
                                    child: Container(
                                      width: 164,
                                      height: 26,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF4A4E69),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Shop Now',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            },
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 20,
                                    childAspectRatio: 1.19),
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              navigateToPage(
                                context: context,
                                pageName: CheckOut(),
                              );
                            },
                            child: Container(
                              width: 152,
                              height: 34,
                              decoration: ShapeDecoration(
                                color: Color(0xFF4A4E69),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Check Out',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
