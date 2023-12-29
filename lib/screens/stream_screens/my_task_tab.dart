import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/stream_screens/stream_reusable_container.dart';

import '../register/reusabletext.dart';

class MyTaskTab extends StatefulWidget {
  const MyTaskTab({super.key});

  @override
  State<MyTaskTab> createState() => _MyTaskTabState();
}

class _MyTaskTabState extends State<MyTaskTab> {
  final List<ImagesModel> imagesPath = [
    ImagesModel(
        image1: 'Asset/images/stream/my_task/Group 1000005486.png',
        image2: 'Asset/images/stream/my_task/Ellipse 952 (1).png'),
    ImagesModel(
        image1: 'Asset/images/stream/my_task/Group 1000005486 (1).png',
        image2: 'Asset/images/stream/my_task/Ellipse 953 (1).png'),
    ImagesModel(
        image1: 'Asset/images/stream/my_task/Group 1000005486 (2).png',
        image2: 'Asset/images/stream/my_task/Ellipse 953 (2).png'),
    ImagesModel(
        image1: 'Asset/images/stream/my_task/Group 1000005486 (3).png',
        image2: 'Asset/images/stream/my_task/Ellipse 953 (3).png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [




          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.73,
            child: ListView.builder(
              itemCount: imagesPath.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
               return  StreamReusableContainer(
                  image1path: imagesPath[index].image1,
                  image2path: imagesPath[index].image2,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ImagesModel {
  String image1;
  String image2;

  ImagesModel({required this.image1, required this.image2});
}
