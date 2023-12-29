import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/champion/wallet_tab.dart';
import '../register/reusabletext.dart';
import 'campaign_tab.dart';

class ChampionMobile extends StatefulWidget {
  const ChampionMobile({Key? key}) : super(key: key);

  @override
  State<ChampionMobile> createState() => _ChampionMobileState();
}

class _ChampionMobileState extends State<ChampionMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const ReusableText(
          title: 'Campaign',
          size: 17,
          weight: FontWeight.w500,
          color: Color(0xff000000),
        ),
        actions: [
          Container(
            height: 36,
            width: 36,
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xffFF9200)),
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
                    text: 'Wallet',
                  ),
                  Tab(
                    text: 'Campaign',
                  ),
                ]),
            Container(
              height: MediaQuery.of(context).size.height * 0.80,
              child: const TabBarView(children: [
                WalletTab(),
                CampaignTab(),
              ]),
            ),
          ],
        ),
      ),
    ));
  }
}
