import 'package:flutter/material.dart';

import '../notification/activity_tab.dart';
import '../notification/history_tab.dart';



class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final List<String> tabText = [
    'Activities',
    'View History',

  ];
  final List pages = [

    const ActivityTab(),
    const HistoryTab(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffF1F4FB),
          body: ListView(
            shrinkWrap: true,
            physics:const ScrollPhysics(),
            children: [
              SingleChildScrollView(
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...List.generate(
                          tabText.length,
                              (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                            child:

                            Container(
                              height: 37,
                              margin: const EdgeInsets.only(right: 10),
                              padding: const EdgeInsets.only(
                                  top: 9, right: 20, left: 20, bottom: 9),
                              decoration: BoxDecoration(
                                gradient: _currentIndex == index
                                    ? const LinearGradient(colors: [
                                  Color(0xffFFC107),
                                  Color(0xffFF8205),
                                ]
                                )
                                    : const LinearGradient(colors: [
                                  Color(0xffFFFFFF),
                                  Color(0xffFFFFFF),
                                ]
                                ),
                                borderRadius: BorderRadius.circular(26),
                                color: const Color(0xffF1F4FB),
                              ),
                              child: Center(
                                child: Text(
                                  tabText[index].toString(),
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: _currentIndex == index
                                          ? const Color(0xffFFFFFF)
                                          : const Color(0xff485470),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30,),

              pages[_currentIndex]

            ],
          ),
        ));
  }
}
