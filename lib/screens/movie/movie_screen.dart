import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/movie/continue_watching.dart';
import 'package:vibe_tag/screens/movie/movie_screen_avenger.dart';

import 'package:vibe_tag/screens/register/reusabletext.dart';
import 'package:page_indicator/page_indicator.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  late PageController controller = PageController();

  GlobalKey<PageContainerState> key = GlobalKey();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xff3D3D3D),
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: const BoxDecoration(color: Color(0xffFE9700)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
              child: Row(
                children: [
                 Expanded(
                    child:
                    SizedBox(
                      height: 45,
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon: const Image(
                            height: 30,width: 30,
                            image: AssetImage("Asset/icons/movie/adjust.png"),),
                          hintStyle: const TextStyle(
                              fontSize: 14,fontWeight: FontWeight.w500,
                              color: Color(0xff99A7C7)),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xff99A7C7),
                          ),
                          filled: true,
                          fillColor: const Color(0xffFFFFFF),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:BorderSide.none,
                          ),
                          hintText: "Search for anything",
                          // focusedBorder: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(15),
                          //   borderSide: const BorderSide(
                          //     color: Color(0xffC8D1E5),
                          //   ),
                          // ),
                          // enabledBorder: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(15),
                          //   borderSide: BorderSide(
                          //     color: Color(0xffC8D1E5),
                          //   ),
                          // ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffFFFFFF)
                    ),
                    child: const Center(
                      child:
                     Image(
                       height: 30,width: 30,
                       image: AssetImage("Asset/icons/movie/Chat-3.png"),)
                    ),
                  ),
                  const SizedBox(width: 5,),
                  const Icon(Icons.more_vert,color: Colors.white,)
                ],
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)  => AvengerMovieScreen() ));
            },
            child: const Image(
                fit: BoxFit.cover,
                image: AssetImage("Asset/images/Movie/Group 1000003691.png")),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            child: PageIndicatorContainer(
              key: key,
              child: PageView(
                children: <Widget>[],
                controller: controller,
                reverse: true,
              ),
              align: IndicatorAlign.bottom,
              length: 4,
              indicatorSpace: 10.0,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  filled: true,fillColor: Colors.black,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xff5C5C5C),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    hintStyle: const TextStyle(color: Color(0xff5C5C5C)),
                    hintText: "Enter here",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    InkWell(
                      onTap:(){
                        setState(() {
                          _currentIndex=0;
                        });
                      },
                      child: Container(
                        width:60,
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:_currentIndex==0?const Color(0xffFFFFFF):const Color(0xff000000)
                      ),
                      child: Center(
                        child: ReusableText(
                          title: 'All',
                          size: 14,weight: FontWeight.w600,
                          color:_currentIndex==0?const Color(0xff232323):const Color(0xffBBBBBB) ,
                        ),
                      ),
                        ),
                    ),
                    const SizedBox(width: 15,),
                    InkWell(
                      onTap:(){
                        setState(() {
                          _currentIndex=1;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:_currentIndex==1?const Color(0xffFFFFFF):const Color(0xff000000)
                        ),
                        child: Center(
                          child: ReusableText(
                          title: 'Action',
                          size: 14,weight: FontWeight.w600,
                          color: _currentIndex==1?const Color(0xff232323):const Color(0xffBBBBBB) ,
                        ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    InkWell(
                      onTap:(){
                        setState(() {
                          _currentIndex=2;
                        });
                      },
                      child:

                      Container(

                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:_currentIndex==2?const Color(0xffFFFFFF):const Color(0xff000000)
                        ),
                        child: Center(
                          child: ReusableText(
                            title: 'Adventure',
                            size: 14,weight: FontWeight.w600,
                            color: _currentIndex==2?const Color(0xff232323):const Color(0xffBBBBBB) ,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    InkWell(
                      onTap:(){
                        setState(() {
                          _currentIndex=3;
                        });
                      },
                      child: Container(

                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color:_currentIndex==3?const Color(0xffFFFFFF):const Color(0xff000000)
                        ),
                        child: Center(
                          child: ReusableText(
                            title: 'Animated',
                            size: 14,weight: FontWeight.w600,
                            color: _currentIndex==3?const Color(0xff232323):const Color(0xffBBBBBB) ,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 15,),
              _currentIndex==0?const ContinueWatching() :Container()
            ],
          ),)
        ],
      ),
    ));
  }
}
