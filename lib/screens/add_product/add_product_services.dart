import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'add_product_successful.dart';

class AddProductServices extends StatefulWidget {
  const AddProductServices({super.key});

  @override
  State<AddProductServices> createState() => _AddProductServicesState();
}

class _AddProductServicesState extends State<AddProductServices> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Color(0xff000000),
        ),
        centerTitle: true,
        title: const Text(
          "Add Product",
          style: TextStyle(
              fontSize: 16,
              color: Color(0xff000000),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 67,
            color: const Color(0xff99A7C7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                ),
                CircularPercentIndicator(
                  radius: 20.0,
                  lineWidth: 5.0,
                  percent: 1,
                  center: new Text(
                    "4/4",
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  progressColor: const Color(0xffFFFFFF),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Service & Waranty",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Service",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff212121),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Warranty",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff485470),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 54,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Select',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff99A7C7)),
                      suffixIcon: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Color(0xff7D8CAC),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Returnable",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff485470),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 54,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Select',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff99A7C7)),
                      suffixIcon: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Color(0xff7D8CAC),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const Divider(
            height: 3,
            thickness: 3,
            color: Color(0xffF8F9FB),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Delivery",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff212121),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Standard Delivery",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff485470),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 54,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Select',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff99A7C7)),
                      suffixIcon: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Color(0xff7D8CAC),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Express Delivery",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff485470),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 54,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Select',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff99A7C7)),
                      suffixIcon: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Color(0xff7D8CAC),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Package Weight",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff485470),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 54,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Select',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff99A7C7)),
                      suffixIcon: SizedBox(
                        width: 70,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 30,
                              width: 1,
                              color: Color(0xffC8D1E5),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Kg",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff485470),
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: Color(0xff7D8CAC),
                            ),
                          ],
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const Divider(
            height: 3,
            thickness: 3,
            color: Color(0xffF8F9FB),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Delivery",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff212121),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Length",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff485470),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 54,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Select',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff99A7C7)),
                      suffixIcon: SizedBox(
                        width: 70,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 30,
                              width: 1,
                              color: Color(0xffC8D1E5),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "cm",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff485470),
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: Color(0xff7D8CAC),
                            ),
                          ],
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Width",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff485470),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 54,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Select',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff99A7C7)),
                      suffixIcon: SizedBox(
                        width: 70,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 30,
                              width: 1,
                              color: Color(0xffC8D1E5),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "cm",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff485470),
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: Color(0xff7D8CAC),
                            ),
                          ],
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Height",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff485470),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 54,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Select',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff99A7C7)),
                      suffixIcon: SizedBox(
                        width: 70,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 30,
                              width: 1,
                              color: Color(0xffC8D1E5),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "cm",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff485470),
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down_sharp,
                              color: Color(0xff7D8CAC),
                            ),
                          ],
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Color(0xffC8D1E5))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.sizeOf(context).width * 0.46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF1F4FB),
                      ),
                      child: const Center(
                        child: Text(
                          'Back',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff7D8CAC),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddProductSuccessful()));
                      },
                      child: Container(
                        height: 50,
                        width: MediaQuery.sizeOf(context).width * 0.46,
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
                            'Save & Continue',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w700),
                          ),
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
    ));
  }
}
