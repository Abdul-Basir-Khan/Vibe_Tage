import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../register/reusabletext.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'friend_request_frient_list.dart';


class SubcriptionPlan extends StatefulWidget {
  const SubcriptionPlan({super.key});

  @override
  State<SubcriptionPlan> createState() => _SubcriptionPlanState();
}

class _SubcriptionPlanState extends State<SubcriptionPlan> {

  void initState() {
    super.initState();

    // Lock the screen orientation to landscape
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }


  final List<Widget> containerList=[

    const PlanOne(),
    const PlanOne(),
    const PlanOne(),
  ];


  int _currentIndex=0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,

      body:  ListView(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width*1,
          height: 174,
          decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("Asset/images/subscription_plan/Group 1000002317.png"),
          ) ,

          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ReusableText(
                title: 'VibeTag Booster',
                size: 23,
                weight: FontWeight.w800,
                color: Color(0xffFFFFFF),
              ),
              SizedBox(height: 10,),
              ReusableText(
                title: 'Boost Features allows you to explore all\namazing tools over your vibes.',
                size: 14,
                weight: FontWeight.w500,
                color: Color(0xffFFFFFF),
                alignment: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(height: 15,),
        const ReusableText(
          title: 'PRICING PLAN',
          size: 14,
          weight: FontWeight.w700,
          color: Color(0xffFF9200),
          alignment: TextAlign.center,
        ),
        const SizedBox(height: 10,),
        const ReusableText(
          title: 'Choose Your Pricing Plan',
          size: 22,
          weight: FontWeight.w700,
          color: Color(0xff0F2137),
          alignment: TextAlign.center,
        ),
        const SizedBox(height: 10,),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          height: 62,width: MediaQuery.sizeOf(context).width*0.88,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffF7F8FB),
          ),
          child: Row(
            children: [
              InkWell(
                onTap:(){
                  setState(() {
                    _currentIndex=0;

                  });
                },
                child: Container(
                  height: 52,width: MediaQuery.sizeOf(context).width*0.40,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:_currentIndex==0 ?const Color(0xffFFFFFF):Colors.transparent,
                  ),
                  child: const Center(
                    child:  ReusableText(
                      title: 'Monthly Plan',
                      size: 16,
                      weight: FontWeight.w500,
                      color: Color(0xff0F2137),

                    ),
                  ),
                ),
              ),
             Spacer(),
              InkWell(
                onTap:(){
                  setState(() {
                    _currentIndex=1;

                  });
                },
                child: Container(
                  height: 52,width: MediaQuery.sizeOf(context).width*0.40,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:_currentIndex==1 ?const Color(0xffFFFFFF):Colors.transparent,
                  ),
                  child: const Center(
                    child:  ReusableText(
                      title: 'Annual Plan',
                      size: 16,
                      weight: FontWeight.w500,
                      color: Color(0xff0F2137),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
        _currentIndex==0? CarouselSlider(
          options: CarouselOptions(
              reverse: true,
              height: 660),
          items: containerList
              .map((item) => Container(
            child: item,
          ))
              .toList(),
        ):Container()
      ],
    ),));
  }
}




