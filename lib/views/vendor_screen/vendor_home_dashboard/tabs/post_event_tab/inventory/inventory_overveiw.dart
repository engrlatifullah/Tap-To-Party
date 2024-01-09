import 'package:flutter/material.dart';
import 'package:taptoparty/utils/navigation.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/inventory/add_items_to_inventory.dart';

import '../../../../../../themes/app_textstyles.dart';
import 'add_invetory.dart';

class InventoryOverview extends StatefulWidget {
  const InventoryOverview({super.key});

  @override
  State<InventoryOverview> createState() => _InventoryOverviewState();
}

class _InventoryOverviewState extends State<InventoryOverview> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text("Inventory Management",
                    style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 22)),
              ),
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
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      width: 108,
                      height: 27.42,
                      decoration: ShapeDecoration(
                        color: Color(0xFF4A4E69),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF9A9A9A)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Inventory List",
                          style: AppTextStyles.gfsDidotStyle
                              .copyWith(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ),
                    onTap: () {
                     },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                    navigateToPage(context: context, pageName: AddItemsToInventory());
                     },
                    child: Container(
                      width: 108,
                      height: 27.42,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFFA99F96)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Add Item",
                          style: AppTextStyles.gfsDidotStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: 8,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.5
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 172,
                          color: Color(0xffF1F0ED),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 150,
                                color: Colors.white,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Plates",
                                        style: AppTextStyles.gfsDidotStyle
                                            .copyWith(
                                          fontSize: 12,
                                        ),
                                      ),
                                      Container(
                                        height: 103,
                                        width: 113,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "Assets/images/plates.png"))),
                                      ),
                                      SizedBox(height: 5),
                                     Padding(
                                       padding: const EdgeInsets.symmetric(horizontal: 10),
                                       child: Column(
                                         children: [
                                           Row(
                                             children: [
                                               Text(
                                                 "Status :",
                                                 style: AppTextStyles.plusJakartaSans
                                                     .copyWith(
                                                   fontSize: 8,
                                                 ),
                                               ),
                                               Text(
                                                 " In Stock",
                                                 style: AppTextStyles.plusJakartaSans
                                                     .copyWith(
                                                     fontSize: 8,
                                                     color: Color(0xff32BB1C)),
                                               ),
                                             ],
                                           ),
                                           SizedBox(height: 5),
                                           Row(
                                             children: [
                                               Text(
                                                 "ON HAND:",
                                                 style: AppTextStyles.gfsDidotStyle
                                                     .copyWith(
                                                   fontSize: 8,
                                                 ),
                                               ),
                                               Text(
                                                 " 6036",
                                                 style: AppTextStyles.gfsDidotStyle
                                                     .copyWith(
                                                   fontSize: 8,
                                                 ),
                                               ),
                                             ],
                                           ),
                                           SizedBox(height: 5),
                                           Row(

                                             children: [
                                               Text(
                                                 "S ",
                                                 style: AppTextStyles
                                                     .gfsDidotStyle
                                                     .copyWith(
                                                   fontSize: 8,
                                                 ),
                                               ),
                                               SizedBox(width: 10),
                                               Text(
                                                 " M",
                                                 style: AppTextStyles
                                                     .gfsDidotStyle
                                                     .copyWith(
                                                   fontSize: 8,
                                                 ),
                                               ),
                                               SizedBox(width: 10),
                                               Text(
                                                 " L",
                                                 style: AppTextStyles
                                                     .gfsDidotStyle
                                                     .copyWith(
                                                   fontSize: 8,
                                                 ),
                                               ),
                                               SizedBox(width: 10),
                                               Text(
                                                 " XL",
                                                 style: AppTextStyles
                                                     .gfsDidotStyle
                                                     .copyWith(
                                                   fontSize: 8,
                                                 ),
                                               ),
                                               SizedBox(width: 10),
                                               Text(
                                                 " 2XL",
                                                 style: AppTextStyles
                                                     .gfsDidotStyle
                                                     .copyWith(
                                                   fontSize: 8,
                                                 ),
                                               ),
                                             ],
                                           ),
                                           SizedBox(height: 5),
                                           Row(
                                             children: [
                                               Text(
                                                 "NEXT DELIVERY:",
                                                 style: AppTextStyles.gfsDidotStyle
                                                     .copyWith(
                                                   fontSize: 7,
                                                 ),
                                               ),
                                             ],
                                           ),
                                           SizedBox(height: 5),
                                           Row(
                                             children: [
                                               Text(
                                                 "INCOME QTY:",
                                                 style: AppTextStyles.gfsDidotStyle
                                                     .copyWith(
                                                   fontSize: 7,
                                                 ),
                                               ),
                                             ],
                                           ),
                                         ],
                                       ),
                                     )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                child: Text(
                                  'Price :',
                                  style: AppTextStyles.plusJakartaSans.copyWith(
                                    color: Color(0xFF4A4E69),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),

                        Container(width: 166,
                          height: 25,
                          decoration: BoxDecoration(color: Color(0xFF4A4E69)),

                          child: Center(
                            child: Text(
                              "Add to Inventory",
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                fontSize: 14,color: Colors.white
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
