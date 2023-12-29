import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/forum_design/custom_textfield.dart';

import '../register/reusabletext.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  State<SearchTab> createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child:

      ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        children: [
          const SizedBox(height: 10,),
          const ReusableText(
            title: 'Search for term',
            size: 14,
            weight: FontWeight.w700,
            color: Color(0xff120D26),
          ),
          const SizedBox(height: 15,),
          const CustomTextField(
            length: 4,
          ),
          const SizedBox(height: 20,),
          const ReusableText(
            title: 'Search for term',
            size: 14,
            weight: FontWeight.w700,
            color: Color(0xff120D26),
          ),
          const SizedBox(height: 10,),
          const CustomTextField(
            hintText: 'Select',
            sufixIcon: Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Color(0xff99A7C7),
            ),
          ),
          const SizedBox(height: 20,),
          const ReusableText(
            title: 'Search in',
            size: 14,
            weight: FontWeight.w700,
            color: Color(0xff120D26),
          ),
          const SizedBox(height: 10,),
          const CustomTextField(
            hintText: 'Select',
            sufixIcon: Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Color(0xff99A7C7),
            ),
          ),
          const SizedBox(height: 20,),
          const ReusableText(
            title: 'Search section',
            size: 14,
            weight: FontWeight.w700,
            color: Color(0xff120D26),
          ),
          const SizedBox(height: 10,),
          const CustomTextField(
            hintText: 'Health and wellness',
            hintTextColor: Color(0xff485470),
            sufixIcon: Icon(
              Icons.keyboard_arrow_down_sharp,
              color: Color(0xff99A7C7),
            ),
          ),
       SizedBox(height: 80,),
          Container(
            height: 54,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [
                      Color(0xffFFC107),
                      Color(0xffFF8205),
                    ]
                ),
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffF1F4FB)),
            child: const Center(child:ReusableText(
              title: 'Save & Continue',
              size: 14,
              weight: FontWeight.w600,
              color: Color(0xffFFFFFF),
            ),),
          )

        ],
      ),
    );
  }
}
