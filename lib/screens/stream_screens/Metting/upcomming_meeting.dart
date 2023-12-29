import 'package:flutter/material.dart';

import '../../register/reusabletext.dart';

class UpcommingMetting extends StatefulWidget {
  const UpcommingMetting({super.key});

  @override
  State<UpcommingMetting> createState() => _UpcommingMettingState();
}

class _UpcommingMettingState extends State<UpcommingMetting> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: Image(
                    image: AssetImage("Asset/images/stream/Ellipse 946.png"),
                  ),
                  title: ReusableText(
                    title: 'Bessie Cooper',
                    size: 15,
                    weight: FontWeight.w600,
                    color: Color(0xff212121),
                  ),
                  subtitle: ReusableText(
                    title: 'Organizer',
                    size: 12,
                    weight: FontWeight.w500,
                    color: Color(0xff7D8CAC),
                  ),
                  trailing: Icon(
                    Icons.more_vert,
                    color: Color(0xffC8D1E5),
                  ),
                ),
                const ReusableText(
                  title: 'Sales Report Meeting',
                  size: 17,
                  weight: FontWeight.w700,
                  color: Color(0xff212121),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.watch_later_outlined,
                      color: Color(0xff99A7C7),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const ReusableText(
                      title: '12:00 AM - 01:30 AM',
                      size: 13,
                      weight: FontWeight.w500,
                      color: Color(0xff7D8CAC),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 6,
                      width: 6,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff7D8CAC),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.calendar_month_rounded,
                      color: Color(0xff99A7C7),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const ReusableText(
                      title: '15-May-2023',
                      size: 13,
                      weight: FontWeight.w500,
                      color: Color(0xff7D8CAC),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Stack(
                      alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
                      Image(
                          image:
                              AssetImage("Asset/images/stream/Ellipse 946 (1).png")),
                      Positioned(
                        left: 30,
                        child: Image(
                          image: AssetImage("Asset/images/stream/Ellipse 946 (1).png"),
                        ),
                      ),
                      Positioned(
                        left: 55,
                        child: Image(
                          image: AssetImage("Asset/images/stream/Ellipse 946 (1).png"),
                        ),
                      ),
                      Positioned(
                        left: 80,
                        child: Image(
                          image: AssetImage("Asset/images/stream/Ellipse 946 (1).png"),
                        ),
                      ),
                          Positioned(
                            left: 130,
                            child: ReusableText(
                              title: '+ 6',
                              size: 16,
                              weight: FontWeight.w600,
                              color: Color(0xff7D8CAC),
                            ),
                          ),
                    ]),
                    const Spacer(),
                    Container(
                      height: 36,
                      width: 92,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white,
                          border: Border.all(color: const Color(0xffFF9200))),
                      child: const Center(
                        child: ReusableText(
                          title: '+ Join',
                          size: 14,
                          weight: FontWeight.w600,
                          color: Color(0xffFF9200),
                        ),
                      ),
                    ),

                  ],
                ),


              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: Image(
                    image: AssetImage("Asset/images/stream/Ellipse 946.png"),
                  ),
                  title: ReusableText(
                    title: 'Bessie Cooper',
                    size: 15,
                    weight: FontWeight.w600,
                    color: Color(0xff212121),
                  ),
                  subtitle: ReusableText(
                    title: 'Organizer',
                    size: 12,
                    weight: FontWeight.w500,
                    color: Color(0xff7D8CAC),
                  ),
                  trailing: Icon(
                    Icons.more_vert,
                    color: Color(0xffC8D1E5),
                  ),
                ),
                const ReusableText(
                  title: 'Sales Report Meeting',
                  size: 17,
                  weight: FontWeight.w700,
                  color: Color(0xff212121),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.watch_later_outlined,
                      color: Color(0xff99A7C7),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const ReusableText(
                      title: '12:00 AM - 01:30 AM',
                      size: 13,
                      weight: FontWeight.w500,
                      color: Color(0xff7D8CAC),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 6,
                      width: 6,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff7D8CAC),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.calendar_month_rounded,
                      color: Color(0xff99A7C7),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const ReusableText(
                      title: '15-May-2023',
                      size: 13,
                      weight: FontWeight.w500,
                      color: Color(0xff7D8CAC),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Stack(
                      alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
                      Image(
                          image:
                              AssetImage("Asset/images/stream/Ellipse 946 (1).png")),
                      Positioned(
                        left: 30,
                        child: Image(
                          image: AssetImage("Asset/images/stream/Ellipse 946 (1).png"),
                        ),
                      ),
                      Positioned(
                        left: 55,
                        child: Image(
                          image: AssetImage("Asset/images/stream/Ellipse 946 (1).png"),
                        ),
                      ),
                      Positioned(
                        left: 80,
                        child: Image(
                          image: AssetImage("Asset/images/stream/Ellipse 946 (1).png"),
                        ),
                      ),
                          Positioned(
                            left: 130,
                            child: ReusableText(
                              title: '+ 6',
                              size: 16,
                              weight: FontWeight.w600,
                              color: Color(0xff7D8CAC),
                            ),
                          ),
                    ]),
                    const Spacer(),
                    Container(
                      height: 36,
                      width: 92,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.white,
                          border: Border.all(color: const Color(0xffFF9200))),
                      child: const Center(
                        child: ReusableText(
                          title: '+ Join',
                          size: 14,
                          weight: FontWeight.w600,
                          color: Color(0xffFF9200),
                        ),
                      ),
                    ),

                  ],
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
