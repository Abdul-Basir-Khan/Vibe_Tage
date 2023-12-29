import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/stream_screens/end_call_screen.dart';

import '../register/reusabletext.dart';

class StreamCallScreen extends StatefulWidget {
  const StreamCallScreen({super.key});

  @override
  State<StreamCallScreen> createState() => _StreamCallScreenState();
}

class _StreamCallScreenState extends State<StreamCallScreen> {
  bool _currentState = true;
  bool _currentState1 = true;

  final List<String> imagePaths = [
    'Asset/icons/stream/Iconly Bold Voice.png',
    'Asset/icons/stream/Iconly Bold Video.png',
    'Asset/icons/stream/Volume Down.png',
    'Asset/icons/stream/Group (1).png',
    'Asset/icons/stream/Setting-2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentState = !_currentState;
                    _currentState1 = false;
                  });
                },
                child: Container(
                  height: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 4,
                          color: _currentState
                              ? const Color(0xffFF9200)
                              : Colors.transparent),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "Asset/images/stream/Group 1000002828.png"))),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentState1 = !_currentState1;
                    _currentState = false;
                  });
                },
                child: Container(
                  height: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 4,
                          color: _currentState1
                              ? const Color(0xffFF9200)
                              : Colors.transparent),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "Asset/images/stream/Group 1000002828.png"))),
                ),
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ...List.generate(
                    5,
                    (index) => Container(
                      height: 56,
                      width: 55,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          border: Border.all(
                            color: const Color(0xffC8D1E5),
                          )),
                      child: Center(
                        child: Image(
                          image: AssetImage(imagePaths[index].toString()),
                          color: Color((0xffC8D1E5)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => StreamEndCall()));
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1,
                  height: 56,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffFF4C4B),
                  ),
                  child: const Center(
                    child: ReusableText(
                      title: 'End Call',
                      size: 17,
                      weight: FontWeight.w700,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
