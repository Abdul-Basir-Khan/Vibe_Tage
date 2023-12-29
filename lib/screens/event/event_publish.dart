import 'package:flutter/material.dart';

class EventPublish extends StatefulWidget {
  const EventPublish({super.key});

  @override
  State<EventPublish> createState() => _EventPublishState();
}

class _EventPublishState extends State<EventPublish> {
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(image: AssetImage("Asset/images/event/Group 76844.png")),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Momin Hassan",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff212121),
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 25,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xffC8D1E5)),
                              color: Colors.white),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Public",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff7D8CAC),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Color(0xff7D8CAC),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xffC8D1E5)),
                              color: Colors.white),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Category",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color(0xff7D8CAC),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.keyboard_arrow_down,
                                color: Color(0xff7D8CAC),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xffC8D1E5)),
                  child: const Center(
                      child: Icon(
                    Icons.close,
                    color: Colors.white,
                  )),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "🤙 What’s your Vibe?",
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff7D8CAC),
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffC8D1E5)),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(
                      height: 196,
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "Asset/images/event/Rectangle 23852.png")),
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
                          onTap: () {},
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
                                'Publish',
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
            ),
          ],
        ),
      ),
    ));
  }
}
