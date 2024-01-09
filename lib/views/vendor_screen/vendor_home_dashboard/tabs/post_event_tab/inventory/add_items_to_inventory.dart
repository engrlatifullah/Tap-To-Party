import 'package:flutter/material.dart';
import 'package:taptoparty/utils/navigation.dart';

import '../../../../../../themes/app_textstyles.dart';
import 'add_invetory.dart';

class AddItemsToInventory extends StatefulWidget {
  const AddItemsToInventory({super.key});

  @override
  State<AddItemsToInventory> createState() => _AddItemsToInventoryState();
}

class _AddItemsToInventoryState extends State<AddItemsToInventory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffF5F5F5),
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
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Overall Inventory List",
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 14)),
            SizedBox(
              height: 10,
            ),

            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 26,
                    width: 89,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(
                        "categories",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 26,
                    width: 89,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(
                        "Product",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 26,
                    width: 89,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(
                        "Low stock",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 26,
                    width: 89,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(
                        "Ordered",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    child: Center(
                      child: Text(
                        "50",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: SizedBox(
                    child: Center(
                      child: Text(
                        "800",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: SizedBox(
                    child: Center(
                      child: Text(
                        "900",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: SizedBox(
                    child: Center(
                      child: Text(
                        "50",
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Container(
                    height: 27,
                    width: 108,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff4A4E69),
                        ),
                        color: Color(0xff4A4E69),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Inventory List",
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddItemsToInventory()));
                  },
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  child: Container(
                    height: 27,
                    width: 108,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Inventory List",
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddItemsToInventory()));
                  },
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                 navigateToPage(context: context, pageName: AddInventory());
                  },
                  child: Container(
                    height: 27,
                    width: 108,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffA99F96),
                        ),
                        color: Color(0xffA99F96),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "Add Item",
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          fontSize: 12,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 42,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              color: Color(0xff4A4E69),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "item/sku",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "category",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text(
                      "Quantity",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text(
                      "supplier",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text(
                      "stock",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Text(
                      "order by date",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ListView.separated(
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
              return
                Container(
                  height: 42,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Wood stan ",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Decor",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "15",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      SizedBox(
                        width:10,
                      ),
                      Expanded(
                        child: Text(
                          "table factory",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "6/15",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "12/01/023",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      )
                    ],
                  ),
                );
            }, separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 10);
            }, itemCount: 5,),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 20,
                  width: 86,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                      color: Colors.white),
                  child: Center(
                    child: Text(
                      "Cancel",
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 20,
                  width: 86,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff4A4E69)),
                      color: Color(0xff4A4E69)),
                  child: Center(
                    child: Text(
                      "Save",
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 12,
                        color: Colors.white
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
