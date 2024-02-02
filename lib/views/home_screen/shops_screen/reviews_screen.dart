import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/utils/navigation.dart';

import 'add_review_screen.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F0EDED),
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
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                Text(
                  'Reviews',
                  style: AppTextStyles.plusJakartaSans.copyWith(
                    color: Color(0xFF1D1E20),
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox.shrink(),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        '245 Reviews',
                        style: AppTextStyles.plusJakartaSans.copyWith(
                          color: Color(0xFF1D1E20),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: FittedBox(
                        child: GestureDetector(
                          onTap: () {
                            navigateToPage(
                              context: context,
                              pageName: AddReviewScreen(),
                            );
                          },
                          child: Container(
                            height: 35,
                            padding: const EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                              color: Color(0xFFA99F96),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset("images/Edit Square.svg"),
                                SizedBox(width: 5),
                                Text(
                                  'Add Review',
                                  style: AppTextStyles.plusJakartaSans.copyWith(
                                    color: Color(0xFFFEFEFE),
                                    fontSize: 13,
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w500,
                                    height: 0.08,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      subtitle: Row(
                        children: [
                          Text(
                            '4.8',
                            style: TextStyle(
                              color: Color(0xFF1D1E20),
                              fontSize: 13,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.08,
                            ),
                          ),
                          SizedBox(width: 10),
                          ...List.generate(4, (index) {
                            return Icon(
                              Icons.star,
                              size: 15,
                              color: Color(0xFFFFCB3C),
                            );
                          }),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("images/back.png"),
                                ),
                                SizedBox(width: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Jenny Wilson',
                                      style: AppTextStyles.plusJakartaSans
                                          .copyWith(
                                        color: Color(0xFF1D1E20),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          size: 15,
                                          color: Color(0xFF8F959E),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          '13 Sep, 2020',
                                          style: AppTextStyles.plusJakartaSans
                                              .copyWith(
                                            color: Color(0xFF8F959E),
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '4.8',
                                          style: TextStyle(
                                            color: Color(0xFF1D1E20),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(width: 5),
                                        Text(
                                          'rating',
                                          style: TextStyle(
                                            color: Color(0xFF1D1E20),
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: List.generate(4, (index) {
                                        return Icon(
                                          Icons.star,
                                          size: 15,
                                          color: Color(0xFFFFCB3C),
                                        );
                                      }),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...',
                              style: AppTextStyles.plusJakartaSans.copyWith(
                                color: Color(0xFF4A4E69),
                                fontSize: 15,
                              ),
                            )
                          ],
                        );
                      },
                      itemCount: 5,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(height: 20);
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
