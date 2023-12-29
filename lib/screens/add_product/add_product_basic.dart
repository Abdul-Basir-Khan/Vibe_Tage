import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'add_product.dart';

class AddProductBasic extends StatefulWidget {
  const AddProductBasic({super.key});

  @override
  State<AddProductBasic> createState() => _AddProductBasicState();
}

class _AddProductBasicState extends State<AddProductBasic> {
  bool _isStatus = false;
  bool _isStatus1 = false;
  bool _isStatus2 = false;

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
              mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 10,),
                CircularPercentIndicator(
                  radius: 20.0,
                  lineWidth: 5.0,
                  percent: 0.20,
                  center: new Text("1/4",style: const TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w600),),
                  progressColor: const Color(0xffFFFFFF),
                ),
                const SizedBox(width: 10,),
                const Text("Basic Information",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w600),),
              ],
            ),
          ),
          const SizedBox(height: 10,),


          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Product Images and Video",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff212121),
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Text(
                      "Product Image",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff485470),
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.info_outline,
                      color: Color(0xff99A7C7),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Upload between 3 to 8 images",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff99A7C7),
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DottedBorder(
                          dashPattern: [10, 5],
                          strokeWidth: 2,
                          color: const Color(0xffC8D1E5),
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(8),
                          child: ClipRRect(
                            clipBehavior: Clip.antiAlias,
                            borderRadius: const BorderRadius.all(Radius.circular(8)),
                            child: Container(
                                height: 104,
                                width: MediaQuery.sizeOf(context).width * 0.28,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Center(
                                    child: Icon(
                                  Icons.add,
                                  color: Color(0xff99A7C7),
                                  size: 45,
                                ))),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Cover Photo",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff99A7C7),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DottedBorder(
                          dashPattern: [10, 5],
                          strokeWidth: 2,
                          color: const Color(0xffC8D1E5),
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(8),
                          child: ClipRRect(
                            clipBehavior: Clip.antiAlias,
                            borderRadius: const BorderRadius.all(Radius.circular(8)),
                            child: Container(
                                height: 104,
                                width: MediaQuery.sizeOf(context).width * 0.28,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Center(
                                    child: Icon(
                                  Icons.add,
                                  color: Color(0xff99A7C7),
                                  size: 45,
                                ))),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Image 2",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff99A7C7),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DottedBorder(
                          dashPattern: [10, 5],
                          strokeWidth: 2,
                          color: const Color(0xffC8D1E5),
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(8),
                          child: ClipRRect(
                            clipBehavior: Clip.antiAlias,
                            borderRadius: const BorderRadius.all(Radius.circular(8)),
                            child: Container(
                                height: 104,
                                width: MediaQuery.sizeOf(context).width * 0.28,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Center(
                                    child: Icon(
                                  Icons.add,
                                  color: Color(0xff99A7C7),
                                  size: 45,
                                ))),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Image 3",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff99A7C7),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Video Link",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff485470),
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 54,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Input youtube video link here',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff99A7C7)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
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
                  "Product Information",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff212121),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Product Title",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff485470),
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 54,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Full Spectrum Headphones',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff212121)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Location",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff485470),
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 54,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type here',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xff99A7C7)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Selling Type",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff485470),
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(

                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffC8D1E5)),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.transparent),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _isStatus = !_isStatus;
                                _isStatus1 = false;
                                _isStatus2 = false;
                              });
                            },
                            child: Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _isStatus
                                      ? const Color(0xffFF9200)
                                      : const Color(0xffFFFFFF),
                                  border: Border.all(
                                      color: _isStatus
                                          ? Colors.transparent
                                          : const Color(0xffC8D1E5))),
                              child: Icon(
                                Icons.done,
                                size: 10,
                                color: _isStatus
                                    ? const Color(0xffFFFFFF)
                                    : const Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "In-store selling only",
                            style: TextStyle(
                                fontSize: 15,
                                color: _isStatus
                                    ? const Color(0xff212121)
                                    : const Color(0xff485470),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _isStatus1 = !_isStatus1;
                                _isStatus2 = false;
                                _isStatus = false;
                              });
                            },
                            child: Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _isStatus1
                                      ? const Color(0xffFF9200)
                                      : const Color(0xffFFFFFF),
                                  border: Border.all(
                                      color: _isStatus1
                                          ? Colors.transparent
                                          : const Color(0xffC8D1E5))),
                              child: Icon(
                                Icons.done,
                                size: 10,
                                color: _isStatus1
                                    ? const Color(0xffFFFFFF)
                                    : const Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Online selling only",
                            style: TextStyle(
                                fontSize: 15,
                                color: _isStatus1
                                    ? const Color(0xff212121)
                                    : const Color(0xff485470),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _isStatus2 = !_isStatus2;
                                _isStatus1 = false;
                                _isStatus = false;
                              });
                            },
                            child: Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _isStatus2
                                      ? const Color(0xffFF9200)
                                      : const Color(0xffFFFFFF),
                                  border: Border.all(
                                      color: _isStatus2
                                          ? Colors.transparent
                                          : const Color(0xffC8D1E5))),
                              child: Icon(
                                Icons.done,
                                size: 10,
                                color: _isStatus2
                                    ? const Color(0xffFFFFFF)
                                    : const Color(0xffFFFFFF),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Available both In-store and online",
                            style: TextStyle(
                                fontSize: 15,
                                color: _isStatus2
                                    ? const Color(0xff212121)
                                    : const Color(0xff485470),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
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
                  "Condition & Model",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff212121),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Type Of Condition",
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
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Add model number",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff485470),
                      fontWeight: FontWeight.w600),
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
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Brand",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff485470),
                      fontWeight: FontWeight.w600),
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
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
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
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddProducts()));
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
    ),
    );
  }
}
