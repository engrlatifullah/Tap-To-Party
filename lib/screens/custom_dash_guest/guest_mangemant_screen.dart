import 'package:flutter/material.dart';
import 'package:taptoparty/screens/custom_dash_guest/tabs/evite_tab.dart';
import 'package:taptoparty/screens/custom_dash_guest/tabs/guest_list_tab.dart';
import 'package:taptoparty/screens/custom_dash_guest/tabs/notificationtab.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
class GuestManagementScreen extends StatefulWidget {
  const GuestManagementScreen({super.key});

  @override
  State<GuestManagementScreen> createState() => _GuestManagementScreenState();
}

class _GuestManagementScreenState extends State<GuestManagementScreen> {
  int _currentIndex=0;
  final List tabs = [
    GuestListTab(),
    EviteTab(),
    NotificationScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu,size: 35,color: Colors.black,),
        title: Text(' Tap to Party ',style: AppTextStyles.gfsDidotStyle.copyWith(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text('Guest Management Overview',style: AppTextStyles.gfsDidotStyle.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        _currentIndex=0;
                        setState(() {

                        });
                      },
                      child: Column(
                        children: [
                          Text('Guest list',style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),),
                          SizedBox(height: 10,),

                          _currentIndex == 0 ? Container(
                            height: 2,
                            width: 80,
                            color: AppColors.primaryBlack,
                          ) : SizedBox()


                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        _currentIndex=1;
                        setState(() {

                        });
                      },
                      child: Column(
                        children: [
                          Text('Evites'  ,style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),),
                          SizedBox(height: 10,),

                          _currentIndex == 1 ? Container(
                            height: 2,
                            width: 80,
                            color: AppColors.primaryBlack,
                          ) : SizedBox()

                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        _currentIndex=2;
                        setState(() {

                        });
                      },
                      child: Column(
                        children: [
                          Text(' Notifications'  ,style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),),
                          SizedBox(height: 10,),

                          _currentIndex == 2 ? Container(
                            height: 2,
                            width: 80,
                            color: AppColors.primaryBlack,
                          ) : SizedBox()

                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              tabs[_currentIndex]


            ],
          ),
        ),
      ),
    );
  }
}
