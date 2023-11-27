import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/widget/primary_button.dart';

import '../../new_screen/user_home_dashboard.dart';

class GuestListTab extends StatelessWidget {
  const GuestListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 50,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                color: Color(0xFFA99F96),
                child: Text(
                  "Names",
                  style: AppTextStyles.plusJakartaSans
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 50,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                color: Color(0xFFA99F96),
                child: Text(
                  "No Of Gue Invites",
                  style: AppTextStyles.plusJakartaSans
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            SizedBox(width: 4),
            Expanded(
              child: Container(
                height: 50,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                color: Color(0xFFA99F96),
                child: Text(
                  "RSVP",
                  style: AppTextStyles.plusJakartaSans
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
        GuestListTile(
          title: "Alex Family",
          noOfGuest: "2",
          backgroundColor: Colors.grey.shade200,
        ),
        GuestListTile(
          title: "Alex Family",
          noOfGuest: "5",
          backgroundColor: Colors.grey.shade300,
        ),
        GuestListTile(
          title: "Alex Family",
          noOfGuest: "5",
          backgroundColor: Colors.grey.shade200,
        ),
        GuestListTile(
          title: "Alex Family",
          noOfGuest: "2",
          backgroundColor: Colors.grey.shade300,
        ),
        GuestListTile(
          title: "Alex Family",
          noOfGuest: "2",
          backgroundColor: Colors.grey.shade200,
        ),
        GuestListTile(
          title: "Alex Family",
          noOfGuest: "2",
          backgroundColor: Colors.grey.shade300,
        ),
        SizedBox(height: 40),
        Row(
          children: [
            Expanded(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: PrimaryButton(title: "Add Guest", onTap: (){
                    navigateToPage(context: context, pageName:UserHomeDashboard() );
                  })),
            ),
            SizedBox(width: 30),
            Expanded(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: PrimaryButton(title: "Add Co-Host", onTap: (){})),
            ),
          ],
        )
      ],
    );
  }
}

class GuestListTile extends StatelessWidget {
  final String title;
  final String noOfGuest;
  final Color backgroundColor;

  const GuestListTile({
    super.key,
    required this.title,
    required this.noOfGuest,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 50,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10),
            color: backgroundColor,
            child: Text(title),
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 10),
                  color: backgroundColor,
                  child: Text(noOfGuest),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 50,
                alignment: Alignment.centerLeft,
                color: backgroundColor,
                child: Checkbox(
                  value: false,
                  onChanged: (v) {},
                ),
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 50,
                width: 50,
                alignment: Alignment.centerLeft,
                color: backgroundColor,
                child: Checkbox(
                  value: false,
                  onChanged: (v) {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
