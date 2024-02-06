import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

class ItemDetailScreen extends StatelessWidget {
  const ItemDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("images/back.png"),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  15, MediaQuery.of(context).padding.top, 15, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_back),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: SvgPicture.asset(
                      "images/Bag.svg",
                      height: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 200),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 48,
                height: 48,
                margin: EdgeInsets.only(right: 15),
                padding: const EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: Color(0xEDF1F0ED),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF4A4E69)),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(15),
                    ),
                    color: Colors.white),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  ...List.generate(4, (index) {
                                    return Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Color(0xFFFFCB3C),
                                    );
                                  }),
                                  SizedBox(width: 10),
                                  RichText(
                                    text: TextSpan(
                                        text: "32 ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black),
                                        children: [
                                          TextSpan(
                                            text: "rating",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFF4A4E69)),
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              Text(
                                "( 230 Reviews)",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF4A4E69)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Price',
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                  color: Color(0xFF1D1E20),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                '\$ 50',
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Crystal drinkware',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'crystal cut drinking glass set',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Color(0xFF4A4E69),
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(4, (index) {
                          return Container(
                            width: 82,
                            height: 83,
                            decoration: ShapeDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/back.png"),
                                fit: BoxFit.fill,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Size',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Color(0xFF4A4E69),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            width: 60.28,
                            height: 49.89,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: Color(0xEDF1F0ED),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '8 ml',
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                  color: Color(0xFF4A4E69),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 60.28,
                            height: 49.89,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: Color(0xEDF1F0ED),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '12 ml',
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                  color: Color(0xFF4A4E69),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 60.28,
                            height: 49.89,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: Color(0xEDF1F0ED),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                '16 ml',
                                style: AppTextStyles.plusJakartaSans.copyWith(
                                  color: Color(0xFF4A4E69),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Container(
                            width: 109,
                            height: 32,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: ShapeDecoration(
                              color: Color(0xEDF1F0ED),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.remove),
                                Text(
                                  "1",
                                  style: AppTextStyles.plusJakartaSans.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                ),
                                Icon(Icons.add),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Description',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vit...\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Color(0xFF4A4E69),
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Price',
                            style: AppTextStyles.plusJakartaSans.copyWith(
                              color: Color(0xFF1D1E20),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '\$ 50',
                            style: AppTextStyles.plusJakartaSans.copyWith(
                              color: Color(0xFF1D1E20),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: double.infinity,
                        height: 55,
                        decoration: ShapeDecoration(
                          color: Color(0xFFA99F96),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Add to Cart',
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Color(0xFFFEFEFE),
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
