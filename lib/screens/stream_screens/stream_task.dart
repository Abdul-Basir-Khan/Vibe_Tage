import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/stream_screens/company_task/stream_company_task.dart';
import 'package:vibe_tag/screens/stream_screens/my_task_tab.dart';

import '../register/reusabletext.dart';


class StreamTask extends StatefulWidget {
  const StreamTask({super.key});

  @override
  State<StreamTask> createState() => _StreamTaskState();
}

class _StreamTaskState extends State<StreamTask> {
  int  _currentIndex =0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xffF1F4FB),

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


      body: ListView(
      children: [
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              const ReusableText(
                title: 'Task',
                size: 19,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
              const Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> StreamCompanyTask()));
                },
                child: Container(
                  height: 38,
                  width: 136,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: const Color(0xff485470),
                  ),
                  child: const Center(
                    child: ReusableText(
                      title: 'Add New Task',
                      size: 14,
                      weight: FontWeight.w600,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
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
        SizedBox(height: 25,),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                setState(() {
                  _currentIndex =0;



                });
              },
              child: Container(
                width:MediaQuery.sizeOf(context).width*0.49,color: Colors.transparent,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: ReusableText(
                        title: 'My Tasks',
                        size: 16,
                        weight: FontWeight.w600,
                        color: _currentIndex ==0? const Color(0xff485470):const Color(0xff7D8CAC),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Divider(
                      thickness: 2,height: 2,color:_currentIndex ==0? const Color(0xff485470):const Color(0xffC8D1E5),
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
                width: MediaQuery.sizeOf(context).width*0.50,color: Colors.transparent,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: ReusableText(
                        title: 'My Employee',
                        size: 16,
                        weight: FontWeight.w600,
                        color: _currentIndex ==1? const Color(0xff485470):const Color(0xff7D8CAC),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Divider(
                      thickness: 2,height: 2,color:_currentIndex ==1? const Color(0xff485470):const Color(0xffC8D1E5),
                    ),


                  ],
                ),
              ),
            ),
          ],
        ),

        _currentIndex  ==0?const MyTaskTab():const MyTaskTab()


      ],
    ),));
  }
}
