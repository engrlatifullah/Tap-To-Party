import 'package:flutter/material.dart';

import '../../../../../themes/app_textstyles.dart';

class ExpansesScreen extends StatelessWidget {
  const ExpansesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4A4E69),
      appBar: AppBar(
        backgroundColor: Color(0xFF4A4E69),
        elevation: 0,
        leadingWidth: 90,
        leading: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.navigate_before, color: Colors.white)),
            Icon(Icons.menu, color: Colors.white),
          ],
        ),
        actions: [
          Text(
            ' Tap to Party ',
            style: AppTextStyles.gfsDidotStyle
                .copyWith(fontSize: 20, color: Colors.white),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    'Back to dashboard',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: ShapeDecoration(
                  color: Color(0xEDF1F0ED),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Event Details',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFieldWithTitle(
                      title: 'Event Name',
                    ),
                    SizedBox(height: 10),
                    TextFieldWithTitle(
                      title: 'Date',
                    ),
                    SizedBox(height: 10),
                    TextFieldWithTitle(
                      title: 'Location',
                    ),
                    SizedBox(height: 10),
                    TextFieldWithTitle(
                      title: 'Number of Guests',
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Budget Summary',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFieldWithTitle(
                      title: 'Total Budget',
                    ),
                    SizedBox(height: 10),
                    TextFieldWithTitle(
                      title: 'Total Spent',
                    ),
                    SizedBox(height: 10),
                    TextFieldWithTitle(
                      title: 'Remaining Budget',
                    ),
                    SizedBox(height: 10),
                    TextFieldWithTitle(
                      title: 'Number of Guests',
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 155,
                      height: 40,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape:
                            RoundedRectangleBorder(side: BorderSide(width: 1)),
                      ),
                      child: Center(
                        child: Text(
                          'Edit Budget',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Budget Breakup',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        children: [
                          TextFieldWithTitle(
                            title: "Venue",
                            isBorder: true,
                          ),
                          SizedBox(height: 10),
                          TextFieldWithTitle(
                            title: "Catering",
                            isBorder: true,
                          ),
                          SizedBox(height: 10),
                          TextFieldWithTitle(
                            title: "Decorations",
                            isBorder: true,
                          ),
                          SizedBox(height: 10),
                          TextFieldWithTitle(
                            title: "Entertainments",
                            isBorder: true,
                          ),
                          SizedBox(height: 10),
                          TextFieldWithTitle(
                            title: "Category",
                            isBorder: true,
                          ),
                          SizedBox(height: 10),
                          TextFieldWithTitle(
                            title: "Category",
                            isBorder: true,
                          ),
                          SizedBox(height: 10),
                          TextFieldWithTitle(
                            title: "Category",
                            isBorder: true,
                          ),
                          SizedBox(height: 20),
                          TextFieldWithTitle(
                            title: "Total",
                            isBorder: true,
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldWithTitle extends StatelessWidget {
  final String title;
  final TextEditingController? controller;
  final bool isBorder;
  const TextFieldWithTitle({
    super.key,
    required this.title,
    this.controller,
    this.isBorder = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppTextStyles.gfsDidotStyle.copyWith(
            fontSize: 16,
          ),
        ),
        Container(
          width: 146,
          height: 30,
          decoration: BoxDecoration(color: Colors.white),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: isBorder
                      ? BorderSide(color: Colors.black)
                      : BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder()),
          ),
        )
      ],
    );
  }
}
