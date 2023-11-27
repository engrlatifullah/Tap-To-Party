import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
class ViewPol extends StatelessWidget {
  const ViewPol({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffF1F0ED),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Text(' Ideas',style: AppTextStyles.gfsDidotStyle.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: Colors.black,
              ),),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 55,
                      width: 149,
                      color: Colors.white,
                      child: Center(
                        child: Text('Option 1',style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('8%',style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: Colors.black,
                        ),),
                        SizedBox(height: 10,),
                        Container(
                          height: 8,
                          width: 200,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )

              ],),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 27,
                        width: 132,
                        color: Color(0xff4CAF50),
                        child: Center(
                          child: Text('Option 2',style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('100%',style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            color: Colors.black,
                          ),),
                          SizedBox(height: 10,),
                          Container(
                            height: 8,
                            width: 200,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )

                  ],),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: Row(
                    children: [
                      Icon(Icons.add,size: 30,),
                      SizedBox(width: 10,),
                      Text('Add More Polls',style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),)

                    ],
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
