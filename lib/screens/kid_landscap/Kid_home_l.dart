import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibe_tag/screens/kid_landscap/podcasts_screen_l.dart';
import 'package:vibe_tag/screens/kid_landscap/splash_screen_l.dart';


import '../register/reusabletext.dart';

class KidsScreenL extends StatefulWidget {
  const KidsScreenL({super.key});

  @override
  State<KidsScreenL> createState() => _KidsScreenLState();
}

class _KidsScreenLState extends State<KidsScreenL> {
  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();

    // Lock the screen orientation to landscape
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    super.dispose();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  @override
  Widget build(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.arrow_back_outlined, color: Color(0xff7D8CAC)),
                  Expanded(
                    child: SizedBox(
                      height: 45,
                      child:

                      TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
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
                            borderRadius: BorderRadius.circular(30),
                            borderSide:BorderSide.none,
                          ),
                          hintText: "Search Video",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Color(0xffC8D1E5),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: Color(0xffC8D1E5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>  SplashScreenL()));
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        border: Border.all(color: const Color(0xff485470)),
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: ReusableText(
                          title: 'Switch to Kids',
                          size: 16,
                          weight: FontWeight.w700,
                          color: Color(0xff485470),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
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
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffFF9200)),
                        borderRadius: BorderRadius.circular(20),
                        gradient:
                        _currentIndex==0?
                        const LinearGradient(
                            colors: [
                              Color(0xffFDBA31),
                              Color(0xffFF9200),
                            ]
                        ):const LinearGradient(
                            colors: [
                              Color(0xffFFFFFF),
                              Color(0xffFFFFFF),
                            ]
                        ),

                      ),
                      child:  Center(
                        child: ReusableText(
                          title: 'Podcasts',
                          size: 14,
                          weight: FontWeight.w600,
                          color: _currentIndex==0?const Color(0xffFFFFFF):const Color(0xff485470),
                        ),
                      ),

                    ),
                  ),
                  const SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _currentIndex=1;
                      });

                    },
                    child: Container(
                      height: 38,
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffFF9200)),
                        borderRadius: BorderRadius.circular(20),
                        gradient:
                        _currentIndex==1?
                        const LinearGradient(
                            colors: [
                              Color(0xffFDBA31),
                              Color(0xffFF9200),
                            ]
                        ):const LinearGradient(
                            colors: [
                              Color(0xffFFFFFF),
                              Color(0xffFFFFFF),
                            ]
                        ),

                      ),
                      child:  Center(
                        child: ReusableText(
                          title: 'Gaming',
                          size: 14,
                          weight: FontWeight.w600,
                          color: _currentIndex==1?const Color(0xffFFFFFF):const Color(0xff485470),
                        ),
                      ),

                    ),
                  ),
                  const SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _currentIndex=2;
                      });

                    },
                    child: Container(
                      height: 38,
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffFF9200)),
                        borderRadius: BorderRadius.circular(20),
                        gradient:
                        _currentIndex==2?
                        const LinearGradient(
                            colors: [
                              Color(0xffFDBA31),
                              Color(0xffFF9200),
                            ]
                        ):const LinearGradient(
                            colors: [
                              Color(0xffFFFFFF),
                              Color(0xffFFFFFF),
                            ]
                        ),

                      ),
                      child:  Center(
                        child: ReusableText(
                          title: 'News',
                          size: 14,
                          weight: FontWeight.w600,
                          color: _currentIndex==2?const Color(0xffFFFFFF):const Color(0xff485470),
                        ),
                      ),

                    ),
                  ),
                ],
              ),
              // Show the selected content based on _currentIndex
              if (_currentIndex == 0) PodcastsScreenL(),
              // Add more conditions for other content
            ],
          ),
        ),
      ),
    );
  }
}
