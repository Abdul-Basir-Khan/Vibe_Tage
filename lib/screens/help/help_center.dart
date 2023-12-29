import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/help/home_page.dart';
import 'package:vibe_tag/screens/help/my_support.dart';

import '../register/reusabletext.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back_outlined,
            color: Color(0xff000000),
          ),
          title: const ReusableText(
            title: 'Help Center',
            size: 17,
            weight: FontWeight.w500,
            color: Color(0xff000000),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xffFF9200)),
              child: const Center(
                child: Image(
                  color: Colors.white,
                  image: AssetImage("Asset/icons/movie/Chat-3.png"),
                ),
              ),
            )
          ],
        ),
        body: DefaultTabController(
          length: 2,
          child: ListView(
            children: [
              const Divider(
                thickness: 3,
                height: 3,
                color: Color(0xf257D8CAC),
              ),
              const TabBar(
                  indicatorWeight: 3,
                  automaticIndicatorColorAdjustment: true,
                  indicatorColor: Color(0xffFF9200),
                  unselectedLabelColor: Color(0xff7D8CAC),
                  labelColor: Color(0xff212121),
                  labelStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                  tabs: [
                    Tab(
                      text: 'Homepage',
                    ),
                    Tab(
                      text: 'My Support Request',
                    ),
                  ]),
              Container(
                height: MediaQuery.of(context).size.height *0.80,
                child: const TabBarView(children: [
                  MyHomePageTab(),
                  MySupportTab(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
