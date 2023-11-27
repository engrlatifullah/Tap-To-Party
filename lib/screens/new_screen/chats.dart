import 'package:flutter/material.dart';
import 'package:taptoparty/screens/new_screen/new_chat_screen.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ' Tap to Party ',
                style: AppTextStyles.gfsDidotStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Chat',
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      navigateToPage(
                          context: context, pageName: NewChatScreen());
                    },
                    child: Text(
                      'New Chat',
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffF1F0ED),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.search_rounded)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(color: Colors.black)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: ' Picnic Party  ',
                        suffixIcon: TextButton(
                          onPressed: () {},
                          child: Text(
                            '4:30 pm',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
