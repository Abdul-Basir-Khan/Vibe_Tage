import 'package:flutter/material.dart';

import '../register/reusabletext.dart';

class ActivityTab extends StatefulWidget {
  const ActivityTab({Key? key}) : super(key: key);

  @override
  State<ActivityTab> createState() => _ActivityTabState();
}

class _ActivityTabState extends State<ActivityTab> {
  List<NotificationModel> List1 = [
    NotificationModel(
        text1: "Ramzan Ali",
        text2: "reacted to Neha Singh post.",
        text3: "6 days ago"),
    NotificationModel(
        text1: "Ramzan Ali",
        text2: "reacted to Neha Singh post.",
        text3: "6 days ago"),
    NotificationModel(
        text1: "Ramzan Ali",
        text2: "reacted to Neha Singh post.",
        text3: "6 days ago"),
    NotificationModel(
        text1: "Ramzan Ali",
        text2: "reacted to Neha Singh post.",
        text3: "6 days ago"),
    NotificationModel(
        text1: "Ramzan Ali",
        text2: "reacted to Neha Singh post.",
        text3: "6 days ago"),
    NotificationModel(
        text1: "Ramzan Ali",
        text2: "reacted to Neha Singh post.",
        text3: "6 days ago"),
    NotificationModel(
        text1: "Ramzan Ali",
        text2: "reacted to Neha Singh post.",
        text3: "6 days ago"),
    NotificationModel(
        text1: "Ramzan Ali",
        text2: "reacted to Neha Singh post.",
        text3: "6 days ago"),
    NotificationModel(
        text1: "Ramzan Ali",
        text2: "reacted to Neha Singh post.",
        text3: "6 days ago"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.93,
            child:  ListView.builder(
              scrollDirection: Axis.vertical,physics: const ScrollPhysics(),
              itemCount: List1.length,
              itemBuilder: (BuildContext context, int index) {
                return

                  Column(
                    children: [
                      Container(
                      height: 73,
                      color: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        leading: Stack(
                          children: [
                            const CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xffD9D9D9),
                            ),
                            Positioned(
                                top: 35,
                                left: 40,
                                child: Container(
                                  height: 18,
                                  width: 18,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: const Color(0xffFFFFFF)),
                                      color: const Color(0xffFFA6A6),
                                      shape: BoxShape.circle),
                                ))
                          ],
                        ),
                        title: RichText(
                          text: TextSpan(
                            style: const TextStyle(fontSize: 20, color: Colors.black),
                            children: [
                              TextSpan(
                                text: List1[index].text1.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: Color(0xff212121)),
                              ),
                              TextSpan(
                                  text: List1[index].text2.toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xff212121))),
                            ],
                          ),
                        ),
                        subtitle: ReusableText(
                          title: List1[index].text3.toString(),
                          size: 13,
                          weight: FontWeight.w500,
                          color: const Color(0xff485470),
                        ),
                      ),
                ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  );
              },
            ),
          ),
          ],
        ),
      ),
    );
  }
}

class NotificationModel {
  String? text1;
  String? text2;
  String? text3;

  NotificationModel({this.text1, this.text2, this.text3});
}
