import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

class CategoryListScreen extends StatelessWidget {
  // const CategoryListScreen({super.key});

  final List<String> categoryTitle = [
    "Tableware",
    "Balloons and Banners",
    "Table Centerpieces",
    "Food Warmers and Dishes",
    "Drink Dispensers",
    "Flowers",
    "Buffet Displays",
    "Lighting",
    "Backdrops",
    "Utensils",
    "Props",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x92F1F0EDED),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.navigate_before),
        ),
        centerTitle: true,
        title: Text(
          'Categories',
          textAlign: TextAlign.center,
          style: AppTextStyles.plusJakartaSans.copyWith(
            color: Color(0xFF222222),
            fontSize: 18,
          ),
        ),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 48,
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
                    child: Center(
                      child: Text(
                        'VIEW ALL ITEMS',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Choose category',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      color: Color(0xFF4A4E69),
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    categoryTitle[index],
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Color(0xFF222222),
                      fontSize: 16,
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  color: Colors.white,
                );
              },
              itemCount: categoryTitle.length,
            )
          ],
        ),
      ),
    );
  }
}
