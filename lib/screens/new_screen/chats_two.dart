import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
class ChatsTwo extends StatelessWidget {
  const ChatsTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 5,),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffF1F0EDED),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(' Tap to Party ',style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.black,
                    ),),
                    SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,),
                        Text(' Picnic Party ',style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),),
                        Icon(Icons.search_rounded),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [
                Container(
                  height: 40,
                  width: 155,
                  decoration: BoxDecoration(
                      color: Color(0xffA99F96),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(
                    child: Text('Today ',style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.black,
                    ),),
                  ),
                ),
                Text('4:30 pm',style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),)
              ],
            ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(

                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/newpic.png'),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 10),
                      Container(
                        height:40 ,
                        width: 210,
                        color: Color(0xffF1F0ED),
                      ),
                      SizedBox(height: 4),
                      Text('4:30 pm',style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(

                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/newpic2.png'),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 10),
                      Container(
                        height:40 ,
                        width: 280,
                        color: Color(0xffF1F0ED),
                      ),
                      SizedBox(height: 4),
                      Text('4:30 pm',style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),)
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(

                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/clip3.png'),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 10),
                      Container(
                        height:60 ,
                        width: 310,
                        color: Color(0xffF1F0ED),
                      ),
                      SizedBox(height: 4),
                      Text('4:30 pm',style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),)
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
