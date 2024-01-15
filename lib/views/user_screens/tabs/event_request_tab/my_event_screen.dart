import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

class MyEventScreen extends StatelessWidget {
  const MyEventScreen({super.key});

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
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Back to dashboard',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.gfsDidotStyle
                        .copyWith(color: Color(0xFF4A4E69), fontSize: 12),
                  ),
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    decoration: ShapeDecoration(
                      color: Color(0xEDF1F0ED),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Center(
                          child: Text(
                            'Keep a track of your Occasions',
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'My Upcoming Events',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 20),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 79,
                                  height: 60,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF4A4E69),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Alisha’s Birthday',
                                          textAlign: TextAlign.center,
                                          style: AppTextStyles.plusJakartaSans
                                              .copyWith(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.edit,
                                              color: Color(0xFF4A4E69),
                                            ),
                                            Icon(
                                              Icons.delete_outlined,
                                              color: Color(0xFF4A4E69),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Text(
                                      '11/27/23 at 4:30 pm',
                                      textAlign: TextAlign.center,
                                      style: AppTextStyles.plusJakartaSans
                                          .copyWith(
                                        color: Color(0xFF4A4E69),
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      'Bowling Alley',
                                      textAlign: TextAlign.center,
                                      style: AppTextStyles.plusJakartaSans
                                          .copyWith(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                ))
                              ],
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(height: 10);
                          },
                          itemCount: 5,
                        ),
                        SizedBox(height: 20),
                        Row(children: [
                          Text(
                            'Add New Event',
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.add),
                        ]),
                        SizedBox(height: 20),
                        Text(
                          'My Past Events',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                        SizedBox(height: 30),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 79,
                              height: 60,
                              decoration: ShapeDecoration(
                                color: Color(0xFF4A4E69),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Alisha’s Birthday',
                                      textAlign: TextAlign.center,
                                      style: AppTextStyles.plusJakartaSans
                                          .copyWith(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.edit,
                                          color: Color(0xFF4A4E69),
                                        ),
                                        Icon(
                                          Icons.delete_outlined,
                                          color: Color(0xFF4A4E69),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Text(
                                  '11/27/23 at 4:30 pm',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.plusJakartaSans.copyWith(
                                    color: Color(0xFF4A4E69),
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Bowling Alley',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.plusJakartaSans.copyWith(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 10,
                      top: -20,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("images/5.jpg"),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
