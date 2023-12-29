import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/gift/new_gifts.dart';

import '../register/reusabletext.dart';


class GiftScreen extends StatefulWidget {
  const GiftScreen({super.key});

  @override
  State<GiftScreen> createState() => _GiftScreenState();
}

class _GiftScreenState extends State<GiftScreen> {

  int   _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF1F4FB),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        _currentIndex=0;
                      });

                    },
                    child: Container(
                      height: 38,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffFF9200)),
                        borderRadius: BorderRadius.circular(20),
                        gradient:
                        _currentIndex==0?
                        LinearGradient(
                            colors: [
                              Color(0xffFDBA31),
                              Color(0xffFF9200),
                            ]
                        ):LinearGradient(
                            colors: [
                              Color(0xffFFFFFF),
                              Color(0xffFFFFFF),
                            ]
                        ),

                      ),
                      child:  Center(
                        child: ReusableText(
                          title: 'New Gifts',
                          size: 14,
                          weight: FontWeight.w600,
                          color: _currentIndex==0?Color(0xffFFFFFF):Color(0xff485470),
                        ),
                      ),

                    ),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _currentIndex=1;
                      });

                    },
                    child: Container(
                      height: 38,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffFF9200)),
                        borderRadius: BorderRadius.circular(20),
                        gradient:
                        _currentIndex==1?
                        LinearGradient(
                            colors: [
                              Color(0xffFDBA31),
                              Color(0xffFF9200),
                            ]
                        ):LinearGradient(
                            colors: [
                              Color(0xffFFFFFF),
                              Color(0xffFFFFFF),
                            ]
                        ),

                      ),
                      child:  Center(
                        child: ReusableText(
                          title: 'Opened Gifts',
                          size: 14,
                          weight: FontWeight.w600,
                          color: _currentIndex==1?Color(0xffFFFFFF):Color(0xff485470),
                        ),
                      ),

                    ),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _currentIndex=2;
                      });

                    },
                    child: Container(
                      height: 38,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffFF9200)),
                        borderRadius: BorderRadius.circular(20),
                        gradient:
                        _currentIndex==2?
                        LinearGradient(
                            colors: [
                              Color(0xffFDBA31),
                              Color(0xffFF9200),
                            ]
                        ):LinearGradient(
                            colors: [
                              Color(0xffFFFFFF),
                              Color(0xffFFFFFF),
                            ]
                        ),

                      ),
                      child:  Center(
                        child: ReusableText(
                          title: 'Sent Gifts',
                          size: 14,
                          weight: FontWeight.w600,
                          color: _currentIndex==2?Color(0xffFFFFFF):Color(0xff485470),
                        ),
                      ),

                    ),
                  ),
                ],
              ),
              _currentIndex==0?NewGifts():Container(),
            ],
          ),
        ),
      ),
    );
  }
}
