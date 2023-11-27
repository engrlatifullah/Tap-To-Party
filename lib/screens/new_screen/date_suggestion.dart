import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:taptoparty/screens/new_screen/who_is_in.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/widget/primary_button.dart';
class DateSuggestion extends StatelessWidget {
  const DateSuggestion({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Decide a Date',style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),),
                  SizedBox(width: 20,),
                  Image(
                    image: AssetImage('images/clip15.png'),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Text('Maria is suggesting few dates for the event ',style: AppTextStyles.gfsDidotStyle.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black,
              ),),
              Text('See what Dates suit you most ',style: AppTextStyles.gfsDidotStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,

              ),),
              SizedBox(
                height: 20,
              ),
              ...List.generate(3, (index) {
                return  Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: DottedBorder(

                    borderType: BorderType.RRect,
                    radius: Radius.circular(12),
                    child: Container(

                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text('Oct 7th, Saturday ',style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.black,
                                ),),
                                Text('10:30 AM - 4:30 PM',style: AppTextStyles.gfsDidotStyle.copyWith(
                                  fontSize: 14,
                                ),)
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.green,
                                  width: 2.5,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.done,color: Colors.green,)),
                          SizedBox(width: 20,),
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.close,color: Colors.white,)),
                          SizedBox(width: 20,),
                          Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.blueAccent,
                                  width: 2.5,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.question_mark_outlined,color: Colors.blueAccent,)),
                        ],
                      ),
                    ),),
                );
              }),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: PrimaryButton(title: 'Finalise', onTap: (){
                  navigateToPage(context: context, pageName: WhoIsIn());
                }),
              )
         



            ],
          ),
        ),
      ),
    );
  }
}
