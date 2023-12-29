import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/blog/Entertainment_click.dart';

import '../register/reusabletext.dart';

class BlogUi extends StatefulWidget {



  const BlogUi({Key? key,}) : super(key: key);

  @override
  State<BlogUi> createState() => _BlogUiState();
}

class _BlogUiState extends State<BlogUi> {
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffF1F4FB),
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(color: Color(0xffFE9700)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 7),
              child: Row(
                children: [
                 Expanded(
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon: const Image(
                            height: 30,
                            width: 30,
                            image: AssetImage("Asset/icons/movie/adjust.png"),
                          ),
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff99A7C7)),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xff99A7C7),
                          ),
                          filled: true,
                          fillColor: const Color(0xffFFFFFF),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Search for anything",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffFFFFFF)),
                    child: const Center(
                        child: Image(
                      height: 30,
                      width: 30,
                      image: AssetImage("Asset/icons/movie/Chat-3.png"),
                    )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              physics: const ScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          gradient: _currentIndex == 0
                              ? const LinearGradient(colors: [
                                  Color(0xffFDBA31),
                                  Color(0xffFF9200)
                                ])
                              : const LinearGradient(colors: [
                                  Color(0xffFFFFFFF),
                                  Color(0xffFFFFFF)
                                ]),
                          borderRadius: BorderRadius.circular(26),

                      ),
                      child: ReusableText(
                        title: 'View All',
                        size: 16,
                        weight: FontWeight.w600,
                        color: _currentIndex == 0
                            ? const Color(0xffFFFFFF)
                            : const Color(0xff485470),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                        gradient: _currentIndex == 1
                            ? const LinearGradient(colors: [
                          Color(0xffFDBA31),
                          Color(0xffFF9200)
                        ])
                            : const LinearGradient(colors: [
                          Color(0xffFFFFFFF),
                          Color(0xffFFFFFFF),
                        ]),

                      ),
                      child: ReusableText(
                        title: 'Entertainment',
                        size: 16,
                        weight: FontWeight.w600,
                        color: _currentIndex == 1
                            ? const Color(0xffFFFFFF)
                            : const Color(0xff485470),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _currentIndex = 2;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                        gradient: _currentIndex == 2
                            ? const LinearGradient(colors: [
                          Color(0xffFDBA31),
                          Color(0xffFF9200)
                        ])
                            : const LinearGradient(colors: [
                          Color(0xffFFFFFFF),
                          Color(0xffFFFFFFF),

                        ]),
                      ),
                      child: ReusableText(
                        title: 'Comedy',
                        size: 16,
                        weight: FontWeight.w600,
                        color: _currentIndex == 2
                            ? const Color(0xffFFFFFF)
                            : const Color(0xff485470),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          _currentIndex==0?Container():_currentIndex==1?const EntertainmentClick():_currentIndex==2?Container():Container()
          ,


        ],
      ),
    ));
  }
}
