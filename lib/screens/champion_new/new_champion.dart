import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/champion_new/champion_basic.dart';

import '../register/reusabletext.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ChampionNew extends StatefulWidget {
  const ChampionNew({Key? key}) : super(key: key);

  @override
  State<ChampionNew> createState() => _ChampionNewState();
}

class _ChampionNewState extends State<ChampionNew> {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;
  bool isChecked7 = false;

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
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.error,
                color: Color(0xff99A7C7),
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
                    title: 'Campaign Info',
                    size: 17,
                    weight: FontWeight.w500,
                    color: Color(0xffFFFFFF),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
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
                    title: 'Campaign Name',
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
                    title: 'Campaign Objective',
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
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff485470)),
                      hintText: 'Traffic',
                      suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp,
                          color: Color(0xff7D8CAC)),
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
                    title: 'Traffic Destination',
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
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff485470)),
                      hintText: 'Website',
                      suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp,
                          color: Color(0xff7D8CAC)),
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
                    title: 'Selling Type',
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
                                  isChecked = !isChecked;
                                });
                              },
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isChecked
                                      ? const Color(0xFFFF9200)
                                      : Colors.transparent,
                                  border: Border.all(
                                    color: isChecked
                                        ? Colors.transparent
                                        : const Color(0xffC8D1E5),
                                    width: 2,
                                  ),
                                ),
                                child: isChecked
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
                              title: 'Website',
                              size: 15,
                              weight: FontWeight.w500,
                              color: isChecked
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
                                  isChecked1 = !isChecked1;
                                });
                              },
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isChecked1
                                      ? const Color(0xFFFF9200)
                                      : Colors.transparent,
                                  border: Border.all(
                                    color: isChecked1
                                        ? Colors.transparent
                                        : const Color(0xffC8D1E5),
                                    width: 2,
                                  ),
                                ),
                                child: isChecked1
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
                              title: 'App',
                              size: 15,
                              weight: FontWeight.w500,
                              color: isChecked1
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
                                  isChecked2 = !isChecked2;
                                });
                              },
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isChecked2
                                      ? const Color(0xFFFF9200)
                                      : Colors.transparent,
                                  border: Border.all(
                                    color: isChecked2
                                        ? Colors.transparent
                                        : const Color(0xffC8D1E5),
                                    width: 2,
                                  ),
                                ),
                                child: isChecked2
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
                              title: 'Vibetag Chat',
                              size: 15,
                              weight: FontWeight.w500,
                              color: isChecked2
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
                                  isChecked3 = !isChecked3;
                                });
                              },
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isChecked3
                                      ? const Color(0xFFFF9200)
                                      : Colors.transparent,
                                  border: Border.all(
                                    color: isChecked3
                                        ? Colors.transparent
                                        : const Color(0xffC8D1E5),
                                    width: 2,
                                  ),
                                ),
                                child: isChecked3
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
                              title: 'Whatsapp',
                              size: 15,
                              weight: FontWeight.w500,
                              color: isChecked3
                                  ? const Color(0xff212121)
                                  : const Color(0xff485470),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ReusableText(
                    title: 'Website Link',
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
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff99A7C7)),
                      hintText: 'Paste Link here',
                      suffixIcon: const Image(
                          image: AssetImage(
                              "Asset/icons/champiogn_new/Group 76735.png"),
                          color: Color(0xff7D8CAC)),
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
                    title: 'Select Pages',
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
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff99A7C7)),
                      hintText: 'Select',
                      suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp,
                          color: Color(0xff7D8CAC)),
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
                title: 'Audience',
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
                    title: 'Location',
                    size: 14,
                    weight: FontWeight.w600,
                    color: Color(0xff485470),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 172,
                    width: MediaQuery.of(context).size.width * 1,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: const Color(0xffC8D1E5))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextField(
                          decoration: InputDecoration(
                            // Prefix icon
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xff99A7C7)),
                            hintText: 'Search and add Location',
                            suffixIcon: Image(
                              image: AssetImage(
                                  "Asset/icons/chat_update/Search-4.png"),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xffC8D1E5)), //
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xffC8D1E5)), //
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isChecked5 = !isChecked5;
                                });
                              },
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isChecked5
                                      ? const Color(0xFFFF9200)
                                      : Colors.transparent,
                                  border: Border.all(
                                    color: isChecked5
                                        ? Colors.transparent
                                        : const Color(0xffC8D1E5),
                                    width: 2,
                                  ),
                                ),
                                child: isChecked5
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
                              title: 'United States',
                              size: 15,
                              weight: FontWeight.w500,
                              color: isChecked5
                                  ? const Color(0xff212121)
                                  : const Color(0xff485470),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isChecked6 = !isChecked6;
                                });
                              },
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isChecked6
                                      ? const Color(0xFFFF9200)
                                      : Colors.transparent,
                                  border: Border.all(
                                    color: isChecked6
                                        ? Colors.transparent
                                        : const Color(0xffC8D1E5),
                                    width: 2,
                                  ),
                                ),
                                child: isChecked6
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
                              title: 'Canada',
                              size: 15,
                              weight: FontWeight.w500,
                              color: isChecked6
                                  ? const Color(0xff212121)
                                  : const Color(0xff485470),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isChecked7 = !isChecked7;
                                });
                              },
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: isChecked7
                                      ? const Color(0xFFFF9200)
                                      : Colors.transparent,
                                  border: Border.all(
                                    color: isChecked7
                                        ? Colors.transparent
                                        : const Color(0xffC8D1E5),
                                    width: 2,
                                  ),
                                ),
                                child: isChecked7
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
                              title: 'Germany',
                              size: 15,
                              weight: FontWeight.w500,
                              color: isChecked7
                                  ? const Color(0xff212121)
                                  : const Color(0xff485470),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ReusableText(
                    title: 'Age',
                    size: 14,
                    weight: FontWeight.w600,
                    color: Color(0xff485470),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            // Prefix icon
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xff212121)),
                            hintText: '18',
                            suffixIcon: Icon(Icons.keyboard_arrow_down_sharp,
                                color: Color(0xff7D8CAC)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(
                                      0xffC8D1E5)), // Color when not focused
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                              borderSide: BorderSide(
                                  color:
                                      Color(0xffC8D1E5)), // Color when focused
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            // Prefix icon
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xff212121)),
                            hintText: '65+',
                            suffixIcon: Icon(Icons.keyboard_arrow_down_sharp,
                                color: Color(0xff7D8CAC)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              borderSide: BorderSide(
                                  color: Color(
                                      0xffC8D1E5)), // Color when not focused
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              borderSide: BorderSide(
                                  color:
                                      Color(0xffC8D1E5)), // Color when focused
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ReusableText(
                    title: 'Gender',
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
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff212121)),
                      hintText: 'All Genders',
                      suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp,
                          color: Color(0xff7D8CAC)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)), // Color when not focused
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)), // Color when focused
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ReusableText(
                    title: 'Targeting Audience',
                    size: 14,
                    weight: FontWeight.w700,
                    color: Color(0xff485470),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const ReusableText(
                    title: 'Include people who match',
                    size: 12,
                    weight: FontWeight.w500,
                    color: Color(0xff7D8CAC),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      // Prefix icon
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff99A7C7)),
                      hintText: 'Add interest and behavior',
                      suffixIcon: const Image(
                        image:
                            AssetImage("Asset/icons/chat_update/Search-4.png"),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Color(0xffC8D1E5)), //
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Color(0xffC8D1E5)), //
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableText(
                    title: 'Sub-Category',
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
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff99A7C7)),
                      hintText: 'Select',
                      suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp,
                          color: Color(0xff7D8CAC)),
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
                title: 'Budget',
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
                    title: 'Set Budget',
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
                      prefixIcon: Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(3),
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: const Color(0xffF1F4FB)),
                        child: const Center(
                          child: ReusableText(
                            title: '\$',
                            size: 16,
                            weight: FontWeight.w600,
                            color: Color(0xff7D8CAC),
                          ),
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff99A7C7)),
                      hintText: '  00.00',

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
                  TextField(
                    decoration: InputDecoration(
                      // Prefix icon
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff485470)),
                      hintText: 'Daily Budget',
                      suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp,
                          color: Color(0xff7D8CAC)),
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
                  )
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
                title: 'Schedule',
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
                    title: 'Start Date',
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
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff212121)),
                      hintText: '05 May, 2023',
                      suffixIcon: const Icon(Icons.calendar_month,
                          color: Color(0xff7D8CAC)),
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
                    title: 'End Date',
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
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff99A7C7)),
                      hintText: 'Select',
                      suffixIcon: const Icon(Icons.calendar_month,
                          color: Color(0xff7D8CAC)),
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
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (contxet) => const ChampionBasic()));
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
      ),
    );
  }
}
