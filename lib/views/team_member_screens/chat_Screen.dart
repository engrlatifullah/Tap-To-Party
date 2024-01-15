import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 42.74,
              height: 54.59,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage("images/6.jpg"),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextField(maxLines: 2,
                decoration: InputDecoration(
                  hintText: "Type your message here",
                  filled: true,
                  fillColor: Color(0xFFF1F0EDED),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15,vertical: MediaQuery.of(context).padding.top),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Team Chats',
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      color: Color(0xFFA99F96),
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Back to dashboard",
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff4A4E69)),
                    ),
                  )
                ],
              ),
              SizedBox(height: 50),
              Container(
                height: 50,
                padding: EdgeInsets.all(2),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFA99F96),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(child: GestureDetector(
                      onTap: (){
                        setState(() {
                          currentIndex = 0;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == 0 ? Colors.white : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            'Team',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Color(0xFF4A4E69),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),),
          
                    Expanded(child: GestureDetector(
                      onTap: (){
                        setState(() {
                          currentIndex = 1;
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == 1 ? Colors.white : Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            'Client',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Color(0xFF4A4E69),
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 2),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 48,
                      height: 43.24,
                      decoration: ShapeDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/5.jpg"),
                          fit: BoxFit.cover,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Amelia Patrick',
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                color: Color(0xFFA99F96),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '15m ago',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFF3E4347),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Text(
                          '.We need to arrange for the indoor hall ,its expected to rain that day',
                          style: AppTextStyles.plusJakartaSans.copyWith(
                            color: Color(0xFFADB5BD),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),),
                  ],
                );
              }, separatorBuilder: (BuildContext context, int index) {
                return Divider(height: 44,);
              }, itemCount: 5,)
            ],
          ),
        ),
      ),
    );
  }
}
