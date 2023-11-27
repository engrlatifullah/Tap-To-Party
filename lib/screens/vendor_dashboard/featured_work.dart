import 'package:flutter/material.dart';
import 'package:taptoparty/themes/app_textstyles.dart';


class FeaturedWork extends StatefulWidget {
  const FeaturedWork({super.key});

  @override
  State<FeaturedWork> createState() => _FeaturedWorkState();
}

class _FeaturedWorkState extends State<FeaturedWork> {

  final List<ImageWithName> lst = [
    ImageWithName(title: 'Natasha Weeding', image: "images/1.jpg"),
    ImageWithName(title: "Masha's Graduation", image: "images/2.jpg"),
    ImageWithName(title: "Ali's Birthday", image: "images/7.jpg"),
    ImageWithName(title: "Sara's Party", image: "images/4.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.black,),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My Featured Work",
              style: AppTextStyles.gfsDidotStyle.copyWith(fontSize: 16),),
            SizedBox(height: 10),
            GridView.builder(
              itemCount: lst.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Expanded(child: Image.asset(lst[index].image)),
                    SizedBox(height: 10),
                    Text(lst[index].title),
                    SizedBox(height: 10),
                  ],
                );
              },),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center
              ,
              children: [
                Text("See more"),
                Icon(Icons.keyboard_arrow_down_outlined)
              ],
            )

          ],
        ),
      ),
    );
  }
}

class ImageWithName {
  String title;
  String image;

  ImageWithName({required this.title, required this.image});
}