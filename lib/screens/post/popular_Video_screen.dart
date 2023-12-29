import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/post/popular_now_tab.dart';

import '../register/reusabletext.dart';

class PopularVideoScreen extends StatefulWidget {
  const PopularVideoScreen({super.key});

  @override
  State<PopularVideoScreen> createState() => _PopularVideoScreenState();
}

class _PopularVideoScreenState extends State<PopularVideoScreen> {

  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 41,width: 41,decoration: BoxDecoration(
                  shape: BoxShape.circle,color: Color(0xf19FFC107),
                ),
                  child: Center
                    (
                    child:
                    Image(image: AssetImage("Asset/images/post/image 102.png"),),

                  ),
                ),
                SizedBox(width: 15,),
                ReusableText(
                  title: 'Trending Videos',
                  size: 18,
                  weight: FontWeight.w700,
                  color:Color(0xff212121),
                )


              ],
            ),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      setState(() {
                        _currentIndex=0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 5,right: 18,bottom: 5,left: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        gradient:
                        _currentIndex==0?
                        LinearGradient(
                            colors: [
                              Color(0xffFDBA31),
                              Color(0xffFF9200),
                            ]
                        ):  LinearGradient(
                            colors: [
                              Color(0xffF1F4FB),
                              Color(0xffF1F4FB),
                            ]
                        ),
                      ),
                      child: Center(
                        child: ReusableText(
                          title: 'Now',
                          size: 15,
                          weight: FontWeight.w700,
                          color: _currentIndex==0?Color(0xffFFFFFF):Color(0xff485470),
                        )
                        ,
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _currentIndex=1;
                      });
                    },
                    child: Container(

                      padding: EdgeInsets.only(top: 5,right: 18,bottom: 5,left: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        gradient:
                        _currentIndex==1?
                        LinearGradient(
                            colors: [
                              Color(0xffFDBA31),
                              Color(0xffFF9200),
                            ]
                        ):  LinearGradient(
                            colors: [
                              Color(0xffF1F4FB),
                              Color(0xffF1F4FB),
                            ]
                        ),
                      ),
                      child: Center(
                        child: ReusableText(
                          title: 'Music',
                          size: 15,
                          weight: FontWeight.w700,
                          color: _currentIndex==1?Color(0xffFFFFFF):Color(0xff485470),
                        )
                        ,
                      ),
                    ),
                  ),

                  SizedBox(width: 15,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _currentIndex=2;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 5,right: 18,bottom: 5,left: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        gradient:
                        _currentIndex==2?
                        LinearGradient(
                            colors: [
                              Color(0xffFDBA31),
                              Color(0xffFF9200),
                            ]
                        ):  LinearGradient(
                            colors: [
                              Color(0xffF1F4FB),
                              Color(0xffF1F4FB),
                            ]
                        ),
                      ),
                      child: Center(
                        child: ReusableText(
                          title: 'Gaming',
                          size: 15,
                          weight: FontWeight.w700,
                          color: _currentIndex==2?Color(0xffFFFFFF):Color(0xff485470),
                        )
                        ,
                      ),
                    ),
                  ),

                  SizedBox(width: 15,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _currentIndex=3;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 5,right: 18,bottom: 5,left: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        gradient:
                        _currentIndex==3?
                        LinearGradient(
                            colors: [
                              Color(0xffFDBA31),
                              Color(0xffFF9200),
                            ]
                        ):  LinearGradient(
                            colors: [
                              Color(0xffF1F4FB),
                              Color(0xffF1F4FB),
                            ]
                        ),
                      ),
                      child: Center(
                        child: ReusableText(
                          title: 'Movies',
                          size: 15,
                          weight: FontWeight.w700,
                          color: _currentIndex==3?Color(0xffFFFFFF):Color(0xff485470),
                        )
                        ,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _currentIndex==0?NowTabScreen():_currentIndex==1?Container():Container()


          ],
        ),
      ),
    );
  }
}
