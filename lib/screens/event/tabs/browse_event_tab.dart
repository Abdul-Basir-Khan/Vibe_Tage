import 'package:flutter/material.dart';

import '../event_join.dart';

class BrowseTab extends StatefulWidget {
  const BrowseTab({super.key});

  @override
  State<BrowseTab> createState() => _BrowseTabState();
}

class _BrowseTabState extends State<BrowseTab> {
  final List<String> browsePic = [
    'Asset/images/event/Rectangle 23852.png',
    'Asset/images/event/Rectangle 23852 (1).png',
    'Asset/images/event/Rectangle 23852 (2).png',
    'Asset/images/event/Rectangle 23852 (3).png',
    'Asset/images/event/Rectangle 23852 (4).png',
    'Asset/images/event/Rectangle 23852 (5).png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: browsePic.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                      fit: BoxFit.cover,
                      image: AssetImage(browsePic[index].toString())),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Cricket Match PSL 8 this year",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff120D26),
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xf20FF9200)),
                              child: const Icon(
                                Icons.calendar_month_rounded,
                                color: Color(0xffFF9200),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "14 December, 2021",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff120D26),
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Tuesday, 4:00PM - 9:00PM",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xff747688),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xf20FF9200)),
                              child: const Icon(
                                Icons.location_on,
                                color: Color(0xffFF9200),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Gala Convention Center",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xff120D26),
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "36 Rot street, Los angeles",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xff747688),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const EventJoin()));
                          },
                          child: Container(
                            height: 50,
                            width: MediaQuery.sizeOf(context).width,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color(0xffFFC107),
                                Color(0xffFF8205),
                              ]),
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffF1F4FB),
                            ),
                            child: const Center(
                              child: Text(
                                'Join Now',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
