import 'package:flutter/material.dart';

import '../../themes/app_textstyles.dart';
class EnvitsFriendGroup extends StatefulWidget {
  const EnvitsFriendGroup({super.key});

  @override
  State<EnvitsFriendGroup> createState() => _EnvitsFriendGroupState();
}

class _EnvitsFriendGroupState extends State<EnvitsFriendGroup> {
  bool ischecked=false;
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height:200 ,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffF1F0ED)
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(' Tap to Party ',style: AppTextStyles.gfsDidotStyle.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),),
                            Image(image: AssetImage('images/newpic.png'),)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Text('Event Group',style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                        ),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text('Invite Group by Importing Contacts or Manually \nor Share a link  ',style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _currentIndex=0;
                          });
                        },
                        child: Container(
                          height: 38,
                          width: 139,
                          decoration: BoxDecoration(
                            color: _currentIndex==0? Color(0xff4A4E69):Colors.grey,
                            borderRadius: BorderRadius.circular(9)
                          ),
                          child: Center(
                            child: Text('Contacts',style: AppTextStyles.gfsDidotStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              color: Colors.white,
                            ),),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){
                         setState(() {
                           _currentIndex=1;
                         });
                        },
                        child: Container(
                          height: 38,
                          width: 139,
                          decoration: BoxDecoration(
                              color: _currentIndex==1?Color(0xff4A4E69):Colors.grey,
                              borderRadius: BorderRadius.circular(9)
                          ),
                          child: Center(
                            child: Text('Manually ',style: AppTextStyles.gfsDidotStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              color: Colors.white,
                            ),),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _currentIndex=2;
                          });
                        },
                        child: Container(
                          height: 38,
                          width: 139,
                          decoration: BoxDecoration(
                              color: _currentIndex==2?Color(0xff4A4E69):Colors.grey,
                              borderRadius: BorderRadius.circular(9)
                          ),
                          child: Center(
                            child: Text('Share a Link',style: AppTextStyles.gfsDidotStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                              color: Colors.white,
                            ),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search_rounded)
                  ),
                ),
                SizedBox(height: 20,),
                Row(children: [
                  Text('Contacts',style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),),
                  Spacer(),
                  Text('Select all',style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.black,
                  ),),
                  Checkbox(
                      value: ischecked,
                      fillColor: MaterialStateProperty.all(Colors.white),
                      checkColor: Colors.green,
                      onChanged: (v){
                    setState(() {
                      ischecked=v!;

                    });

                      })
                ],),
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black)
                  ),
                  child: ListTile(
                    leading: Icon(Icons.person_outline),
                    title: Text('Name',style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),),
                    subtitle: Text('Phone Number',style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),),
                    trailing: Icon(Icons.add,color: Colors.black,size: 30,),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)
                  ),
                  child: ListTile(
                    leading: Icon(Icons.person_outline),
                    title: Text('Name',style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),),
                    subtitle: Text('Phone Number',style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),),
                    trailing: Icon(Icons.add,color: Colors.black,size: 30,),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black)
                  ),
                  child: ListTile(
                    leading: Icon(Icons.person_outline),
                    title: Text('Name',style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),),
                    subtitle: Text('Phone Number',style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                    ),),
                    trailing: Icon(Icons.add,color: Colors.black,size: 30,),
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

