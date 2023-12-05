import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';

class TermsForVendor extends StatelessWidget {
  const TermsForVendor({super.key});

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
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Terms and Conditions for Venues/Vendors",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Text(
                'By registering as a vendor on Tap to PartyApp, you agree to the following terms and conditions ("Vendor Terms") in addition to the General Terms of Use and Privacy Policy applicable to the platform. Your registration and participation as a vendor imply your full acceptance of these Vendor Terms.',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Registration and Services",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Text(
                'As a registered vendor on Tap to PartyApp, you may access certain services and features provided by the platform. Some services may be subject to fees, which will be clearly communicated to you prior to your participation. Tap to PartyApp reserves the right to modify its services, including associated fees and conditions, with notice provided to registered vendors.',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Vendor Account and Compliance",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Text(
                'Your vendor account on Tap to PartyApp is non-transferable. By registering, you assert that you have the necessary authority to represent the business entity you are registering on behalf of and that all information provided is accurate and truthful. Tap to PartyApp reserves the right to monitor and remove any content or information provided by vendors for any reason.',
                style: AppTextStyles.plusJakartaSans.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Feedback and Reviews",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Text(
                "Tap to PartyApp may enable users to leave feedback or reviews about vendor services. While the platform will make efforts to maintain fairness and accuracy, Tap to PartyApp is not obligated to monitor or ensure the accuracy of such feedback. Vendors agree not to manipulate feedback or undermine the platform's integrity.",
                style: AppTextStyles.plusJakartaSans.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Breach of Terms",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Text(
                "Violation of these Vendor Terms or the General Terms of Use may result in the removal of vendor listings from the platform without any obligation to refund previously paid fees.",
                style: AppTextStyles.plusJakartaSans.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Legal Compliance",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Text(
                "Vendors are responsible for complying with all relevant laws, regulations, and statutes concerning their use of Tap to PartyApp and their provision of services through the platform.",
                style: AppTextStyles.plusJakartaSans.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Arbitration",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Text(
                "Any legal disputes arising from the use of Tap to PartyApp services shall be settled through binding arbitration following the rules of a mutually agreed-upon arbitration body, excluding legal actions related to fee collection or injunctions regarding platform operations.",
                style: AppTextStyles.plusJakartaSans.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Participation in Programs",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Text(
                "As a registered vendor on Tap to PartyApp, you may have the option to participate in certain programs or promotional features, each subject to specific terms and conditions. From here, you could further detail specific programs, their associated fees, conditions, and additional terms similar to what was outlined in the Eventective terms for programs like EventClicks, Listing Enhancement, and Sales Lead Program. Ensure clarity on payment terms, cancellation policies, automatic renewals, and any potential refunds or credits for unused services within each program.Remember to adapt these terms and conditions according to your platform's specific services, offerings, and operational guidelines while maintaining transparency and fairness for vendors.",
                style: AppTextStyles.plusJakartaSans.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Limitation of Liability",
                style: AppTextStyles.plusJakartaSans
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Text(
                "Tap to Party is currently in a prototype or beta stage of development. This means that some features may not be working properly or may not be available at all. Tap to Party will not be liable for any damages or losses arising from the use of any feature that is not working properly or is not available. We are working hard to improve the app and make it more reliable, and we will continue to do so until the app is released as a final product.In the meantime, we appreciate your understanding and patience as we continue to develop the Tap to Party app.",
                style: AppTextStyles.plusJakartaSans.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(value: false, onChanged: (v) {}),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "I hereby acknowledge and agree to comply with the vendor terms and conditions outlined by Tap to Party app in utilizing its platform for business purposes.",
                      style: AppTextStyles.plusJakartaSans
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
