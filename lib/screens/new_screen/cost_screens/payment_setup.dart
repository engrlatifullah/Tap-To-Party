import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/widget/primary_button.dart';
class PaymentSetup extends StatelessWidget {
  const PaymentSetup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(' Tap to Party ',style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),),
                SizedBox(height: 60,),
                Center(
                  child: Text('PaymentMethods',style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Image(image: AssetImage('images/clip7.png')),
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffF1F0ED),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Select your bank ',
                        suffixIcon: Icon(Icons.search_rounded),
                        border: UnderlineInputBorder(borderSide: BorderSide.none)
                      ),
                    ),
                  ) ,
                ),
                 SizedBox(height: 20,),
                 Center(child: Text('or',style: TextStyle(color: Colors.black,fontSize: 14,),)),
                SizedBox(height: 20,),
                Container(
                  height: 70,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(color: Colors.black)
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search for an alternate method of payment ',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Center(
                  child: SizedBox(
                    width: 200,
                    child: PrimaryButton(title: 'Back to Payments', onTap: (){
                      Navigator.pop(context);
                    }),
                  ),
                )

              ],
            ),
          ),
        ),
      ),

    );
  }
}
