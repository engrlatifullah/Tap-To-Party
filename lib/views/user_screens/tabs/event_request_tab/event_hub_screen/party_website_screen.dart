import 'package:flutter/material.dart';
import 'package:taptoparty/utils/navigation.dart';

import '../../../../../themes/app_textstyles.dart';
import 'create_website_screen.dart';

class PartyWebsiteScreen extends StatelessWidget {
  const PartyWebsiteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F0EDED),
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
                )),
            Icon(
              Icons.menu,
            ),
          ],
        ),
        actions: [
          Text(
            ' Tap to Party ',
            style: AppTextStyles.gfsDidotStyle.copyWith(
              fontSize: 20,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Back to dashboard',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    color: Color(0xFF4A4E69),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/2 503.png"),
                )),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Text(
                      '"Welcome to our Party Website Creator – where your event gets its very own digital stage! \n\nEasily build a personalized website to showcase your celebration details and captivate your guests from the first click."',
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Color(0xFF0F1828),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 150),
                    GestureDetector(
                      onTap: () {
                        navigateToPage(
                            context: context, pageName: CreateWebSiteScreen());
                      },
                      child: Container(
                        width: 222,
                        height: 59,
                        decoration: ShapeDecoration(
                          color: Color(0xFFA99F96),
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFF4A4E69)),
                            borderRadius: BorderRadius.circular(10),
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
                            'Create a website',
                            style: AppTextStyles.plusJakartaSans.copyWith(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 80),
                  ],
                ),
              ),
              SizedBox(height: 30),
              CustomWidget(
                image: "images/26 1.png",
                title: 'Invitations',
                subTitle:
                    'Send digital invitations to your guests via email or through social media platforms',
              ),
              SizedBox(height: 20),
              CustomWidget(
                image: "images/17 1.png",
                title: 'Photo Sharing',
                subTitle:
                    "Hosts can create and manage a registry of items or contributions that guests can select from to contribute to the event.",
              ),
              SizedBox(height: 20),
              CustomWidget(
                image: "images/Untitled design (35) 1.png",
                title: 'Registry',
                subTitle:
                    "Guests and hosts can upload and share event photos in a dedicated gallery.",
              ),
              SizedBox(height: 20),
              CustomWidget(
                image: "images/5 8136.png",
                title: 'RSVP Management',
                subTitle:
                    "Easily oversee guest RSVPs and track event attendance seamlessly via the interactive tools",
              ),
              SizedBox(height: 20),
              CustomWidget(
                image: "images/4 9084.png",
                title: 'Live Updates',
                subTitle:
                    "A messaging feature allows hosts and guests to communicate directly within the app.",
              ),
              SizedBox(height: 20),
              CustomWidget(
                image: "images/3 87.png",
                title: 'Your Event Playlist',
                subTitle:
                    "Share your curated playlist seamlessly on your event website, setting the perfect tone for your gathering.",
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 222,
                height: 59,
                decoration: ShapeDecoration(
                  color: Color(0xFF4A4E69),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                    borderRadius: BorderRadius.circular(10),
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
                    'Start your  site',
                    style: AppTextStyles.plusJakartaSans.copyWith(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  final String? image;
  final String? title;
  final String? subTitle;
  const CustomWidget({
    super.key,
    this.image,
    this.title,
    this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image!),
        Text(
          title!,
          style: AppTextStyles.plusJakartaSans.copyWith(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 20),
        Text(
          subTitle!,
          style: AppTextStyles.gfsDidotStyle.copyWith(
            color: Colors.black,
            fontSize: 20,
          ),
        )
      ],
    );
  }
}
