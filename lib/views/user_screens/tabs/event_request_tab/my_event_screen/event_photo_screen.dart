import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../themes/app_textstyles.dart';
import '../../../../../utils/navigation.dart';
import 'event_registry_screen.dart';

class EventPhotoScreen extends StatelessWidget {
  const EventPhotoScreen({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: [
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
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Event Details',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Icon(Icons.edit),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 133,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/13 2.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Center(
                child: Text(
                  ' Share and cherish every precious moment, creating lasting memories for years to come."',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(width: 5),
                      Text(
                        'Add Albums',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Color(0xFF4A4E69),
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Album Title',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: 150,
                            height: 141,
                            padding: EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFFA99F96)),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.delete_outline,
                                    color: Colors.grey,
                                  ),
                                ),
                                SvgPicture.asset("images/ph_image-thin.svg"),
                                SizedBox(),
                              ],
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Album Title',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: 150,
                            height: 141,
                            padding: EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFFA99F96)),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.delete_outline,
                                    color: Colors.grey,
                                  ),
                                ),
                                SvgPicture.asset("images/ph_image-thin.svg"),
                                SizedBox(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 80),
                  GestureDetector(
                    onTap: () {
                      navigateToPage(
                        context: context,
                        pageName: EventRegistryScreen(),
                      );
                    },
                    child: Center(
                      child: Container(
                        width: 162,
                        height: 49,
                        decoration: ShapeDecoration(
                          color: Color(0xFF4A4E69),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Save',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Colors.white,
                              fontSize: 16,
                            ),
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
    );
  }
}
