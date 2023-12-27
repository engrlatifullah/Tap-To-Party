import 'package:flutter/material.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/quote_screen/quote_screen.dart';

import '../../../../../../themes/app_colors.dart';
import '../../../../../../themes/app_textstyles.dart';

class CreateAQuoteForClient extends StatefulWidget {
  const CreateAQuoteForClient({super.key});

  @override
  State<CreateAQuoteForClient> createState() => _CreateAQuoteForClientState();
}

class _CreateAQuoteForClientState extends State<CreateAQuoteForClient> {
  DateTime? expiryDate;

  pickExpiryDate() async {
    final pickDate = await showDatePicker(
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      initialDate: DateTime.now(),
      context: context,
    );
    if (pickDate != null) {
      setState(() {
        expiryDate = pickDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 90,
        leading: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.navigate_before,
                  color: Colors.black,
                )),
            Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Back to dashboard",
              style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.mainColor),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'New Quote',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Quote Info',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),

              //title
              Text(
                'Title',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10),
              CustomContainer(
                child: Text(
                  'Engagement Party',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 20),

              Text(
                'Client Name',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 10),
              CustomContainer(
                child: Text(
                  'Alina',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expiry Date',
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: pickExpiryDate,
                          child: CustomContainer(
                            child: Text(
                              expiryDate == null
                                  ? "Select Expiry Date"
                                  : "${expiryDate!.day}/${expiryDate!.month}/${expiryDate!.year}",
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  SizedBox(width: 50),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Payments Term',
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 10),
                        CustomContainer(
                          child: Text(
                            '50% in advance',
                            style: AppTextStyles.plusJakartaSans.copyWith(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 50),
              Text(
                'Quote Details',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      padding: EdgeInsets.symmetric(horizontal: 3),
                      color: Color(0xFF4A4E69),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: SizedBox(
                              child: Center(
                                child: Text(
                                  'Service/Product',
                                  style: AppTextStyles.plusJakartaSans.copyWith(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: SizedBox(
                              child: Center(
                                child: Text(
                                  'Description',
                                  style: AppTextStyles.plusJakartaSans.copyWith(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              child: Center(
                                child: Text(
                                  'Price',
                                  style: AppTextStyles.plusJakartaSans.copyWith(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              child: Center(
                                child: Text(
                                  'Quantity',
                                  style: AppTextStyles.plusJakartaSans.copyWith(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              child: Center(
                                child: Text(
                                  'Tax',
                                  style: AppTextStyles.plusJakartaSans.copyWith(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomContainer(child: Text(
                      'Catering',
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    ),),
                  ),
                  Expanded(
                    flex: 2,
                    child: CustomContainer(child: Text(
                      '5 course menu',
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    ),),
                  ),
                  Expanded(
                    child: CustomContainer(child: Text(
                      '\$1500',
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    ),),
                  ),
                  Expanded(
                    child: CustomContainer(child: Text(
                      '1',
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    ),),
                  ),
                  Expanded(
                    child: CustomContainer(child: Text(
                      '150',
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    ),),
                  ),
                  Icon(Icons.delete_outline,color: Color(0xFF17A1FA),)
                ],
              ),
              SizedBox(height: 10),
              Text(
                '+ Add Line Item',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Color(0xFF16A0F9),
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),SizedBox(
                height: 30
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Subtotal',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 5),
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: CustomContainer(
                      child: Text(
                        '\$1500',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Discount',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 5),
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: CustomContainer(
                      child: Text(
                        '\$10',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Taxes',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 5),
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: CustomContainer(
                      child: Text(
                        '\$10',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10),

              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 196,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Total Price',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(width: 5),
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: CustomContainer(
                      child: Text(
                        '\$1600',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.black,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 60),
              Text(
                'Additional Info',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Text(
                'Terms',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 125,
                      height: 32,
                      decoration: ShapeDecoration(
                        color: Color(0xFFFFFF),
                        shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black)
                        ),
                      ),
                      child: Center(child: Text(
                        'Cancel',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      width: 125,
                      height: 32,
                      decoration: ShapeDecoration(
                        color: Color(0xFFA99F96),
                        shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black)
                        ),
                      ),
                      child: Center(child: Text(
                        'Save',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        navigateToPage(context: context, pageName: QuoteScreen());
                      },
                      child: Container(
                        width: 125,
                        height: 32,
                        decoration: ShapeDecoration(
                          color: Color(0xFF4A4E69),
                          shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black)
                          ),
                        ),
                        child: Center(child: Text(
                          'Next',
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                          ),
                        ),),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Widget child;

  const CustomContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: child,
    );
  }
}
