import 'package:flutter/material.dart';
import 'package:taptoparty/utils/navigation.dart';

import '../../../../../../themes/app_textstyles.dart';
import 'fram.dart';

class AddInventory extends StatefulWidget {
  const AddInventory({super.key});

  @override
  State<AddInventory> createState() => _AddInventoryState();
}

class _AddInventoryState extends State<AddInventory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                  color: Color(0xff4A4E69)),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Center(
            child: Text("Add product",
                style: AppTextStyles.plusJakartaSans.copyWith(fontSize: 16)),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 28,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Text(
                    "More Action",
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 28,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                  color: Color(0xffF1F0ED),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      navigateToPage(context: context, pageName: Frame());
                       },
                    child: Text(
                      "+ New products",
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 9,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text("Image",
                    style: AppTextStyles.plusJakartaSans.copyWith(fontSize: 11)),

                Text("Name",
                    style: AppTextStyles.plusJakartaSans.copyWith(fontSize: 11)),

                Text("price ",
                    style: AppTextStyles.plusJakartaSans.copyWith(fontSize: 11)),

                Text("Categories",
                    style: AppTextStyles.plusJakartaSans.copyWith(fontSize: 11))
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 56,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: Color(0xffF1F0ED),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  height: 47,
                  width: 49,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/images/plates.png"))),
                ),

                Text("Woodenstan",
                    style: AppTextStyles.plusJakartaSans.copyWith(fontSize: 11)),

                Text("120",
                    style: AppTextStyles.plusJakartaSans.copyWith(fontSize: 11)),

                Text("Backstan",
                    style: AppTextStyles.plusJakartaSans.copyWith(fontSize: 11))
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}
