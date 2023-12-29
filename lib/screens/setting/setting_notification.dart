import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/setting/setting_general_notification_tab.dart';

import '../register/reusabletext.dart';

class SettingNotification extends StatefulWidget {
  const SettingNotification({super.key});

  @override
  State<SettingNotification> createState() => _SettingNotificationState();
}

class _SettingNotificationState extends State<SettingNotification> {

  int  _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,leading:   IconButton(icon:const Icon(Icons.arrow_back_outlined,color: Color(0xff212121),),onPressed: (){
        Navigator.pop(context);
      },),
        title:const ReusableText(
          title: 'Notification',
          size: 16,
          weight: FontWeight.w700,
          color: Color(0xff363D4C),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            width: MediaQuery.sizeOf(context).width*0.15,height: MediaQuery.sizeOf(context).height*0.05,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),gradient: const LinearGradient(
                colors: [
                  Color(0xffFFC107),
                  Color(0xffFF9200)
                ]
            ),
            ),
            child: const Center(
              child:
              ReusableText(
                title: 'Save',
                size: 14,
                weight: FontWeight.w700,
                color: Color(0xffFFFFFF),
              ),
            ),
          )
        ],
      ),
      backgroundColor: const Color(0xffFFFFFF),

      body: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,children: [
        const SizedBox(height: 10,),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: (){
                setState(() {
                  _currentIndex=0;
                });
              },
              child: Container(
                width: MediaQuery.sizeOf(context).width*0.44,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  gradient:
                  _currentIndex==0?
                  const LinearGradient(
                      colors: [
                        Color(0xffFDBA31),
                        Color(0xffFF9200),
                      ]
                  ):  const LinearGradient(
                      colors: [
                        Color(0xffF1F4FB),
                        Color(0xffF1F4FB),
                      ]
                  ),
                ),
                child: Center(
                  child: ReusableText(
                    title: 'General Notification',
                    size: 15,
                    weight: FontWeight.w700,
                    color: _currentIndex==0?const Color(0xffFFFFFF):const Color(0xff7D8CAC),
                  )
                  ,
                ),
              ),
            ),
            const SizedBox(width: 15,),
            InkWell(
              onTap: (){
                setState(() {
                  _currentIndex=1;
                });
              },
              child: Container(
                width: MediaQuery.sizeOf(context).width*0.44,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  gradient:
                  _currentIndex==1?
                  const LinearGradient(
                      colors: [
                        Color(0xffFDBA31),
                        Color(0xffFF9200),
                      ]
                  ):  const LinearGradient(
                      colors: [
                        Color(0xffF1F4FB),
                        Color(0xffF1F4FB),
                      ]
                  ),
                ),
                child: Center(
                  child: ReusableText(
                    title: 'Email Notification',
                    size: 15,
                    weight: FontWeight.w700,
                    color: _currentIndex==1?const Color(0xffFFFFFF):const Color(0xff7D8CAC),
                  )
                  ,
                ),
              ),
            ),
          ],
        ),
        _currentIndex==0?const SettingGeneralNotificationTab():_currentIndex==1?Container():Container()


      ],
      ),
    ),);
  }
}
