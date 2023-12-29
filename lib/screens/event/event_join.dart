import 'package:flutter/material.dart';

import 'event_publish.dart';
class EventJoin extends StatefulWidget {
  const EventJoin({super.key});

  @override
  State<EventJoin> createState() => _EventJoinState();
}

class _EventJoinState extends State<EventJoin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              const Image(
                  fit: BoxFit.cover,
                  image: AssetImage("Asset/images/event/Rectangle 23853.png")),
              Positioned(
                bottom: -30,
                child: Container(
                  height: 60,
                  width: MediaQuery.sizeOf(context).width * 0.70,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(1, 0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xffFEFEFF),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image(
                              image:
                                  AssetImage("Asset/images/event/Oval.png")),
                          Positioned(
                              left: 20,
                              child: Image(
                                  image: AssetImage(
                                      "Asset/images/event/Oval Copy.png"))),
                          Positioned(
                              left: 40,
                              child: Image(
                                  image: AssetImage(
                                      "Asset/images/event/Oval Copy 4.png"))),
                        ],
                      ),
                      const SizedBox(
                        width: 45,
                      ),
                      const Text(
                        '+20 Going',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffFF9200),
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      Container(
                        height: 28,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: const Color(0xffFF9200),
                        ),
                        child: const Center(
                          child: Text(
                            'Invite',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 45,
                ),
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
                RichText(
                  text: const TextSpan(
                      text:
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem dummy text ever since the 1500s...',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff7D8CAC),
                          fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(
                          text: 'Read more',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xff485470),
                              fontWeight: FontWeight.w500),
                        )
                      ]),
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
                          shape: BoxShape.circle, color: Color(0xf20FF9200)),
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
                          shape: BoxShape.circle, color: Color(0xf20FF9200)),
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
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 29,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            color: const Color(0xffF8F9FB),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage("Asset/images/event/emojis F.png")),
                Image(image: AssetImage("Asset/images/event/heart.png")),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "23.4k",
                  style: TextStyle(
                      fontSize: 11,
                      color: Color(0xff7D8CAC),
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text(
                  "4.3K Comments | 1.9K Revibed",
                  style: TextStyle(
                      fontSize: 11,
                      color: Color(0xff7D8CAC),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage(
                          "Asset/images/event/Iconly Light Heart.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "React",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff7D8CAC),
                          fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Image(
                      image: AssetImage("Asset/images/event/Chat-4.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Comment",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff7D8CAC),
                          fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Image(
                      image: AssetImage("Asset/images/event/Group 289754.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Revibed",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff7D8CAC),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 2,
                  height: 2,
                  color: Color(0xffE3E8F2),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Image(
                        image:
                            AssetImage("Asset/images/event/Group 76844.png")),
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gwen Stacy",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff212121),
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "1hr ago",
                          style: TextStyle(
                              fontSize: 10,
                              color: Color(0xff7D8CAC),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 8, right: 20, bottom: 8, left: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          border: Border.all(color: const Color(0xffFF9200))),
                      child: const Center(
                        child: Text(
                          "Message",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffFF9200),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Image(image: AssetImage("Asset/images/event/map.png")),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EventPublish()));
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.sizeOf(context).width * 0.80,
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
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.sizeOf(context).width * 0.10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffC8D1E5),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
