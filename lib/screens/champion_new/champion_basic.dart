import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:vibe_tag/screens/champion_new/champion_preview.dart';

import '../register/reusabletext.dart';

class ChampionBasic extends StatefulWidget {
  const ChampionBasic({Key? key}) : super(key: key);

  @override
  State<ChampionBasic> createState() => _ChampionBasicState();
}

class _ChampionBasicState extends State<ChampionBasic> {
  bool isChecked11 = false;
  bool isChecked10 = false;

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
                  title: 'Ad details',
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: ReusableText(
              title: 'Basic Info',
              size: 18,
              weight: FontWeight.w700,
              color: Color(0xff212121),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 1,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffF1F4FB)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ReusableText(
                  title: 'Ad Name',
                  size: 14,
                  weight: FontWeight.w600,
                  color: Color(0xff485470),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    // Prefix icon
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                          color: Color(0xffC8D1E5)), // Color when not focused
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                          color: Color(0xffC8D1E5)), // Color when focused
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ReusableText(
                  title: 'Ad Format',
                  size: 14,
                  weight: FontWeight.w600,
                  color: Color(0xff485470),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xffC8D1E5))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isChecked10 = !isChecked10;
                              });
                            },
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: isChecked10
                                    ? const Color(0xFFFF9200)
                                    : Colors.transparent,
                                border: Border.all(
                                  color: isChecked10
                                      ? Colors.transparent
                                      : const Color(0xffC8D1E5),
                                  width: 2,
                                ),
                              ),
                              child: isChecked10
                                  ? const Center(
                                      child: Icon(
                                        Icons.check,
                                        color: Color(0xffFFFFFF),
                                        size: 15,
                                      ),
                                    )
                                  : null,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ReusableText(
                            title: 'Single Image or Video',
                            size: 15,
                            weight: FontWeight.w500,
                            color: isChecked10
                                ? const Color(0xff212121)
                                : const Color(0xff485470),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isChecked11 = !isChecked11;
                              });
                            },
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: isChecked11
                                    ? const Color(0xFFFF9200)
                                    : Colors.transparent,
                                border: Border.all(
                                  color: isChecked11
                                      ? Colors.transparent
                                      : const Color(0xffC8D1E5),
                                  width: 2,
                                ),
                              ),
                              child: isChecked11
                                  ? const Center(
                                      child: Icon(
                                        Icons.check,
                                        color: Color(0xffFFFFFF),
                                        size: 15,
                                      ),
                                    )
                                  : null,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ReusableText(
                            title: 'Multiple Image or Video',
                            size: 15,
                            weight: FontWeight.w500,
                            color: isChecked11
                                ? const Color(0xff212121)
                                : const Color(0xff485470),
                          ),
                        ],
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
            height: 25,
          ),
          const Divider(
            thickness: 6,
            height: 6,
            color: Color(0xffF8F9FB),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: ReusableText(
              title: 'Ad Media',
              size: 18,
              weight: FontWeight.w700,
              color: Color(0xff212121),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              width: MediaQuery.of(context).size.width * 1,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xffF1F4FB)),
              child: DottedBorder(
                borderType: BorderType.RRect,
                padding: const EdgeInsets.all(0),
                radius: const Radius.circular(10),
                color: const Color(0xffC8D1E5),
                strokeWidth: 4,
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
                  padding: const EdgeInsets.all(10),
                  height: 115,
                  decoration: BoxDecoration(
                      color: const Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.cloud_upload_rounded,
                        size: 35,
                        color: Color(0xffC8D1E5),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                        text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Drag and Drop or',
                              style: TextStyle(
                                color: Color(0xff7D8CAC),
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                            TextSpan(
                              text: ' browse',
                              style: TextStyle(
                                color: Color(0xffFF9200),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
          const SizedBox(
            height: 25,
          ),
          const Divider(
            thickness: 6,
            height: 6,
            color: Color(0xffF8F9FB),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: ReusableText(
              title: 'Ad Text',
              size: 18,
              weight: FontWeight.w700,
              color: Color(0xff212121),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 1,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffF1F4FB)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const ReusableText(
                  title: 'Title',
                  size: 14,
                  weight: FontWeight.w600,
                  color: Color(0xff485470),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    // Prefix icon
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                          color: Color(0xffC8D1E5)), // Color when not focused
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                          color: Color(0xffC8D1E5)), // Color when focused
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableText(
                  title: 'Caption',
                  size: 14,
                  weight: FontWeight.w600,
                  color: Color(0xff485470),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    // Prefix icon
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                          color: Color(0xffC8D1E5)), // Color when not focused
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                          color: Color(0xffC8D1E5)), // Color when focused
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableText(
                  title: 'Description',
                  size: 14,
                  weight: FontWeight.w600,
                  color: Color(0xff485470),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    // Prefix icon
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                          color: Color(0xffC8D1E5)), // Color when not focused
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                          color: Color(0xffC8D1E5)), // Color when focused
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ReusableText(
                  title: 'Call to action',
                  size: 14,
                  weight: FontWeight.w600,
                  color: Color(0xff485470),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    // Prefix icon
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Shop Now',
                    suffixIcon: const Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: Color(0xff7D8CAC),
                    ),
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xff212121)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                          color: Color(0xffC8D1E5)), // Color when not focused
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                          color: Color(0xffC8D1E5)), // Color when focused
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
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
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contxet) => const ChampionPreview()));
                      });
                    },
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
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
