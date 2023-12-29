import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/chat_update/chats.dart';
import 'package:vibe_tag/screens/register/reusabletext.dart';

class ChatUpdate extends StatefulWidget {
  const ChatUpdate({Key? key}) : super(key: key);

  @override
  State<ChatUpdate> createState() => _ChatUpdateState();
}

class _ChatUpdateState extends State<ChatUpdate> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  const Icon(Icons.arrow_back_outlined,color: Color(0xff000000),),
                  const SizedBox(width: 13,),
                  const ReusableText(title: 'Chat',size: 20,weight: FontWeight.w700,color: Color(0xff000000),),
                  const Spacer(),
                  Container(
                    height: 34,width: 34,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffFFFFFF),
                    ),
                    child: const Center(
                      child: Image(image: AssetImage("Asset/icons/chat_update/Search-4.png"),),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    height: 34,width: 34,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffFFFFFF),
                    ),
                    child: const Center(
                      child: Icon(Icons.more_horiz,color: Color(0xff7D8CAC),)
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                color: Color(0xffFFFFFF),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(title: 'Moments',size: 15,weight: FontWeight.w700,color: Color(0xff7D8CAC),),
                            Spacer(),
                            ReusableText(title: 'See all',size: 15,weight: FontWeight.w700,color: Color(0xff7D8CAC),),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffC8D1E5),
                                  ),
                                  child: const Center(child: Icon(Icons.add,color: Colors.white,),),
                                ),
                                const SizedBox(height: 10,),
                                const ReusableText(title: 'Create',alignment: TextAlign.center,size: 13,weight: FontWeight.w500,color: Color(0xff485470),),
                              ],
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              children: [
                                DottedBorder(
                                  strokeWidth: 2 ,
                                  color: const Color(0xffFF9200),
                                  borderType: BorderType.RRect,
                                  radius: const Radius.circular(40),
                                  padding: const EdgeInsets.all(3),
                                  child: const ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                    child: Column(
                                      children: [
                                        Image(image: AssetImage("Asset/images/chat_update/Ellipse 885.png"),),

                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8,),
                                const ReusableText(title: 'Mark J.',size: 13,weight: FontWeight.w500,color: Color(0xff485470),),
                              ],
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              children: [
                                DottedBorder(
                                  strokeWidth: 2 ,
                                  color: const Color(0xffFF9200),
                                  borderType: BorderType.RRect,
                                  radius: const Radius.circular(40),
                                  padding: const EdgeInsets.all(3),
                                  child: const ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                    child: Column(
                                      children: [
                                        Image(image: AssetImage("Asset/images/chat_update/Ellipse 885 (1).png"),),

                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8,),
                                const ReusableText(title: 'Jia R',size: 13,weight: FontWeight.w500,color: Color(0xff485470),),
                              ],
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              children: [
                                DottedBorder(
                                  strokeWidth: 2 ,
                                  color: const Color(0xffFF9200),
                                  borderType: BorderType.RRect,
                                  radius: const Radius.circular(40),
                                  padding: const EdgeInsets.all(3),
                                  child: const ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                    child: Column(
                                      children: [
                                        Image(image: AssetImage("Asset/images/chat_update/Ellipse 885 (2).png"),),

                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8,),
                                const ReusableText(title: 'Winu K',size: 13,weight: FontWeight.w500,color: Color(0xff485470),),
                              ],
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              children: [
                                DottedBorder(
                                  strokeWidth: 2 ,
                                  color: const Color(0xffFF9200),
                                  borderType: BorderType.RRect,
                                  radius: const Radius.circular(40),
                                  padding: const EdgeInsets.all(3),
                                  child: const ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(12)),
                                    child: Column(
                                      children: [
                                        Image(image: AssetImage("Asset/images/chat_update/Ellipse 885 (3).png"),),

                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8,),
                                const ReusableText(title: 'Lwen',size: 13,weight: FontWeight.w500,color: Color(0xff485470),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height:49 ,
              decoration: const BoxDecoration(
                color: Color(0xffF8F9FB),
              ),
              child: const Column(
                children: [
                  TabBar(
                      indicatorColor: Color(0xffFF9200),
                      labelColor: Color(0xffFF9200),
                      labelStyle: TextStyle(
                          fontSize: 15,fontWeight: FontWeight.w600
                      ),
                      unselectedLabelColor: Color(0xff7D8CAC),
                      tabs: [
                        Tab(text: 'Chats',),
                        Tab(text: 'Groups',),
                        Tab(text: 'People',),
                      ]),

                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.60,
              color: Colors.white,
              child: TabBarView(children: [
                const ChatsTab(),
                Container(),
                Container()
              ]),
            ),


          ],
        ),
    );
  }
}
