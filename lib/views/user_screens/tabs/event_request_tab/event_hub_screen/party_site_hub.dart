import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../themes/app_textstyles.dart';

class PartySiteHubScreen extends StatelessWidget {
  const PartySiteHubScreen({super.key});

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
            children: [
              Align(
                alignment: Alignment.centerRight,
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
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: ShapeDecoration(
                      color: Color(0xEDF1F0ED),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Party Site Hub',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 4),
                        SvgPicture.asset(
                            width: 24,
                            height: 24,
                            "images/material-symbols-light_view-day-outline.svg"),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: ShapeDecoration(
                      color: Color(0xEDF1F0ED),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'View',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 4),
                        SvgPicture.asset("images/lucide_view.svg"),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 35,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: ShapeDecoration(
                      color: Color(0xEDF1F0ED),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Share UR',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 4),
                        SvgPicture.asset(
                            "images/material-symbols-light_share-outline.svg"),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ListTile(
                contentPadding: EdgeInsets.zero,
                visualDensity: VisualDensity(vertical: -3),
                dense: true,
                leading: Text(
                  'Event Detail',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                trailing: FittedBox(
                  child: Row(
                    children: [
                      Text(
                        'Edit Detail',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.black,
                          fontSize: 11,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.remove_red_eye)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                contentPadding: EdgeInsets.zero,
                visualDensity: VisualDensity(vertical: -3),
                dense: true,
                leading: Text(
                  'Photos',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                trailing: FittedBox(
                  child: Row(
                    children: [
                      Text(
                        'Add Photos & Videos',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.black,
                          fontSize: 11,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.remove_red_eye)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                contentPadding: EdgeInsets.zero,
                visualDensity: VisualDensity(vertical: -3),
                dense: true,
                leading: Text(
                  'Registry',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                trailing: FittedBox(
                  child: Row(
                    children: [
                      Text(
                        'Add Registry URL',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.black,
                          fontSize: 11,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.remove_red_eye)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                contentPadding: EdgeInsets.zero,
                visualDensity: VisualDensity(vertical: -3),
                dense: true,
                leading: Text(
                  'Guest Journal',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                trailing: FittedBox(
                  child: Row(
                    children: [
                      Text(
                        'Send Messages to Guests',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.black,
                          fontSize: 11,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.remove_red_eye)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                contentPadding: EdgeInsets.zero,
                visualDensity: VisualDensity(vertical: -3),
                dense: true,
                leading: Text(
                  'RSVP',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                trailing: FittedBox(
                  child: Row(
                    children: [
                      Text(
                        'Manage RSVP',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.black,
                          fontSize: 11,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.remove_red_eye)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
