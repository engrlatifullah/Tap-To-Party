import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';
import 'package:taptoparty/widget/primary_button.dart';

class ProfileBusinessInformation extends StatefulWidget {
  const ProfileBusinessInformation({super.key});

  @override
  State<ProfileBusinessInformation> createState() =>
      _ProfileBusinessInformationState();
}

class _ProfileBusinessInformationState
    extends State<ProfileBusinessInformation> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.85,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.navigate_before,
                    size: 30,
                  ),
                  Text(
                    "Business Information",
                    style: AppTextStyles.gfsDidotStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.edit,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "Name of your business",
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder()),
              ),
              SizedBox(height: 5),
              Text(
                "Address",
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder()),
              ),
              SizedBox(height: 5),
              Text(
                "Phone Number",
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder()),
              ),
              SizedBox(height: 5),
              Text(
                "Email address",
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder()),
              ),
              SizedBox(height: 5),
              Text(
                "Website",
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder()),
              ),
              SizedBox(height: 5),
              Text(
                "Business type",
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder()),
              ),
              SizedBox(height: 5),
              Text(
                "Service offered",
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder()),
              ),
              SizedBox(height: 5),
              Text(
                "Service Capacity",
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder()),
              ),
              SizedBox(height: 5),
              Text(
                "Contract Person",
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder()),
              ),
              SizedBox(height: 5),
              Text(
                "Average cost per person",
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder()),
              ),
              SizedBox(height: 5),
              Text(
                "Communication preferences",
                style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              Center(
                child: SizedBox(
                  height: 30,
                  width: 80,
                  child: PrimaryButton(
                    onTap: () {},
                    title: "Save",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
