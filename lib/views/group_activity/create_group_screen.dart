import 'package:flutter/material.dart';

import '../../themes/app_textstyles.dart';

class CreateGroupScreen extends StatelessWidget {
  const CreateGroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 72,
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
          SizedBox(
            width: 15,
          )
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
            Container(
              width: double.infinity,
              decoration: ShapeDecoration(
                color: Color(0xEDF1F0ED),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      'Create Group',
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 32,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Group',
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Picnic plan',
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 20,
                    decoration: BoxDecoration(color: Color(0xFF4A4E69)),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Members',
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ListView.separated(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  return Row(
                                    children: [
                                      Icon(Icons.person_pin),
                                      SizedBox(width: 10),
                                      Text(
                                        'Name',
                                        style: AppTextStyles.gfsDidotStyle
                                            .copyWith(
                                          fontSize: 14,
                                        ),
                                      )
                                    ],
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return SizedBox(height: 10);
                                },
                                itemCount: 4,
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              flex: 2,
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(5),
                                decoration:
                                    BoxDecoration(color: Color(0xFFA99F96)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage:
                                              AssetImage("images/5.jpg"),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          'Maria',
                                          style: AppTextStyles.gfsDidotStyle
                                              .copyWith(
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 14,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          decoration: BoxDecoration(
                                              color: Color(0xFFD9D9D9)),
                                          child: Center(
                                            child: Text(
                                              'Edit Profile',
                                              style: AppTextStyles.gfsDidotStyle
                                                  .copyWith(
                                                color: Color(0xFF4A4E69),
                                                fontSize: 10,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Container(
                                          height: 14,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          decoration: BoxDecoration(
                                              color: Color(0xFFD9D9D9)),
                                          child: Center(
                                            child: Text(
                                              'Upload Profile Picture',
                                              style: AppTextStyles.gfsDidotStyle
                                                  .copyWith(
                                                color: Color(0xFF4A4E69),
                                                fontSize: 10,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Type your message here',
                                      style:
                                          AppTextStyles.gfsDidotStyle.copyWith(
                                        color: Color(0xFF4A4E69),
                                        fontSize: 14,
                                      ),
                                    ),
                                    Container(
                                      width: 248,
                                      height: 70,
                                      decoration: ShapeDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment(0.00, -1.00),
                                          end: Alignment(0, 1),
                                          colors: [
                                            Colors.white,
                                            Colors.white.withOpacity(0)
                                          ],
                                        ),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              width: 1,
                                              color: Color(0xFF4A4E69)),
                                        ),
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: UnderlineInputBorder(
                                                borderSide: BorderSide.none)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
