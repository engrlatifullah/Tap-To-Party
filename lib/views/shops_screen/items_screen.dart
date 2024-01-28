import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taptoparty/utils/navigation.dart';

import '../../themes/app_textstyles.dart';
import 'item_detail_screen.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4A4E69),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Tap 'n Trade",
          style: AppTextStyles.gfsDidotStyle.copyWith(
            color: Color(0xEDF1F0ED),
            fontSize: 24,
          ),
        ),
        actions: [
          Column(
            children: [
              SvgPicture.asset(
                "images/inactive.svg",
                height: 24,
              ),
              Text(
                'Bag',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              )
            ],
          ),
          SizedBox(width: 15)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Food & Catering',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset("images/material-symbols-light_sort.svg"),
                    SizedBox(width: 5),
                    Icon(Icons.search),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.55,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(height: 5),
                      GestureDetector(
                        onTap: (){
                          navigateToPage(context: context, pageName: ItemDetailScreen(),);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 145,
                          decoration: ShapeDecoration(
                              color: Color(0xEDF1F0ED),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("images/3.jpg"))),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          ...List.generate(
                              3,
                              (index) => Padding(
                                    padding: const EdgeInsets.only(right: 4),
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.primaries[Random()
                                          .nextInt(Colors.primaries.length)],
                                    ),
                                  )),
                          Spacer(),
                          Text(
                            '+7 Colors',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'BRAND/CATEGORY',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Color(0xFF4A4E69),
                          fontSize: 10,
                          letterSpacing: 0.80,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Product Name",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          ...List.generate(4, (index) {
                            return Icon(
                              Icons.star,
                              size: 15,
                              color: Color(0xFFFFCB3C),
                            );
                          }),
                          SizedBox(width: 10),
                          Text(
                            "32",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "\$1199",
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 18,
                        ),
                      )
                    ],
                  );
                })
          ],
        )),
      ),
    );
  }
}
