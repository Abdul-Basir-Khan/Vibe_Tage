import 'package:flutter/material.dart';

import 'Tabs/funding_tab.dart';

class FundingScreen extends StatefulWidget {
  const FundingScreen({super.key});

  @override
  State<FundingScreen> createState() => _FundingScreenState();
}

class _FundingScreenState extends State<FundingScreen> {
  final List<String> tabText = [
    'Fundings',
    'My Funding Requests',
    'Create',

  ];
  final List pages = [
    const FundingTab(),
    const SizedBox(),
    const SizedBox(),

  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffF1F4FB),
          appBar: AppBar(
            backgroundColor: Colors.white,elevation: 0,
            leading: const Icon(Icons.arrow_back,color: Color(0xff000000),),
            centerTitle: true,
            title: const Text("Funding",style: TextStyle(fontSize: 16,color: Color(0xff000000),fontWeight: FontWeight.w700),),
          ),
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
                const SizedBox(height: 20,),

                pages[_currentIndex]

              ],
            ),
          ),
        ));
  }
}
