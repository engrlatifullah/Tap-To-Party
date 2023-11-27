import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
class CoHosting extends StatelessWidget {
  const CoHosting({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Color(0xff4A4E69),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(' Tap to Party ',style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.white,
                      ),),
                      SizedBox(height: 15,),
                      Center(
                        child: Text('Event Group',style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 46,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xffF1F0ED),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text(' Engagement Planning',style: AppTextStyles.gfsDidotStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                              color: Colors.black,
                            ),),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 20),
                        child: Text('Co-Hosts',style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),),
                      ),

                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xffF1F0ED),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(25)
                                    )
                                  ),
                                ),
                                SizedBox(height: 10,),

                                TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Color(0xffF1F0ED),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(25)
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Image(image: AssetImage('images/clip11.png'),)

                        ],
                      )

                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 260,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Color(0xffF1F0ED),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text('Check \nLists',style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: Colors.black,
                              ),),
                              ...List.generate(4, (index)  {
                                return Row(
                                  children: [
                                    Checkbox(
                                        fillColor: MaterialStateProperty.all(Colors.white),
                                        value: false, onChanged: (v){}),
                                    SizedBox(width: 20,),
                                    Container(
                                      height: 16,
                                      width: 76,
                                      color: Colors.white,
                                    )
                                  ],
                                );
                              })

                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        height: 260,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color(0xffF1F0ED),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text('Expenses',style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                color: Colors.black,
                              ),),
                          SizedBox(height: 25,),
                          Row(
                            children: [
                              Text('Total Budget',style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),),
                              SizedBox(width: 5,),
                              Expanded(
                                child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),
                              )


                            ],),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Text('Spent',style: AppTextStyles.gfsDidotStyle.copyWith(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ),),
                                  SizedBox(width: 20,),
                                  Expanded(
                                    child: SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            fillColor: Colors.white,
                                            filled: true,
                                            border: InputBorder.none
                                        ),
                                      ),
                                    ),
                                  )


                                ],),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Text('Pending ',style: AppTextStyles.gfsDidotStyle.copyWith(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ),),
                                  SizedBox(width: 5,),
                                  Expanded(
                                    child: SizedBox(
                                      width: 30,
                                      height: 30,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            fillColor: Colors.white,
                                            filled: true,
                                            border: InputBorder.none
                                        ),
                                      ),
                                    ),
                                  )


                                ],),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 126,
                width: 390,
                decoration: BoxDecoration(
                  color: Color(0xffF1F0ED),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text('Ideas ',style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black,
                    ),),
                    SizedBox(height: 10,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Text('upload pics ',style: AppTextStyles.gfsDidotStyle.copyWith(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                            ),),
                            Image(image: AssetImage('images/clip12.png'),),
                            Image(
                              image: AssetImage('images/clip13.png'),
                            ),
                            Image(image: AssetImage('images/clip14.png'))

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 165,
                width: 390,
                decoration: BoxDecoration(
                  color: Color(0xffF1F0ED),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Messaging',style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage('images/personicon.png'),
                          ),
                          SizedBox(width: 30,),
                          Container(
                            height: 38,
                            width: 270,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text('Did you check the invitation card',style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),),
                            ),
                          )

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Image(
                            image: AssetImage('images/person2.png'),
                          ),
                          SizedBox(width: 30,),
                          Container(
                            height: 38,
                            width: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text('Yes, I like it',style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                              ),),
                            ),
                          )

                        ],
                      ),
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
