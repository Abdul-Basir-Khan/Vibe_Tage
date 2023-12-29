import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/forum_design/forum_browser.dart';
import 'package:vibe_tag/screens/forum_design/genreal_click.dart';
import 'package:vibe_tag/screens/notification/notifcation_activities.dart';

import '../register/reusabletext.dart';

class FormGeneral extends StatefulWidget {
  const FormGeneral({Key? key}) : super(key: key);

  @override
  State<FormGeneral> createState() => _FormGeneralState();
}

class _FormGeneralState extends State<FormGeneral> {
  late TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFFFFFF),
        leading: const Icon(
          Icons.arrow_back_outlined,
          color: Color(0xff000000),
        ),
        title: const Center(
            child: ReusableText(
          title: 'Forum',
          size: 17,
          weight: FontWeight.w500,
          color: Color(0xff000000),
        )
        ),
        actions: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffF1F4FB),
            ),
            padding: const EdgeInsets.all(10),
            child: const Center(
              child: Icon(
                Icons.notifications,
                color: Color(0xff99A7C7),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(

            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffF1F4FB),
            ),
            padding: const EdgeInsets.all(10),
            child: Stack(
                clipBehavior: Clip.none,
                children: [
              Positioned(
                  right: 0,
                  top: 6,
                  child: Container(
                    clipBehavior: Clip.none,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffFF4C4B),
                    ),
                    height: 8,
                    width: 8,
                  )),
              const Center(
                child: Icon(
                  Icons.message,
                  color: Color(0xff99A7C7),
                ),
              ),
            ]),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(color: Color(0xffFFFFFF)),
            child: DefaultTabController(
              length: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child:


                          SizedBox(
                            height: 40,
                            child: TextField(
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                        color: Color(0xffC8D1E5))),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: const BorderSide(
                                        color: Color(0xffC8D1E5))),
                                hintStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff99A7C7)),
                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Color(0xff99A7C7),
                                ),
                                filled: true,
                                fillColor: const Color(0xffFFFFFF),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide:
                                      const BorderSide(color: Color(0xffC8D1E5)),
                                ),
                                hintText: "Search",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FormBrowser()));
                            });
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffFF9200),
                            ),
                            padding: const EdgeInsets.all(8),
                            child: const Center(
                                child: Icon(
                              Icons.add,
                              color: Color(0xffFFFFFF),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const TabBar(
                      isScrollable: true,
                      indicatorColor: Color(0xffFF9200),
                      labelColor: Color(0xff212121),
                      labelStyle:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                      unselectedLabelColor: Color(0xff7D8CAC),
                      tabs: [
                        Tab(
                          text: "News",
                        ),
                        Tab(
                          text: "General Discussion",
                        ),
                        Tab(
                          text: "Tips & Questions",
                        ),
                      ]),
                  SizedBox(
                    height: MediaQuery.of(context).size.height *0.74,
                    child: TabBarView(children: [
                      Container(),
                      const GenerallClicks(),
                      Container(),
                    ]),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
