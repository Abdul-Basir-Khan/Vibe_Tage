import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/event/tabs/browse_event_tab.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  final List<String> tabText = [
    'Browse Events',
    'Ongoing',
    'Invited',
    'Joined'
  ];
  final List pages = [
    const BrowseTab(),
    const SizedBox(),
    const SizedBox(),
    const SizedBox(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffF1F4FB),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          shrinkWrap: true,
          physics:const ScrollPhysics(),
          children: [

            SingleChildScrollView(
              physics: const ScrollPhysics(),
              scrollDirection: Axis.horizontal,
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
                      child: Container(
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
                          borderRadius: BorderRadius.circular(10),
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


            const SizedBox(height: 20,),

            pages[_currentIndex]

          ],
        ),
      ),
    ));
  }
}
