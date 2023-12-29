import 'package:flutter/material.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/widget/primary_button.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_textstyles.dart';
import 'add_client_screen.dart';

class ClientListOverviewScreen extends StatelessWidget {
  const ClientListOverviewScreen({super.key});

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
                  color: AppColors.mainColor),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              'Clients List',
              textAlign: TextAlign.center,
              style: AppTextStyles.gfsDidotStyle.copyWith(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  navigateToPage(
                    context: context,
                    pageName: AddClientScreen(),
                  );
                },
                child: Container(
                    width: 94,
                    height: 25,
                    decoration: ShapeDecoration(
                      color: Color(0xFF4A4E69),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Center(
                      child: Text(
                        '+ Add Client',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    )),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 361,
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFFA99F96),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Name',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Phone',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Email',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Upcoming Event',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 16,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0xFF4A4E69)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Dan Smith',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        '429 346 7892',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'd@gmail.com',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Birthday',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 20);
              },
              itemCount: 4,
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
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
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 120,
              child: PrimaryButton(title: 'Save', onTap: () {}),
            )
          ],
        ),
      ),
    );
  }
}
