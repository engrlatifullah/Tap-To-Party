import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_colors.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/profile_setup_for_service_provider/profile_busniss_information.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/profile_setup_for_service_provider/profile_tax_information.dart';
import 'package:taptoparty/views/vendor_screen/vendor_home_dashboard/tabs/post_event_tab/profile_setup_for_service_provider/widget/round_card.dart';
import 'package:taptoparty/widget/primary_button.dart';

import '../../../../../../themes/app_textstyles.dart';
import 'bank_information.dart';

class ProfileSetupForServiceProvider extends StatefulWidget {
  const ProfileSetupForServiceProvider({super.key});

  @override
  State<ProfileSetupForServiceProvider> createState() =>
      _ProfileSetupForServiceProviderState();
}

class _ProfileSetupForServiceProviderState
    extends State<ProfileSetupForServiceProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  color: AppColors.mainColor),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: Image.asset("images/Ellipse 50.png")),
            Column(
              children: [
                Text(
                  "Profile",
                  style: AppTextStyles.gfsDidotStyle
                      .copyWith(fontSize: 24, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Tell us about your services and let's help you connect with more clients!",
                  textAlign: TextAlign.center,
                  style: AppTextStyles.gfsDidotStyle
                      .copyWith(fontSize: 24, fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10),
                RoundCard(
                  title: 'Business Information',
                  subTitle: "Fine Diners",
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.white,
                        context: context,
                        builder: (BuildContext context) {
                          return ProfileBusinessInformation();
                        });
                  },
                ),
                RoundCard(
                  title: 'Tax Information',
                  subTitle: "Partnership",
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.white,
                        context: context,
                        builder: (BuildContext context) {
                          return ProfileTazInformation();
                        });
                  },
                ),
                RoundCard(
                  title: 'Logo Upload',
                  subTitle: "uploaded",
                  onTap: () {},
                ),
                RoundCard(
                  title: 'Portfolio Upload',
                  subTitle: "uploaded",
                  onTap: () {
                    // navigateToPage(
                    //     context: context, pageName: PortfolioScreen());
                  },
                ),
                RoundCard(
                  title: 'Banking Information',
                  subTitle: "Chase Bank",
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.white,
                        context: context,
                        builder: (BuildContext context) {
                          return BankingInformation();
                        });
                  },
                ),
                RoundCard(
                  title: 'Main Contact Person',
                  subTitle: "John Afron",
                  onTap: () {},
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 30,
                  width: 180,
                  child: PrimaryButton(
                    onTap: () => Navigator.pop(context),
                    title: "Back to Dashboard",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
