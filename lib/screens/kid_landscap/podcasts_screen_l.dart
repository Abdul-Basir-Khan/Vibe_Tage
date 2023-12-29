


import 'package:flutter/material.dart';
import '../register/reusabletext.dart';
import 'package:flutter/services.dart';
class PodcastsScreenL extends StatelessWidget {
  final List<String> list1=[
    'Asset/images/kids/Group 1000004223.png',
    'Asset/images/kids/Group 1000004223 (1).png',
    'Asset/images/kids/Group 1000004223 (2).png',
    'Asset/images/kids/Group 1000004223 (3).png',
    'Asset/images/kids/Group 1000004223 (4).png',
    'Asset/images/kids/Group 1000004223 (5).png',
    'Asset/images/kids/Group 1000004223 (6).png',
    'Asset/images/kids/Group 1000004223 (7).png',
  ];

  final List<String> list2=[
    'Asset/images/kids/Group 76754.png',
    'Asset/images/kids/Group 76844.png',
    'Asset/images/kids/Group 76844 (1).png',
    'Asset/images/kids/Group 76844 (2).png',
    'Asset/images/kids/Group 76844 (3).png',
    'Asset/images/kids/Group 76844 (4).png',
    'Asset/images/kids/Group 76844 (5).png',
    'Asset/images/kids/Group 76844 (6).png',
  ];



  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation == Orientation.portrait;
    var orientationL = MediaQuery.of(context).orientation == Orientation.landscape;


    return SingleChildScrollView(
      child:Column(
        children: [
          const SizedBox(height: 20),
          GridView.builder(
            shrinkWrap: true,
            itemCount: list1.length,
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
childAspectRatio: orientationL ?0.75:1.30,
              // Adjust the aspect ratio for different orientations
              crossAxisCount:  orientation?2:3, // Adjust the column count for different orientations
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (BuildContext context, int index) {
              return  Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      height: 150,
                      image: AssetImage(list1[index]),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          const ReusableText(
                            title:
                            'Call of Duty: Warzone 2 Solo Win Gameplay 14 Kills World Record',
                            size: 16,
                            weight: FontWeight.w700,
                            color: Color(0xff212121),
                          ),
                          const SizedBox(height: 10),
                          Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.remove_red_eye,
                                color: Color(0xffC8D1E5),
                              ),
                              SizedBox(width: 5,),
                              const ReusableText(
                                title: '1k Views',
                                size: 13,
                                weight: FontWeight.w600,
                                color: Color(0xff485470),
                              ),
                              SizedBox(width: 07,),
                              Container(
                                height: 3,
                                width: 3,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff99A7C7),
                                ),
                              ),
                              SizedBox(width: 07,),
                              const Image(
                                image: AssetImage(
                                    "Asset/icons/chat_update/Heart-3.png"),
                              ),
                              SizedBox(width: 5,),
                              const ReusableText(
                                title: '2 Reacts',
                                size: 13,
                                weight: FontWeight.w600,
                                color: Color(0xff485470),
                              ),
                            ],
                          ),
                          ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            leading: Image(
                              image: AssetImage(list2[index]),
                              width: 40,
                              height: 40,
                            ),
                            title: const ReusableText(
                              title: 'Gwen Stacy',
                              size: 14,
                              weight: FontWeight.w700,
                              color: Color(0xff212121),
                            ),
                            subtitle: const ReusableText(
                              title: '200k Followers',
                              size: 12,
                              weight: FontWeight.w500,
                              color: Color(0xff7D8CAC),
                            ),
                            trailing: const Icon(
                              Icons.more_vert,
                              color: Color(0xff7D8CAC),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
