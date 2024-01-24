import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/user_screens/planing_event_screen/search_for_events_screen/search_for_events_screen.dart';

class PlaningEventScreen extends StatelessWidget {
  const PlaningEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x92F1F0EDED),
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
        title: Text(
          'Tap to Party',
          style: AppTextStyles.gfsDidotStyle.copyWith(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Lets start planning your Event!',
              textAlign: TextAlign.center,
              style: AppTextStyles.gfsDidotStyle.copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter:
                          ColorFilter.mode(Colors.black, BlendMode.difference),
                      image: AssetImage("images/2.jpg"),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 189,
                        height: 35,
                        decoration: ShapeDecoration(
                          color: Color(0xFF4A4E69),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Shop our products',
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Back to dashboard',
                            textAlign: TextAlign.center,
                            style: AppTextStyles.gfsDidotStyle.copyWith(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                      color: Color(0x7FF1F0ED),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  navigateToPage(
                                      context: context,
                                      pageName: SearchForEventScreen());
                                },
                                child: Container(
                                  height: 32,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF4A4E69),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFF4A4E69)),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Events',
                                      textAlign: TextAlign.center,
                                      style: AppTextStyles.plusJakartaSans
                                          .copyWith(
                                        color: Color(0xEDF1F0ED),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Container(
                                height: 32,
                                decoration: ShapeDecoration(
                                  color: Color(0xEDF1F0ED),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: Color(0xFF4A4E69)),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Vendors',
                                    textAlign: TextAlign.center,
                                    style:
                                        AppTextStyles.plusJakartaSans.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: Container(
                                height: 32,
                                decoration: ShapeDecoration(
                                  color: Color(0xEDF1F0ED),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: Color(0xFF4A4E69)),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Venus',
                                    textAlign: TextAlign.center,
                                    style:
                                        AppTextStyles.plusJakartaSans.copyWith(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          height: 37,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: "search by location",
                                contentPadding: EdgeInsets.only(left: 10),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Tap to Party is your one-stop destination for seamless event planning",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text(
              'How it Works',
              textAlign: TextAlign.center,
              style: AppTextStyles.plusJakartaSans.copyWith(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: ["Discover", "Connect", "Plan", "Book"].map((e) {
                      return Text(
                        e,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 20),
                  Image.asset("images/qq.gif"),
                  SizedBox(height: 20),
                  Text(
                    'And Enjoy!!!',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 31,
                    decoration: ShapeDecoration(
                      color: Color(0xFF4A4E69),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Let’s get your party started!',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: double.infinity,
                        height: 305,
                        padding: EdgeInsets.all(10),
                        decoration: ShapeDecoration(
                          color: Color(0xFF6E6761),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 363,
                              height: 150,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/4.jpg"),
                                  fit: BoxFit.fill,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Image.asset("images/3 86.png"),
                            SizedBox(height: 5),
                            Container(
                              width: 139,
                              height: 30,
                              decoration: ShapeDecoration(
                                color: Color(0xEDF1F0ED),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0,
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'Find your vendor',
                                  textAlign: TextAlign.center,
                                  style: AppTextStyles.plusJakartaSans.copyWith(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(height: 10);
                    },
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
