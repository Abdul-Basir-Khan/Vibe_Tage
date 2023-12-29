import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/forum_design/custom_textfield.dart';
import 'package:vibe_tag/screens/stream_screens/chat_member_screen.dart';
import 'package:vibe_tag/screens/stream_screens/stream_task.dart';
import 'package:vibe_tag/screens/stream_screens/task_tab/task_tab.dart';

import '../register/reusabletext.dart';



class StreamGeneralScreen extends StatefulWidget {
  const StreamGeneralScreen({super.key});

  @override
  State<StreamGeneralScreen> createState() => _StreamGeneralScreenState();
}

class _StreamGeneralScreenState extends State<StreamGeneralScreen> {

  int    _currentIndex =0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff485470),
          leading: const Icon(Icons.arrow_back_outlined,color: Color(0xffFFFFFF),),
          centerTitle: false,
          title: const ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: Image(image: AssetImage("Asset/images/stream/Ellipse 952.png"),),
            title:ReusableText(
              title: 'General',
              size: 16,
              weight: FontWeight.w700,
              color: Color(0xffFFFFFF),
            ),
            subtitle: ReusableText(
              title: 'Product Management',
              size: 12,
              weight: FontWeight.w500,
              color: Color(0xffFFFFFF),
            ),
          ),
          actions: [
            Container(
              height: 34,width: 34,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xffFFFFFF)),
                  color: const Color(0xf21FFFFFF),
              ),
              child:  const Image(
                color: Colors.white,
                image: AssetImage("Asset/icons/stream/Iconly Bold Video.png"),),
            ),
            Container(
              height: 34,width: 34,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xffFFFFFF)),
                  color: const Color(0xf21FFFFFF),
              ),
              child: const Image(image: AssetImage("Asset/icons/stream/Iconly Bulk Calling.png"),),
            ),
            Icon(Icons.more_vert,color: Colors.white,)
          ],

        ),
         bottomSheet:   Container(
           padding: const EdgeInsets.all(10),
           height: 132,color: Colors.white,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               const CustomTextField(
                 hintTextColor: Color(0xff99A7C7),
                 hintText: 'Send message',
               ),
               const SizedBox(height: 10,),
               Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Container(
                     padding: const EdgeInsets.all(10),
                     decoration: const BoxDecoration(

                       shape: BoxShape.circle,
                       color: Color(0xffF1F4FB),
                     ),
                     child:

                     const Image(image: AssetImage("Asset/images/stream/Group 76735.png"),),

                   ),
                   const SizedBox(width: 15,),
                   Container(
                     padding: const EdgeInsets.all(10),
                     decoration: const BoxDecoration(

                       shape: BoxShape.circle,
                       color: Color(0xffF1F4FB),

                     ),
                     child: const Image(image: AssetImage("Asset/images/stream/Group 1000005356.png"),),

                   ),
                   const SizedBox(width: 15,),
                   Container(
                     height: 34,width: 81,
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(18),

                       color: const Color(0xffF1F4FB),
                     ),
                     child: const Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [

                         Icon(Icons.check_box_outlined,color: Color(0xff7D8CAC),),
                         Spacer(),
                         ReusableText(
                           title: 'Task',
                           size: 14,
                           weight: FontWeight.w600,
                           color: Color(0xff7D8CAC),
                         ),

                       ],
                     ),
                   ),

                 ],
               )

             ],
           ),
         ),
        body: ListView(
          children: [
          Container(
            height: 44,width: MediaQuery.sizeOf(context).width*1,
            color: const Color(0xff485470),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          _currentIndex =0;

                        });
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width*0.33,color: Colors.transparent,
                        child:Column(
                          children: [
                            ReusableText(
                              title: 'Chat',
                              size: 15,
                              weight: FontWeight.w600,
                              color: _currentIndex ==0? const Color(0xffFFFFFF):const Color(0xf80FFFFFF),
                            ),
                            const SizedBox(height: 10,),
                            Divider(
                              thickness: 3,height: 3,color:_currentIndex ==0? const Color(0xffFF9200): Colors.transparent,
                            ),


                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          _currentIndex =1;

                        });
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width*0.33,color: Colors.transparent,
                        child:Column(
                          children: [
                            ReusableText(
                              title: 'File',
                              size: 15,
                              weight: FontWeight.w600,
                              color: _currentIndex ==1? const Color(0xffFFFFFF):const Color(0xf80FFFFFF),
                            ),
                            const SizedBox(height: 10,),
                            Divider(
                              thickness: 3,height: 3,color:_currentIndex ==1? const Color(0xffFF9200): Colors.transparent,
                            ),


                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          _currentIndex =2;

                        });
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width*0.33,color: Colors.transparent,
                        child:Column(
                          children: [
                            ReusableText(
                              title: 'Task',
                              size: 15,
                              weight: FontWeight.w600,
                              color: _currentIndex ==2? const Color(0xffFFFFFF):const Color(0xf80FFFFFF),
                            ),
                            const SizedBox(height: 10,),
                            Divider(
                              thickness: 3,height: 3,color:_currentIndex ==2? const Color(0xffFF9200): Colors.transparent,
                            ),


                          ],
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          _currentIndex==0?const ChatMemberScreen():    _currentIndex==2? TaskTab() : Container(),


      ],
      ),),
    );
  }
}
