import 'package:flutter/material.dart';

import '../register/reusabletext.dart';


class PostHistory extends StatefulWidget {
  const PostHistory({super.key});

  @override
  State<PostHistory> createState() => _PostHistoryState();
}

class _PostHistoryState extends State<PostHistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ListView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ReusableText(
                  title: 'Post you have seen Today',
                  color: Color(0xff212121),
                  size: 18,
                  weight: FontWeight.w600,
                ),
                const SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Image(image: AssetImage("Asset/images/notification/Rectangle 1461.png"),),
                    const Spacer(),
                    Column(
                      children: [
                        const Image(image: AssetImage("Asset/images/notification/Rectangle 1462.png"),),
                        const SizedBox(height: 10,),
                        Container(
                            height: 90,width: 139,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("Asset/images/notification/Rectangle 1463.png"),
                                )
                            ),
                            child: const Center(
                              child:
                              ReusableText(
                                title: '25+',
                                color: Color(0xffFFFFFF),
                                size: 20,
                                weight: FontWeight.w700,
                              ),
                            )),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 15,),
                const Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                const SizedBox(height: 20,),

                const ReusableText(
                  title: 'Post you have seen Yesterday',
                  color: Color(0xff212121),
                  size: 18,
                  weight: FontWeight.w600,
                ),
                const SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Image(image: AssetImage("Asset/images/notification/Rectangle 1461 (1).png"),),
                    const Spacer(),
                    Column(
                      children: [
                        const Image(image: AssetImage("Asset/images/notification/Rectangle 1462 (1).png"),),
                        const SizedBox(height: 10,),
                        Container(
                            height: 90,width: 139,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("Asset/images/notification/Rectangle 1463 (1).png"),
                                )
                            ),
                            child: const Center(
                              child:
                              ReusableText(
                                title: '25+',
                                color: Color(0xffFFFFFF),
                                size: 20,
                                weight: FontWeight.w700,
                              ),
                            )),
                      ],
                    )
                  ],
                ),

              ],
            ),
          )
        ],

      ),
    ));
  }
}
