import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/notification/history_tab.dart';

import '../register/reusabletext.dart';
import 'activity_tab.dart';

class NotificationActivites extends StatefulWidget {
  const NotificationActivites({Key? key}) : super(key: key);

  @override
  State<NotificationActivites> createState() => _NotificationActivitesState();
}

class _NotificationActivitesState extends State<NotificationActivites> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF1F4FB),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          currentIndex=1;
                        });
                      },
                      child: Container(
                        height: 37,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(26),
                            gradient: currentIndex == 1
                                ? LinearGradient(colors: [
                                    Color(0xffFDBA31),
                                    Color(0xffFF9200),
                                  ])
                                : LinearGradient(colors: [
                                    Color(0xffFFFFFF),
                                    Color(0xffFFFFFF),
                                  ])),
                        child: Center(
                          child: ReusableText(
                            title: 'Activities',
                            size: 14,
                            weight: FontWeight.w600,
                            color: currentIndex==1?Color(0xffFFFFFF):Color(0xff485470),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          currentIndex=2;
                        });
                      },
                      child: Container(
                        height: 37,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            gradient: currentIndex == 2
                                ? LinearGradient(colors: [
                              Color(0xffFDBA31),
                              Color(0xffFF9200),
                            ])
                                : LinearGradient(colors: [
                              Color(0xffFFFFFF),
                              Color(0xffFFFFFF),
                            ])),
                        child: Center(
                          child: ReusableText(
                            title: 'View History',
                            size: 14,
                            weight: FontWeight.w600,
                            color: currentIndex==2?Color(0xffFFFFFF):Color(0xff485470),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              currentIndex==1?ActivityTab():HistoryTab()
            ],
          ),
        ),
      ),
    );
  }
}
