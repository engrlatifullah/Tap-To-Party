import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

class TeamMemberDashboard extends StatefulWidget {
  const TeamMemberDashboard({super.key});

  @override
  State<TeamMemberDashboard> createState() => _TeamMemberDashboardState();
}

class _TeamMemberDashboardState extends State<TeamMemberDashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          size: 30,
          color: Colors.black,
        ),
        title: Text(
          'Welcome Mary!',
          style: AppTextStyles.gfsDidotStyle.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 24,
          ),
        ),
        actions: [
          SizedBox(
            height: 70,
            width: 50,
            child: Image(
              image: AssetImage('images/girls2.png'),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    'Your agenda for today',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: TableCalendar(
                      rowHeight: 40,
                      headerVisible: false,
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: DateTime.now(),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 300,
                      color: Colors.grey.shade300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FittedBox(
                            child: Text('Notes for Myself',overflow: TextOverflow.clip,style: AppTextStyles.plusJakartaSans.copyWith(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                          SizedBox(height: 30,),
                          Row(
                            children: [
                              Text('1'),
                              SizedBox(width: 5,),
                              Text('Zoom meeting today',style: AppTextStyles.plusJakartaSans.copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 11,
                              ),)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  color: Color(0xffF1F0ED),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //title
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Task',
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Due Date',
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Priority Level',
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 13.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),

                      //items
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 25,
                                  width: 25,
                                  child: Checkbox(
                                    value: false,
                                    side: BorderSide(color: Colors.grey.shade500),
                                    fillColor: MaterialStateProperty.all(
                                        AppColors.primaryWhite),
                                    onChanged: (v) {},
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Order Supplies",
                                  style: AppTextStyles.plusJakartaSans
                                      .copyWith(fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              'sep 13',
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Expanded(
                              child: ImageIcon(
                            AssetImage('images/flag.png'),
                            color: Colors.yellow,
                          )),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 25,
                                  width: 25,
                                  child: Checkbox(
                                    value: false,
                                    side: BorderSide(color: Colors.grey.shade500),
                                    fillColor: MaterialStateProperty.all(
                                        AppColors.primaryWhite),
                                    onChanged: (v) {},
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Create Menu",
                                  style: AppTextStyles.plusJakartaSans
                                      .copyWith(fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              'sep 15',
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Expanded(
                              child: ImageIcon(
                            AssetImage('images/flag.png'),
                            color: Colors.green,
                          )),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 25,
                                  width: 25,
                                  child: Checkbox(
                                    value: false,
                                    side: BorderSide(color: Colors.grey.shade500),
                                    fillColor: MaterialStateProperty.all(
                                        AppColors.primaryWhite),
                                    onChanged: (v) {},
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Task",
                                  style: AppTextStyles.plusJakartaSans
                                      .copyWith(fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              'sep 6',
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Expanded(
                              child: ImageIcon(
                            AssetImage('images/flag.png'),
                            color: Colors.red,
                          )),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 25,
                                  width: 25,
                                  child: Checkbox(
                                    side: BorderSide(color: Colors.grey.shade500),
                                    fillColor: MaterialStateProperty.all(
                                        AppColors.primaryWhite),
                                    value: false,
                                    onChanged: (v) {},
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Task",
                                  style: AppTextStyles.plusJakartaSans
                                      .copyWith(fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Text(
                              'sep 23',
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Expanded(
                              child: ImageIcon(
                            AssetImage('images/flag.png'),
                            color: Colors.green,
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text('Team Messages',style: AppTextStyles.plusJakartaSans.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),),
                ),
                SizedBox(height: 15,),
              ...List.generate(3, (index) {
                return   Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 52,
                        width: 48,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black)
                        ),
                        child:CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('images/girls3.jpg'),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xff4A4E69)
                              ),
                              color: Color(0xffF1F0ED),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('Can we meet today \nfor the meeting',style: AppTextStyles.plusJakartaSans.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),),
                          ),
                        ),
                      )

                    ],
                  ),
                );
              }),
                Row(
                  children: [
                    Container(
                      height: 52,
                      width: 48,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)
                      ),
                      child:CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('images/girls3.jpg'),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child:TextField(
                        decoration: InputDecoration(
                          hintText: "Write your message here",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    )

                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
