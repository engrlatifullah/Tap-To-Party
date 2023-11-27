import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';

import 'chats.dart';
import 'co_hosting_group_activity.dart';
import 'event_requst_page.dart';
class UserHomeDashboard extends StatefulWidget {
  const UserHomeDashboard({super.key});

  @override
  State<UserHomeDashboard> createState() => _UserHomeDashboardState();
}

class _UserHomeDashboardState extends State<UserHomeDashboard> {
  final List text=[
    " Event",
    "Co-Host",
    "Vendors",
    " Venue",
    "Guests",
    " Invites",
    " Checklist",
    "Messages",
    "Photos",
    "Expenses",
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xff4A4E69),
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(15),),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(' Tap to Party ',style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: AppColors.primaryWhite,
                          )),
                          GestureDetector(
                            onTap: (){
                              navigateToPage(context: context, pageName: ChatsScreen());
                            },
                              child: Image(image: AssetImage('images/newpic.png'),))
                        ],
                      ),
                      SizedBox(height:20,),
                      Text('Hello Maria!     ',style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primaryWhite,
                      ),),
                      SizedBox(height: 20,),
                      Container(
                        height: 46,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffF1F0ED),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Icon(Icons.search_rounded),
                              SizedBox(width: 15,),
                              Text('Lets Create an Event',style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 24,
                                color: Colors.black,
                              ),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){(
                              navigateToPage(context: context, pageName: EventRequstPage()));
                            },
                            child: Text("Create Event Request",style: AppTextStyles.gfsDidotStyle.copyWith(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primaryWhite,
                            ),),
                          ),
                          SizedBox(width: 30,),
                          InkWell(
                            onTap: (){
                              navigateToPage(context: context, pageName: CoHostingGroup());
                            },
                            child: Text('Add a Co-Host or \n a Group Event',style: AppTextStyles.gfsDidotStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              color: AppColors.primaryWhite,
                            ),),
                          )
                        ],
                      ),
                      Center(
                        child: SizedBox(
                          height: 220,
                            width: 280,
                            child: Image(image: AssetImage('images/budget.png'),fit: BoxFit.cover,),),
                      ),
                      Center(
                        child: Text('Over view of your Event', style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryWhite,
                        ),),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 490),
                  child: GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.all(15),
                    itemCount: text.length,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 30,
                        crossAxisSpacing: 20,
                        childAspectRatio: 3,


                      ),
                    itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 75,
                          width: 140,
                          decoration: BoxDecoration(
                            color: Color(0xffF1F0ED),
                            borderRadius: BorderRadius.circular(9)
                          ),
                          child: Center(
                            child: Text(text[index]
                            ),
                          ),
                        );
                    },
                      ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
