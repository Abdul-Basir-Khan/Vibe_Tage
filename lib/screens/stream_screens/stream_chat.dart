import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/stream_screens/stream_general.dart';
import 'package:vibe_tag/screens/stream_screens/stream_task.dart';

import '../register/reusabletext.dart';


class StreamChatScreen extends StatefulWidget {
  const StreamChatScreen({super.key});

  @override
  State<StreamChatScreen> createState() => _StreamChatScreenState();
}

class _StreamChatScreenState extends State<StreamChatScreen> {

  int _currentState =0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(
            margin: const EdgeInsets.all(8),
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffF1F4FB),
            ),
            child: const Icon(
              Icons.menu,
              color: Color(0xff7D8CAC),
            ),
          ),
          centerTitle: true,
          title: const Image(
            image: AssetImage("Asset/images/stream/Group 1000005016.png"),
          ),
          actions: [
            const Padding(
              padding: EdgeInsets.all(5),
              child: CircleAvatar(
                radius: 30,
                backgroundImage:
                AssetImage("Asset/images/stream/Ellipse 940.png"),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            const Divider(thickness: 3,height: 3,color:Color(0xffF8F9FB),),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  const ReusableText(
                    title: 'Chat',
                    size: 19,
                    weight: FontWeight.w700,
                    color: Color(0xff212121),
                  ),
                  const Spacer(),
                  Container(
                    height: 37,width: 135,
                    padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: const Color(0xffC8D1E5)),
                        color: Colors.white
                      ),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ReusableText(
                          title: 'All Teams',
                          size: 14,
                          weight: FontWeight.w500,
                          color: Color(0xff212121),
                        ),
                       Spacer(),
                        Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xff99A7C7),),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(

                        shape: BoxShape.circle,
                        color: Colors.white,
                      border: Border.all(color: const Color(0xffC8D1E5))
                    ),
                    child: const Image(image: AssetImage("Asset/icons/chat_update/Search-4.png"),),

                  )

                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(

                children: [
                  Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xffC8D1E5)),
                        color: Colors.white
                    ),
                    child: const Row(
                      children: [
                        Image(image: AssetImage("Asset/images/stream/Ellipse 951.png"),),
                        SizedBox(width: 10,),
                        ReusableText(
                          title: 'Finance Management Team',
                          size: 15,
                          weight: FontWeight.w700,
                          color: Color(0xff485470),
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_down,color:Color(0xff99A7C7)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(

                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xffC8D1E5)),
                        color: const Color(0xffF1F4FB),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Image(image: AssetImage("Asset/images/stream/Ellipse 952.png"),),
                            SizedBox(width: 10,),
                            ReusableText(
                              title: 'Finance Management Team',
                              size: 15,
                              weight: FontWeight.w700,
                              color: Color(0xff485470),
                            ),
                            Spacer(),
                            Icon(Icons.keyboard_arrow_down,color:Color(0xff99A7C7)),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              _currentState =0;
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const StreamGeneralScreen()));
                            });
                          },
                          child: Container(
                            height: 44,
                            width: MediaQuery.sizeOf(context).width*1,
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _currentState ==0?const Color(0xffFFFFFF):Colors.transparent,
                            ),
              child:  const ReusableText(
                title: 'General',
                size: 15,
                weight: FontWeight.w500,
                color: Color(0xff485470),
              ),

                          ),
                        ),

                        InkWell(
                          onTap: (){
                            setState(() {
                              _currentState =1;
                            });
                          },
                          child: Container(
                            height: 44,
                            width: MediaQuery.sizeOf(context).width*1,
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _currentState ==1?const Color(0xffFFFFFF):Colors.transparent,
                            ),
                            child:  const ReusableText(
                              title: 'Announcement',
                              size: 15,
                              weight: FontWeight.w500,
                              color: Color(0xff485470),
                            ),

                          ),
                        ),

                        InkWell(
                          onTap: (){
                            setState(() {
                              _currentState =2;
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>StreamTask()));
                            });
                          },
                          child: Container(
                            height: 44,
                            width: MediaQuery.sizeOf(context).width*1,
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _currentState ==2?const Color(0xffFFFFFF):Colors.transparent,
                            ),
                            child:  const ReusableText(
                              title: 'Assigned Task',
                              size: 15,
                              weight: FontWeight.w500,
                              color: Color(0xff485470),
                            ),

                          ),
                        ),

                        InkWell(
                          onTap: (){
                            setState(() {
                              _currentState =3;
                            });
                          },
                          child: Container(
                            height: 44,
                            width: MediaQuery.sizeOf(context).width*1,
                            padding: const EdgeInsets.all(10),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _currentState ==3?const Color(0xffFFFFFF):Colors.transparent,
                            ),
                            child:  const ReusableText(
                              title: 'Discussion',
                              size: 15,
                              weight: FontWeight.w500,
                              color: Color(0xff485470),
                            ),

                          ),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xffC8D1E5)),
                        color: Colors.white
                    ),
                    child: const Row(
                      children: [
                        Image(image: AssetImage("Asset/images/stream/Ellipse 953.png"),),
                        SizedBox(width: 10,),
                        ReusableText(
                          title: 'Finance Management Team',
                          size: 15,
                          weight: FontWeight.w700,
                          color: Color(0xff485470),
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_down,color:Color(0xff99A7C7)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xffC8D1E5)),
                        color: Colors.white
                    ),
                    child: const Row(
                      children: [
                        Image(image: AssetImage("Asset/images/stream/Ellipse 951 (1).png"),),
                        SizedBox(width: 10,),
                        ReusableText(
                          title: 'Finance Management Team',
                          size: 15,
                          weight: FontWeight.w700,
                          color: Color(0xff485470),
                        ),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_down,color:Color(0xff99A7C7)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
