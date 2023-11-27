import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';

import '../team_session/team_profile.dart';

class TeamTab extends StatelessWidget {
  const TeamTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            'Team Directory',
            style: AppTextStyles.plusJakartaSans.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: List.generate(
                5,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset("images/uni.jpg",fit: BoxFit.cover,),
                      ),
                )),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Icon(
                Icons.search,
                size: 30,
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                'Search  Members',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                onTap: () {
                  navigateToPage(context: context, pageName: Teamprofile());
                },
                leading: SizedBox(
                  height: 80,
                  width: 50,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'images/uni.jpg',
                    ),
                  ),
                ),
                title: Text(
                  'John Smith',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                subtitle: Text(
                  'name@domainname.com',
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                trailing: Container(
                  height: 33,
                  width: 28,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                  )),
                  child: Container(
                    height: 33,
                    width: 28,
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Image(
                  image: AssetImage('images/User_add.png'),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  'Add a Team Member',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
