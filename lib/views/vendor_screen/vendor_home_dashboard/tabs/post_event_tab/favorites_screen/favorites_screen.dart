import 'package:flutter/material.dart';

import '../../../../../../themes/app_textstyles.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

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
              SizedBox(height: 20),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Favourites ',
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: 116,
                height: 55,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(),
                child: Row(
                  children: [
                    Container(
                      width: 51,
                      height: 35,
                      decoration: ShapeDecoration(
                        color: Color(0xEDF1F0ED),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Center(
                        child: Icon(Icons.menu),
                      ),
                    ),
                    Container(
                      width: 51,
                      height: 35,
                      decoration: ShapeDecoration(
                        color: Color(0xFFA99F96),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Icon(Icons.window),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 27,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: ShapeDecoration(
                      color: Color(0xEDF1F0ED),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Events',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Color(0xFF4A4E69),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 27,
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
                        'Vendors',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Color(0xFF4A4E69),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 27,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: ShapeDecoration(
                      color: Color(0xFF4A4E69),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Venues',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 27,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: ShapeDecoration(
                      color: Color(0xFF6F6862),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Themes',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 178,
                    height: 150,
                    decoration: ShapeDecoration(
                      color: Color(0xFFA99F96),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Vendor Name',
                                textAlign: TextAlign.center,
                                style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Category',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Contact',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
