import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../register/reusabletext.dart';

class ChampionPreview extends StatefulWidget {
  const ChampionPreview({Key? key}) : super(key: key);

  @override
  State<ChampionPreview> createState() => _ChampionPreviewState();
}

class _ChampionPreviewState extends State<ChampionPreview> {
  bool isChecked12 = false;
  bool _switchValue1 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
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
          title: 'New Campaign',
          size: 17,
          weight: FontWeight.w500,
          color: Color(0xff000000),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.error,
                color: Color(0xff99A7C7),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 67,
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * 1,
            color: const Color(0xff99A7C7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  radius: 20.0,
                  lineWidth: 4.0,
                  percent: 0.33,
                  center: const Text(
                    "1/3",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  progressColor: Colors.white,
                ),
                const SizedBox(
                  width: 20,
                ),
                const ReusableText(
                  title: 'Publish',
                  size: 17,
                  weight: FontWeight.w500,
                  color: Color(0xffFFFFFF),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'You will be charged ',
                        style: TextStyle(
                          color: Color(0xff485470),
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      TextSpan(
                        text: ' \$20.00',
                        style: TextStyle(
                          color: Color(0xff212121),
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      TextSpan(
                        text: ' Daily and\nyour ad will be ended on',
                        style: TextStyle(
                          color: Color(0xff485470),
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      TextSpan(
                        text: ' 04 May, 2023',
                        style: TextStyle(
                          color: Color(0xff212121),
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isChecked12 = !isChecked12;
                        });
                      },
                      child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: isChecked12
                                  ? const Color(0xffFFFFFF)
                                  : const Color(0xFFC8D1E5),
                              width: 2,
                            ),
                            color:
                                isChecked12 ? const Color(0xFFFF9200) : Colors.white,
                          ),
                          child: Center(
                            child: isChecked12
                                ? const Icon(
                                    Icons.check,
                                    size: 20,
                                    color: Colors.white,
                                  )
                                : null,
                          )),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const ReusableText(
                      title: 'I agree to all Terms and Conditions',
                      size: 15,
                      weight: FontWeight.w600,
                      color: Color(0xff485470),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(
            thickness: 6,
            height: 6,
            color: Color(0xffF8F9FB),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                const ReusableText(
                  title: 'Preview',
                  size: 20,
                  weight: FontWeight.w700,
                  color: Color(0xff212121),
                ),
                const Spacer(),
                Switch(
                  value: _switchValue1!,
                  onChanged: (value) {
                    setState(() {
                      _switchValue1 = value;
                    });
                  },
                  activeColor: const Color(0xFFFFC007),
                  // Active gradient color
                  activeTrackColor: const Color(0xFFFF8505),
                  // Active gradient color
                  inactiveThumbColor: Colors.white,
                  // Disabled color
                  inactiveTrackColor:
                      const Color(0xf30000000), // Disabled color
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xffC8D1E5)),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage(
                                "Asset/icons/champiogn_new/Ellipse 753.png"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ReusableText(
                                    title: 'Apple Official',
                                    color: Color(0xff212121),
                                    size: 14,
                                    weight: FontWeight.w700,
                                  ),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Image(
                                    image: AssetImage(
                                        "Asset/icons/register/Subtract.png"),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ReusableText(
                                title: 'Sponsored',
                                color: Color(0xffFF9200),
                                size: 11,
                                weight: FontWeight.w500,
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.more_horiz,
                            size: 35,
                            color: Color(0xff99A7C7),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ReusableText(
                        title:
                            'Lorem Ipsum is simply dummy text of the printing\nand typesetting',
                        color: Color(0xff7D8CAC),
                        size: 14,
                        weight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffFFE8C9),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 1,
                        child: const Image(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(
                                "Asset/icons/champiogn_new/Rectangle 24050.png")),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ReusableText(
                                  title: 'New Update on Mac 2023',
                                  color: Color(0xff212121),
                                  size: 16,
                                  weight: FontWeight.w700,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ReusableText(
                                  title: 'MacBook M2 Pro 2023',
                                  color: Color(0xf55212121),
                                  size: 14,
                                  weight: FontWeight.w600,
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              height: 36,
                              width: 107,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFF9200),
                                  borderRadius: BorderRadius.circular(8)),
                              child: const Center(
                                  child: ReusableText(
                                title: 'Shop Now',
                                color: Color(0xffFFFFFF),
                                size: 14,
                                weight: FontWeight.w700,
                              )),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                          color: Color(0xff7D8CAC),
                          image: AssetImage(
                              "Asset/icons/chat_update/Heart-3.png")),
                      SizedBox(
                        width: 10,
                      ),
                      ReusableText(
                        title: 'React',
                        color: Color(0xff7D8CAC),
                        size: 13,
                        weight: FontWeight.w500,
                      ),
                      Spacer(),
                      Image(
                          color: Color(0xff7D8CAC),
                          image:
                              AssetImage("Asset/icons/chat_update/Chat-3.png")),
                      SizedBox(
                        width: 10,
                      ),
                      ReusableText(
                        title: 'Comment',
                        color: Color(0xff7D8CAC),
                        size: 13,
                        weight: FontWeight.w500,
                      ),
                      Spacer(),
                      Image(
                          color: Color(0xff7D8CAC),
                          image: AssetImage(
                              "Asset/icons/champiogn_new/Group 289754.png")),
                      SizedBox(
                        width: 10,
                      ),
                      ReusableText(
                        title: 'Revibed',
                        color: Color(0xff7D8CAC),
                        size: 13,
                        weight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 54,
                  width: 122,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffF1F4FB)),
                  child: const Center(
                    child: ReusableText(
                      title: 'Back',
                      size: 14,
                      weight: FontWeight.w600,
                      color: Color(0xff7D8CAC),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: 54,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [
                          Color(0xffFFC107),
                          Color(0xffFF8205),
                        ]),
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF1F4FB)),
                    child: const Center(
                      child: ReusableText(
                        title: 'Save & Continue',
                        size: 14,
                        weight: FontWeight.w600,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
