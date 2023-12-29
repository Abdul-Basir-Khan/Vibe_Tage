import 'dart:ffi';

import 'package:flutter/material.dart';

import '../register/reusabletext.dart';

class ChatMemberScreen extends StatelessWidget {
  const ChatMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height*0.65,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Image(
                      width: 300,
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "Asset/images/stream/undraw_engineering_team_a7n2 1.png")),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableText(
                    title: 'Welcome to Management Team',
                    size: 19,
                    weight: FontWeight.w700,
                    color: Color(0xff212121),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableText(
                    title:
                        'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.',
                    size: 14,
                    weight: FontWeight.w500,
                    color: Color(0xff485470),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 38,
                    width: 136,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      color: const Color(0xff485470),
                    ),
                    child: const Center(
                      child: ReusableText(
                        title: '+  Add Member',
                        size: 14,
                        weight: FontWeight.w600,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.35,
                    child: const Divider(
                      thickness: 2,
                      height: 2,
                      color: Color(0xffC8D1E5),
                    )),
                const Spacer(),
                const ReusableText(
                  title: '20 May, 2023',
                  size: 14,
                  weight: FontWeight.w500,
                  color: Color(0xff7D8CAC),
                ),
                const Spacer(),
                SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.35,
                    child: const Divider(
                      thickness: 2,
                      height: 2,
                      color: Color(0xffC8D1E5),
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage("Asset/images/stream/my_task/Avatar.png"),
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            text: const TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Gwen Stacy',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                    color: Color(0xff485470),
                                  ),
                                ),
                                TextSpan(
                                  text: '  12:31',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xff7D8CAC),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Container(
                            height: 110,
                            padding: const EdgeInsets.only(top: 16,right: 14,bottom: 16,left: 14),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft:Radius.circular(0),topRight:Radius.circular(16),bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16),),
                              color: Color(0xffF1F4FB),
                            ),
                            child: const Center(
                              child:

                              ReusableText(
                                title: 'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. Dui,\nfacilisis a mi rutrum integer.,',
                                size: 15,
                                weight: FontWeight.w500,
                                color: Color(0xff212121),
                              ),
                            ),

                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                        AssetImage("Asset/images/stream/my_task/Avatar (1).png"),
                      ),
                      const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RichText(
                            text: const TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Gwen Stacy',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13,
                                    color: Color(0xff485470),
                                  ),
                                ),
                                TextSpan(
                                  text: '  12:31',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xff7D8CAC),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Container(
                            height: 110,
                            padding: const EdgeInsets.only(top: 16,right: 14,bottom: 16,left: 14),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft:Radius.circular(0),topRight:Radius.circular(16),bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16),),
                              color: Color(0xffF1F4FB),
                            ),
                            child: const Center(
                              child:

                              ReusableText(
                                title: 'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. Dui,\nfacilisis a mi rutrum integer.,',
                                size: 15,
                                weight: FontWeight.w500,
                                color: Color(0xff212121),
                              ),
                            ),

                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                 Align(
                   alignment: Alignment.bottomRight,
                   child: Container(
                     width: 203,
                     child: Column(
                       children: [
                         const Row(
                           children: [
                             ReusableText(
                               title: '12:37',
                               size: 12,
                               weight: FontWeight.w500,
                               color: Color(0xff7D8CAC),
                             ),
                             Spacer(),
                             Icon(Icons.more_horiz,color: Color(0xff7D8CAC),),
                             SizedBox(width: 40,),

                           ],
                         ),
                         Row(
                           children: [
                             Container(
                               height: 58,width: 173,
                               decoration: BoxDecoration(
                                 border: Border.all(color: const Color(0xffDBDEE5)),
                                 borderRadius: const BorderRadius.only(topRight: Radius.circular(16),topLeft: Radius.circular(16),bottomRight: Radius.circular(0),bottomLeft: Radius.circular(16))
                               ),
                               child: const Center(
                                 child:
                                 ReusableText(
                                   title: 'Porttitor volutpat.',
                                   size: 14,
                                   weight: FontWeight.w400,
                                   color: Color(0xff212121),
                                 ),
                               ),
                             ),
                             const SizedBox(width: 5,),
                             const Icon(Icons.done_all,color: Color(0xffB7BDCB),),
                           ],
                         )

                       ],
                     )
                   ),
                 )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
