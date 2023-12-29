import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/blog/reuable_in_entertainments.dart';
import 'package:vibe_tag/screens/blog/reusable_listtile.dart';

import '../register/reusabletext.dart';

class EntertainmentClick extends StatefulWidget {

  const EntertainmentClick({Key? key}) : super(key: key);

  @override
  State<EntertainmentClick> createState() => _EntertainmentClickState();
}

class _EntertainmentClickState extends State<EntertainmentClick> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ReusableInEntertainment(),
        const SizedBox(height: 10,),
        const ReusableInEntertainment(),
        const SizedBox(height: 10,),
        const ReusableInEntertainment(),
        const SizedBox(height: 10,),
        Center(
          child: Container(
            height: 52,width: 127,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffFDBA31)),
              borderRadius: BorderRadius.circular(26),
              color: const Color(0xffFFFFFF),
            ),
            child: const Center(child:  ReusableText(
              title: 'See More',
              size: 16,
              weight: FontWeight.w700,
              color: Color(0xffFF9200),
            ),),
          ),
        ),
        const SizedBox(height: 10,),

      ],
    );
  }
}
