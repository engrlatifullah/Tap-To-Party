import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  final List title=[
    "Total Guests",
    "InvitationSent",
    "RSVPs",
    "Guests Coming",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          ...List.generate(3, (index) {
            return Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffF1F0ED)
                ),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Container(
                          height: 60,
                          width: 69,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.mainColor,
                          ),
                        ),
                        Text('Alex has received your invitation'),

                        Text('2h')
                      ],
                    )
                ));
          }),
          SizedBox(height: 40,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(title.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 61,
                          width: 69,
                          color: Color(0xffA99F96),
                        ),
                        SizedBox(height: 10,),
                        Text(title[index],textAlign: TextAlign.center,),

                      ],
                    ),
                  );
                })
            ),
          ),
        ]
    );
  }
}
