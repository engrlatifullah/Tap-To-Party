import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.fromLTRB(15, MediaQuery.of(context).padding.top, 15, 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: Color(0x92F1F0EDED),
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                Text(
                  'Wishlist',
                  style: TextStyle(
                    color: Color(0xFF1D1E20),
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color(0x92F1F0EDED),
                  child: SvgPicture.asset(
                    "images/Bag.svg",
                    height: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '365 Items',
                      style: TextStyle(
                        color: Color(0xFF1D1E20),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'in wishlist',
                      style: TextStyle(
                        color: Color(0xFF4A4E69),
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0.07,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 37,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: Color(0xEDF1F0ED),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.edit),
                      SizedBox(width: 5),
                      Text(
                        'Edit',
                        style: TextStyle(
                          color: Color(0xFF1D1E20),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 20),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 198,
                      padding: EdgeInsets.all(15),
                      decoration: ShapeDecoration(
                        color: Color(0xEDF1F0ED),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFFA99F96)),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(height: 10),
                          Image.asset("images/${index + 1}.jpg")
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Backdrop frame\ntablefactory',
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Color(0xFF1D1E20),
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '\$110',
                      style: AppTextStyles.plusJakartaSans.copyWith(
                        color: Color(0xFF1D1E20),
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