class PlanOne extends StatelessWidget {
  const PlanOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      const EdgeInsets.symmetric(
          horizontal: 10,vertical: 10),
      width: MediaQuery.sizeOf(context).width*0.80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xffC8D1E5)),
          color: Colors.white
      ),
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,children: [
              Image(image: AssetImage("Asset/images/subscription_plan/image 2 (Traced).png")),
              SizedBox(height: 10,),
              ReusableText(
                title: 'Basic',
                size: 18,
                weight: FontWeight.w700,
                color: Color(0xff0F2137),
              ),
            ],
            ),
          ),
          const SizedBox(height: 15,),
          const Divider(thickness: 2,height: 2,color: Color(0xf60C8D1E5),),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Row(crossAxisAlignment: CrossAxisAlignment.start,children: [
                  ReusableText(
                    title: '\$3',
                    size: 34,
                    weight: FontWeight.w700,
                    color: Color(0xff0F2137),
                  ),ReusableText(
                    title: ' /one day',
                    size: 16,
                    weight: FontWeight.w500,
                    color: Color(0xff343D48),
                  ),
                ],),
                const SizedBox(height: 10,),
                const ReusableText(
                  title: 'Basic features for up to 10 employees\nwith everything you need.',
                  size: 13,
                  weight: FontWeight.w500,
                  color: Color(0xff7d8CAC),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 38,width: MediaQuery.sizeOf(context).width*0.90,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color:const Color(0xffFF9200),
                  ),
                  child: const Center(
                    child: ReusableText(
                      title: 'Get Started',
                      size: 15,
                      weight: FontWeight.w600,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),

            ],),
          ),
          Container(

            width: MediaQuery.sizeOf(context).width*1,
            padding: const EdgeInsets.all(10),
            color: const Color(0xffF8F9FB),
            child: Row(
              children: [
                Container(
                  height: 31,width: 31,decoration: const BoxDecoration(
                    shape: BoxShape.circle,color: Color(0xffD5FFC7)
                ),
                  child: const Icon(Icons.done,color: Color(0xff3AB500),),
                ),
                const SizedBox(width: 20,),
                const ReusableText(
                  title: 'Featured member',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff485470),
                ),
              ],
            ),
          ),

          Container(

            width: MediaQuery.sizeOf(context).width*1,
            padding: const EdgeInsets.all(10),
            color: const Color(0xffFFFFFF),
            child: Row(
              children: [
                Container(
                  height: 31,width: 31,decoration: const BoxDecoration(
                    shape: BoxShape.circle,color: Color(0xffD5FFC7)
                ),
                  child: const Icon(Icons.done,color: Color(0xff3AB500),),
                ),
                const SizedBox(width: 20,),
                const ReusableText(
                  title: 'See profile visitors',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff485470),
                ),
              ],
            ),
          ),

          Container(

            width: MediaQuery.sizeOf(context).width*1,
            padding: const EdgeInsets.all(10),
            color: const Color(0xffF8F9FB),
            child: Row(
              children: [
                Container(
                  height: 31,width: 31,decoration: const BoxDecoration(
                    shape: BoxShape.circle,color: Color(0xffD5FFC7)
                ),
                  child: const Icon(Icons.done,color: Color(0xff3AB500),),
                ),
                const SizedBox(width: 20,),
                const ReusableText(
                  title: 'Show / Hide last seen',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff485470),
                ),
              ],
            ),
          ),

          Container(

            width: MediaQuery.sizeOf(context).width*1,
            padding: const EdgeInsets.all(10),

            color: const Color(0xffFFFFFF),
            child: Row(
              children: [
                Container(
                  height: 31,width: 31,decoration: const BoxDecoration(
                    shape: BoxShape.circle,color: Color(0xffD5FFC7)
                ),
                  child: const Icon(Icons.done,color: Color(0xff3AB500),),
                ),
                const SizedBox(width: 20,),
                const ReusableText(
                  title: '01 Posts promotion',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff485470),
                ),
              ],
            ),
          ),

          Container(

            width: MediaQuery.sizeOf(context).width*1,
            padding: const EdgeInsets.all(10),
            color: const Color(0xffF8F9FB),
            child: Row(
              children: [
                Container(
                  height: 31,width: 31,decoration: const BoxDecoration(
                    shape: BoxShape.circle,color: Color(0xffFFC7C7)
                ),
                  child: const Icon(Icons.close,color: Color(0xffE50000),),
                ),
                const SizedBox(width: 20,),
                const ReusableText(
                  title: 'No Pages promotion',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff485470),
                ),
              ],
            ),
          ),

          Container(

            width: MediaQuery.sizeOf(context).width*1,
            padding: const EdgeInsets.all(10),

            color: const Color(0xffFFFFFF),
            child: Row(
              children: [
                Container(
                  height: 31,width: 31,decoration: const BoxDecoration(
                    shape: BoxShape.circle,color: Color(0xffFFC7C7)
                ),
                  child: const Icon(Icons.close,color: Color(0xffE50000),),
                ),
                const SizedBox(width: 20,),
                const ReusableText(
                  title: 'No Discount',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff485470),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
