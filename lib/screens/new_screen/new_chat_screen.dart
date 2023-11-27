import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taptoparty/screens/new_screen/chats_two.dart';
import 'package:taptoparty/utils/navigation.dart';

import '../../themes/app_textstyles.dart';

class NewChatScreen extends StatelessWidget {
  const NewChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          ' Tap to Party ',
          style: AppTextStyles.gfsDidotStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("New Chat",style: AppTextStyles.gfsDidotStyle,),
              SizedBox(height: 20),
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
                        hintText: "Search",
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.search_rounded)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: SvgPicture.asset("images/person.svg"),
                title: Text("New Chat",style: AppTextStyles.gfsDidotStyle.copyWith(color: Colors.red,fontSize: 15),),
              ),
              SizedBox(height: 30),
              ...List.generate(5, (index){
                return GestureDetector(
                  onTap: (){
                    navigateToPage(context: context, pageName: ChatsTwo());
                  },
                  child: Container(
                    color: Color(0xFFF1F0ED),
                    margin: EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      dense: true,
                      leading: SvgPicture.asset("images/personsingle.svg"),
                      title: Text("Name",style: AppTextStyles.gfsDidotStyle.copyWith(color: Colors.black,fontSize: 12),),
                      subtitle: Text("Phone Number",style: AppTextStyles.gfsDidotStyle.copyWith(color: Colors.grey,fontSize: 10),),
                      trailing: Icon(Icons.add),
                    ),
                  ),
                );
              })


            ],
          ),
        ),
      ),
    );
  }
}
