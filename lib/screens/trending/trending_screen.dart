import 'package:flutter/material.dart';

import 'constant/custom_container.dart';

class TrendingScreen extends StatefulWidget {
  const TrendingScreen({super.key});

  @override
  State<TrendingScreen> createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffF1F4FB),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Text(
              "World News",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Color(0xff485470)),
            ),
            SizedBox(
              height: 10,
            ),
            CustomContainerForTrend(),
            CustomContainerForTrend(),
            CustomContainerForTrend(),
            CustomContainerForTrend(),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 3,
              height: 3,
              color: Color(0xffC8D1E5),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Hashtags",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Color(0xff485470)),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    4,
                    (index) => Container(
                      height: 50,
                      margin: EdgeInsets.only(right: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: Color(0xffFFF7ED),
                            ),
                            child: Center(
                                child: Icon(
                              Icons.trending_up,
                              color: Color(0xff212121),
                            )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "#news",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xffFF9200)),
                              ),
                              Text(
                                "206 posts",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color(0xff7D8CAC)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 3,
              height: 3,
              color: Color(0xffC8D1E5),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Popular Blogs today",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Color(0xff485470)),
            ),
            SizedBox(
              height: 10,
            ),
            CustomContainerForTrend(),
            CustomContainerForTrend(),
            CustomContainerForTrend(),
            CustomContainerForTrend(),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 3,
              height: 3,
              color: Color(0xffC8D1E5),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Most Recent Articles",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Color(0xff485470)),
            ),
            SizedBox(
              height: 10,
            ),
            CustomContainerForTrend(),
            CustomContainerForTrend(),
            CustomContainerForTrend(),
            CustomContainerForTrend(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    ));
  }
}
