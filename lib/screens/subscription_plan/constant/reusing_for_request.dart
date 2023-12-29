import 'package:flutter/material.dart';

import '../../register/reusabletext.dart';

class ListTileForRequests extends StatelessWidget {

  final String imagePath;
  final String subtitleRequired;



  const ListTileForRequests({super.key, required this.imagePath, required this.subtitleRequired});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Image(image: AssetImage(imagePath),),
          const SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,children: [
      const ReusableText(
      title: 'Micheal Even',
      size: 16,
      weight: FontWeight.w700,
      color: Color(0xff212121) ,
      ),
   ReusableText(
      title: subtitleRequired,
      size: 14,
      weight: FontWeight.w500,
      color: const Color(0xff485470) ,
      ),
          ],
          ),
          const Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,width: 98,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffC8D1E5),
                ),
                child: const Center(child: ReusableText(
                  title: 'Cancel',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xffFFFFFF) ,
                ),),
              ),
              const SizedBox(width: 10,),
              Container(
                height: 40,width: 98,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [
                        Color(0xffFFC107),
                        Color(0xffFF8205),
                      ]
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffC8D1E5),
                ),
                child: const Center(child: ReusableText(
                  title: 'Accept',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xffFFFFFF) ,
                ),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
