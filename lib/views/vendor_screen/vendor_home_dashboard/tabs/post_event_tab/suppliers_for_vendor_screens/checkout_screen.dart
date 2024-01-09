import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/suppliers_for_vendor_screens/product_payment_screen.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F0EDED),
      appBar: AppBar(
        backgroundColor: Colors.transparent,elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: ()=>Navigator.of(context),
          child: Container(
            width: 45,
            height: 45,margin: EdgeInsets.all(10),
            decoration: ShapeDecoration(
              color: Color(0xFFFEFEFE),
              shape: OvalBorder(),
            ),
            child: Icon(Icons.arrow_back),
          ),
        ),
        title: Text(
          'Cart',
          style: AppTextStyles.plusJakartaSans.copyWith(
            color: Color(0xFF1D1E20),
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Badge(
            label: Text("5"),
            child: Container(
              width: 45,
              height: 45,
              decoration: ShapeDecoration(
                color: Color(0xFFFEFEFE),
                shape: OvalBorder(),
              ),
              child: Icon(Icons.shopping_bag_outlined),
            ),
          ),
          SizedBox(width: 10),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(2, (index){
              return Container(
                width: double.infinity,
                height: 112,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(bottom: 10),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFA99F96)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F383E4A),
                      blurRadius: 100,
                      offset: Offset(0, 40),
                      spreadRadius: -15,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Container(
                      width: 107,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/1.jpg"),

                          fit: BoxFit.cover,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Birthday balloon garland',
                            style: AppTextStyles.plusJakartaSans.copyWith(
                              color: Color(0xFF1D1E20),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                          ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            'Decorations',
                            style: AppTextStyles.plusJakartaSans.copyWith(
                              color: Color(0xFF4A4E69),
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Text(
                            '\$45',
                            style: AppTextStyles.plusJakartaSans.copyWith(
                              color: Color(0xFF1D1E20),
                              fontSize: 16,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                              height: 0.07,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 87,
                      height: 32,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: ShapeDecoration(
                        color: Color(0xEDF1F0ED),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.remove),
                          Text("1"),
                          Icon(Icons.add),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping  zipcode',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Color(0xFF4A4E69),
                    fontSize: 15,
                  ),
                ),
                Container(
                  width: 102,
                  height: 38,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder()
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Order Info',
              style: AppTextStyles.plusJakartaSans.copyWith(
                color: Color(0xFF1D1E20),
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Color(0xFF4A4E69),
                    fontSize: 15,
                  ),
                ),
                Text(
                  '\$110',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Color(0xFF1D1E20),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tax',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Color(0xFF4A4E69),
                    fontSize: 15,
                  ),
                ),
                Text(
                  '\$10',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Color(0xFF1D1E20),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping cost',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Color(0xFF4A4E69),
                    fontSize: 15,
                  ),
                ),
                Text(
                  '\$110',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Color(0xFF1D1E20),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '\$130',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Color(0xFF1D1E20),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Center(
              child: GestureDetector(
               onTap: (){
                 navigateToPage(context: context, pageName: ProductPaymentScreen());
               },
                child: Container(
                  width: 292,
                  height: 49,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: ShapeDecoration(
                    color: Color(0xFFA99F96),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Proceed to checkout',
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Color(0xFFFEFEFE),
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward_sharp,color: Colors.white,)
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
