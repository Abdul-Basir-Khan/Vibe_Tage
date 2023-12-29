import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/forum_design/search_tab.dart';

import '../register/reusabletext.dart';
import 'browser_form_tab.dart';
import 'form_message.dart';
import 'form_thread.dart';

class FormBrowser extends StatefulWidget {
  const FormBrowser({Key? key}) : super(key: key);

  @override
  State<FormBrowser> createState() => _FormBrowserState();
}

class _FormBrowserState extends State<FormBrowser> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xffF1F4FB),
        body: SafeArea(
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: ReusableText(
                  title: 'Forum',
                  size: 20,
                  weight: FontWeight.w700,
                  color: Color(0xff485470),
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TabBar(
                        isScrollable: true,
                        indicatorColor: Color(0xffFF9200),
                        labelColor:Color(0xffFF9200) ,
                        labelStyle:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                        unselectedLabelColor: Color(0xff7D8CAC),
                        tabs: [
                          Tab(
                            text: "Browse Forum",
                          ),
                          Tab(
                            text: "Search",
                          ),
                          Tab(
                            text: "My Threads",
                          ),
                          Tab(
                            text: "My Messages",
                          ),
                        ]),
                    Container(
                      height: MediaQuery.sizeOf(context).height,
                      child: const TabBarView(children: [
                      BrowserFormTab(),
                      SearchTab(),
                        FormThread(),
                        FormMessage(),
                      ]),
                    )

                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
