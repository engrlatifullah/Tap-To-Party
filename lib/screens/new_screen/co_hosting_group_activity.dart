import 'package:flutter/material.dart';
import 'package:taptoparty/screens/new_screen/view_pol.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';

import 'chats_two.dart';
import 'create_pol.dart';
import 'date_suggestion.dart';
import 'envits_friend_group.dart';
class CoHostingGroup extends StatelessWidget {
  const CoHostingGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(' Tap to Party ',style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),),
                        Image(image: AssetImage('images/newpic.png'),)
                      ],
                    ),
                    Text('Group Event',style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),),
                    SizedBox(height: 40,),
                    Container(
                      height: 550,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffF1F0ED)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40,),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                leading: Icon(Icons.calendar_today,color: Colors.black,),
                                title: Text('Oct 10th',style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                ),),
                                subtitle: Text('10:30 AM',style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on_outlined,size: 35,color: Colors.black,),
                                    SizedBox(width: 15,),
                                    Text('Lake Lavon',style: AppTextStyles.gfsDidotStyle.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                    ),)
                                  ],
                                ),
                              ),
                              ListTile(
                                leading: Image(
                                  image: AssetImage('images/personpicicon.png'),
                                ),
                                title: Text('Who’s In',style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),),
                                subtitle: Row(
                                  children: [
                                    Text('10 IN -',style: AppTextStyles.gfsDidotStyle.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: Color(0xff4CAF50)
                                    ),),
                                    Text('6 NOT going -',style: AppTextStyles.gfsDidotStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffE53935)
                                    ),),
                                    Text(' 4 Maybe',style: AppTextStyles.gfsDidotStyle.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff4285F4)
                                    ),)
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              SizedBox(
                                height: 60,
                                child: Stack(
                                  clipBehavior: Clip.none,

                                  children: [
                                    SizedBox(
                                      height: 50,
                                        width: 50,
                                        child: Image(image: AssetImage('images/clip1.png'),fit: BoxFit.cover,)),
                                    Positioned(
                                      left: 40,
                                      child: SizedBox(
                                        height: 50,
                                          width: 50,
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage('images/clip2.png'),
                                          ),
                                    )),
                                    Positioned(
                                        left: 80,
                                        child: SizedBox(
                                          height: 50,
                                          width: 50,
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage('images/clip3.png'),
                                          ),
                                        )),
                                    Positioned(
                                        left: 120,
                                        child: SizedBox(
                                          height: 50,
                                          width: 50,
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage('images/clip4.png'),
                                          ),
                                        )),
                                    Positioned(
                                        left: 160,
                                        child: SizedBox(
                                          height: 50,
                                          width: 50,
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage('images/clip5.png'),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                  height: 46,
                                  width: 340,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Center(
                                    child: Text('Invite Friends',style: AppTextStyles.gfsDidotStyle.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                    ),),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                  height: 46,
                                  width: 340,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: GestureDetector(
                                    onTap: (){
                                     showDialog(context: context, builder: (BuildContext context) {
                                       return Dialog(
                                         child: Container(
                                           color: Color(0xffF1F0ED),
                                           child: Padding(
                                             padding: const EdgeInsets.all(15.0),
                                             child: Column(
                                               mainAxisSize: MainAxisSize.min,
                                               children: [
                                                 Container(
                                                   height: 60,
                                                   width: 336,
                                                   color: Color(0xff34A853),
                                                   child: Center(
                                                     child: Text('Yes',style: AppTextStyles.gfsDidotStyle.copyWith(
                                                       fontSize: 24,
                                                       fontWeight: FontWeight.w400,
                                                       color: Colors.white,
                                                     ),),
                                                   ),
                                                 ),
                                                 SizedBox(height: 10,),
                                                 Container(
                                                   height: 60,
                                                   width: 336,
                                                   color: Color(0xff17A1FA),
                                                   child: Center(
                                                     child: Text('May be',style: AppTextStyles.gfsDidotStyle.copyWith(
                                                       fontSize: 24,
                                                       fontWeight: FontWeight.w400,
                                                       color: Colors.white,
                                                     ),),
                                                   ),
                                                 ),
                                                 SizedBox(height: 10,),
                                                 Container(
                                                   height: 60,
                                                   width: 336,
                                                   color: Color(0xffEA4335),
                                                   child: Center(
                                                     child: Text("Cant't",style: AppTextStyles.gfsDidotStyle.copyWith(
                                                       fontSize: 24,
                                                       fontWeight: FontWeight.w400,
                                                       color: Colors.white,
                                                     ),),
                                                   ),
                                                 ),
                                               ],
                                             ),
                                           ),
                                         ),

                                       );
                                     }, );
                                      
                                    },
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 70),
                                          child: Text('Are You Joining ',style: AppTextStyles.gfsDidotStyle.copyWith(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                          ),),
                                        ),
                                        SizedBox(width: 15,),
                                        Icon(Icons.keyboard_arrow_down,color: Colors.black,size: 30,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                  height: 46,
                                  width: 340,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: GestureDetector(
                                    onTap: (){
                                      navigateToPage(context: context, pageName: DateSuggestion());
                                    },
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 80),
                                          child: Text('Decide a Date ',style: AppTextStyles.gfsDidotStyle.copyWith(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                          ),),
                                        ),
                                        SizedBox(width: 10,),
                                        Icon(Icons.keyboard_arrow_down,color: Colors.black,size: 30,)
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text(' Ideas',style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                    SizedBox(height: 10,),
                    Text('Float Ideas And Ask freinds to decide',style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      color: Colors.black,
                    ),),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                        navigateToPage(context: context, pageName: ViewPol());
                      },
                      child: Container(
                        height: 50,
                        width: 340,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffA99F96)
                        ),
                        child: Center(
                          child: Text(' View Poll',style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                        navigateToPage(context: context, pageName: CreatePol());
                      },
                      child: Container(
                        height: 50,
                        width: 340,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                        ),
                        child: Center(
                          child: Text('Create ',style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(' Costs',style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                    ),),
                    SizedBox(height: 10,),
                    Text('Total Bill',style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      width: 340,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffA99F96)
                      ),
                      child: Center(
                        child: Text(' View Detail ',style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text('Group Chat',style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                    ),),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      width: 340,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffA99F96)
                      ),
                      child: Center(
                        child: Text('  View Chat ',style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 95,
                  left: 5,
                  child: InkWell(
                    onTap: (){
                      navigateToPage(context: context, pageName:EnvitsFriendGroup() );
                    },
                    child: Container(
                      height: 46,
                      width: 360,
                      decoration: BoxDecoration(
                          color: Color(0xff4A4E69),
                          borderRadius: BorderRadius.circular(9)
                      ),
                      child: Center(
                        child: Text(' Picnic Party Planning',style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
