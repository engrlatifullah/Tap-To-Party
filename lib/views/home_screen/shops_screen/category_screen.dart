import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';

import 'category_list_screen.dart';
import 'items_screen.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final List<String> tabTitle = [
    "Food & Catering",
    "Party Supplies",
    "Decorations"
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: AppBar(
        leadingWidth: 72,
        backgroundColor: Color(0xFFF9F9F9),
        leading: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.navigate_before),
            ),
            SizedBox(width: 5),
            Icon(Icons.menu)
          ],
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Exclusive Products from our Service Providers',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(tabTitle.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          tabTitle[index],
                          textAlign: TextAlign.center,
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: 96,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: currentIndex == index
                                    ? Color(0xFFA99F96)
                                    : Colors.transparent,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.navigate_before),
                  GestureDetector(
                    onTap: () {
                      navigateToPage(
                        context: context,
                        pageName: CategoryListScreen(),
                      );
                    },
                    child: Text(
                      'View All Items',
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        color: Color(0xFF4A4E69),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Icon(Icons.search)
                ],
              ),
              SizedBox(height: 20),
              ...List.generate(5, (index) {
                return GestureDetector(
                  onTap: () {
                    navigateToPage(context: context, pageName: ItemsScreen());
                  },
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    padding: EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      shadows: [
                        BoxShadow(
                          color: Color(0x14000000),
                          blurRadius: 25,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Decorations',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '200 Products',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Container(
                          width: 140.07,
                          height: 117,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/5.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
              SizedBox(height: 30),
              Container(
                width: 188,
                height: 62,
                decoration: ShapeDecoration(
                  color: Color(0xFF4A4E69),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: 25,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    'Buy Now',
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
        ),
      ),
    );
  }
}
