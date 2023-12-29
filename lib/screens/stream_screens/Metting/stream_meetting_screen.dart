import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/stream_screens/Metting/create_meeting.dart';
import 'package:vibe_tag/screens/stream_screens/Metting/upcomming_meeting.dart';

import '../../register/reusabletext.dart';

class MeetingScreen extends StatefulWidget {
  const MeetingScreen({super.key});

  @override
  State<MeetingScreen> createState() => _MeetingScreenState();
}

class _MeetingScreenState extends State<MeetingScreen> {

  var _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffF1F4FB),
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
          Container(
            width: double.infinity,
            height: 261,
            color: Colors.white,
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                        height: 30,
                        width: 30,
                        image: AssetImage("Asset/icons/register/hand.png")),
                    SizedBox(
                      width: 10,
                    ),
                    ReusableText(
                      title: 'Welcome to Vibetag-Stream!',
                      size: 19,
                      weight: FontWeight.w700,
                      color: Color(0xff212121),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const ReusableText(
                  title: 'Lorem Ipsum is simply dummy text of the printing and\ntypesetting industry. Lorem Ipsum has been e industry \'s\n standard dummy text ever since the 1500s.',
                  size: 12,
                  weight: FontWeight.w500,
                  color: Color(0xff7D8CAC),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreateMetting()  ));


                  },
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff485470)
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.video_call_rounded,color:Color(0xffC8D1E5)),
                        const SizedBox(width: 10,),
                        const ReusableText(
                          title: 'New Meeting',
                          size: 15,
                          weight: FontWeight.w700,
                          color: Color(0xffFFFFFF),
                        ),
                        const Spacer(),
                        Container(
                          height: 34,
                          child: const VerticalDivider(
                            thickness: 2,width: 2,
                            color: Color(0xff7D8CAC),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        const Icon(Icons.keyboard_arrow_up,color: Color(0xffC8D1E5),)

                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xffC8D1E5)),
                    color: Colors.white
                  ),
                  child: Row(
                    children: [
                      const ReusableText(
                        title: 'Meeting ID or name',
                        size: 15,
                        weight: FontWeight.w500,
                        color: Color(0xff99A7C7),
                      ),
                      const Spacer(),
                      Container(
                        height: 36,width: 63,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffC8D1E5),
                      ),
                        child: const Center(
                          child: ReusableText(
                            title: 'Join',
                            size: 16,
                            weight: FontWeight.w700,
                            color: Color(0xffFFFFFF),
                          ),
                        ),

                      ),


                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:

            Row(
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      _currentIndex =0;

                    });
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width*0.34,
                    color: Colors.transparent,
                    child:Column(
                      children: [
                        ReusableText(
                          title: 'Upcoming Meeting',
                          size: 15,
                          weight: FontWeight.w600,
                          color: _currentIndex ==0? const Color(0xff212121):const Color(0xff7D8CAC),
                        ),
                        const SizedBox(height: 10,),
                        Divider(
                          thickness: 2,height: 2,color:_currentIndex ==0? const Color(0xff212121):const Color(0xffC8D1E5),
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
                    width: MediaQuery.sizeOf(context).width*0.33,
                    color: Colors.transparent,
                    child:Column(
                      children: [
                        ReusableText(
                          title: 'My Meetings',
                          size: 15,
                          weight: FontWeight.w600,
                          color: _currentIndex ==1? const Color(0xff212121):const Color(0xff7D8CAC),
                        ),
                        const SizedBox(height: 10,),
                        Divider(
                          thickness: 2,height: 2,color:_currentIndex ==1? const Color(0xff212121):const Color(0xffC8D1E5),
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
                    width: MediaQuery.sizeOf(context).width*0.33,
                 color: Colors.transparent,
                    child:Column(
                      children: [
                        ReusableText(
                          title: 'Recording',
                          size: 15,
                          weight: FontWeight.w600,
                          color: _currentIndex ==2? const Color(0xff212121):const Color(0xff7D8CAC),
                        ),
                        const SizedBox(height: 10,),
                        Divider(
                          thickness: 2,height: 2,color:_currentIndex ==2? const Color(0xff212121):const Color(0xffC8D1E5),
                        ),



                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          _currentIndex==0?const UpcommingMetting():Container()
        ],
      ),
    ));
  }
}
