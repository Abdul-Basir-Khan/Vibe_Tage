import 'package:flutter/material.dart';
import 'package:linear_progress_bar/ui/dots_indicator.dart';
import 'package:linear_progress_bar/utils/dots_decorator.dart';
import 'package:vibe_tag/screens/register/pre_registeration/screen_four.dart';

import '../reusabletext.dart';


class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [

              const Spacer(),
              const Image(image: AssetImage("Asset/images/log_in_sign_up/Group 1000002110.png")),
              const SizedBox(height: 15,),

              DotsIndicator(
                dotsCount: 3,
                position: 0,
                decorator: DotsDecorator(
                  activeColor: const Color(0xffFF9200),
                  color: Colors.grey.withOpacity(0.20),
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
              const SizedBox(height: 10,),
              const ReusableText(title: 'Tag Your Vibe',weight: FontWeight.w700,size: 24,color: Color(0xff212121),),
              const SizedBox(height: 10,),
              const ReusableText(title: 'Discover a modern social networking and explore new imaginations, skills and creative ideas! Vibe your life. Vibe it.',alignment: TextAlign.center,weight: FontWeight.w400,size: 14,color: Color(0xff485470),),
              const Spacer(),

              InkWell(
                onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>const ScreenFour()));
                },
                child: Container(
                  height: 50,

                  width: MediaQuery.of(context).size.width*1,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Color(0xffFFC107),
                        Color(0xffFF8205),
                      ]),
                      color: const Color(0xffCCCCCC),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: ReusableText(
                      title: "Next",
                      color: Colors.white,
                      weight: FontWeight.w800,
                      size: 17,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),



            ],
            ),
          ),
        )
    ));
  }
}
