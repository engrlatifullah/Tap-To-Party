import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

class DateSuggestionScreen extends StatelessWidget {
  const DateSuggestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Decide a date",
                      style: AppTextStyles.gfsDidotStyle.copyWith(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(width: 5),
                    Image.asset("images/Rectangle.png"),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Maria is suggesting few dates for the event ',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.gfsDidotStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
                ...List.generate(4, (index) {
                  return Container(
                    width: double.infinity,
                    height: 69,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              'Oct 7th, Saturday ',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                color: Color(0xFF4A4E69),
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '10:30 AM - 4:30 PM',
                              textAlign: TextAlign.center,
                              style: AppTextStyles.gfsDidotStyle.copyWith(
                                color: Color(0xFF4A4E69),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.close,
                          color: Colors.red,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.help_outline,
                          color: Color(0xFF17A1FA),
                        ),
                      ],
                    ),
                  );
                }),
                SizedBox(height: 20),
                Center(
                  child: Container(
                    width: 175,
                    height: 38,
                    decoration: ShapeDecoration(
                      color: Color(0xFF4A4E69),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Finalise     ',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.gfsDidotStyle.copyWith(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
