import 'package:flutter/material.dart';

import '../register/reusabletext.dart';


class AllPostSaved extends StatefulWidget {
  const AllPostSaved({super.key});

  @override
  State<AllPostSaved> createState() => _AllPostSavedState();
}

class _AllPostSavedState extends State<AllPostSaved> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: [
          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xf107D8CAC),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                    width: MediaQuery.sizeOf(context).width*1,fit: BoxFit.cover,
                    image: const AssetImage("Asset/images/post/Rectangle 24212.png")),
                const SizedBox(height: 10,),
                const ReusableText(
                  title: 'Jay Regan | Fitness & Health\'s Complet...',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff212121),
                ),
                const SizedBox(height: 10,),
                Row(
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  children: [
                    const ReusableText(
                      title: 'Video',
                      size: 13,
                      weight: FontWeight.w600,
                      color: Color(0xff99A7C7),
                    ),
                    const SizedBox(width: 10,),
                    Container(height: 3,width: 3,decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xffC8D1E5)),)
                    ,const SizedBox(width: 10,),
                    const ReusableText(
                      title: 'Saved to Playlist',
                      size: 13,
                      weight: FontWeight.w600,
                      color: Color(0xff99A7C7),
                    ),

                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  children: [
                    Image(image: AssetImage("Asset/images/post/Group 76844 (7).png")),
                    SizedBox(width: 6,),
                    ReusableText(
                      title: 'Saved from',
                      size: 13,
                      weight: FontWeight.w500,
                      color: Color(0xff485470),
                    ),
                    ReusableText(
                      title: ' Jay Regan',
                      size: 13,
                      weight: FontWeight.w700,
                      color: Color(0xff485470),
                    ),
                    Spacer(),
                    Icon(Icons.more_vert,color: Color(0xffC8D1E5),),

                  ],
                )

                
              ],
            ),
          ),
        const SizedBox(height: 10,),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xf107D8CAC),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                  width: MediaQuery.sizeOf(context).width*1,fit: BoxFit.cover,
                  image: const AssetImage("Asset/images/post/Rectangle 24212 (1).png")),
              const SizedBox(height: 10,),
              const ReusableText(
                title: 'Jay Regan | Fitness & Health\'s Complet...',
                size: 16,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
              const SizedBox(height: 10,),
              Row(
                crossAxisAlignment:
                CrossAxisAlignment.center,
                children: [
                  const ReusableText(
                    title: 'Video',
                    size: 13,
                    weight: FontWeight.w600,
                    color: Color(0xff99A7C7),
                  ),
                  const SizedBox(width: 10,),
                  Container(height: 3,width: 3,decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xffC8D1E5)),)
                  ,const SizedBox(width: 10,),
                  const ReusableText(
                    title: 'Saved to Playlist',
                    size: 13,
                    weight: FontWeight.w600,
                    color: Color(0xff99A7C7),
                  ),

                ],
              ),
              const SizedBox(height: 10,),
              const Row(
                children: [
                  Image(image: AssetImage("Asset/images/post/Group 76844 (7).png")),
                  SizedBox(width: 6,),
                  ReusableText(
                    title: 'Saved from',
                    size: 13,
                    weight: FontWeight.w500,
                    color: Color(0xff485470),
                  ),
                  ReusableText(
                    title: ' Jay Regan',
                    size: 13,
                    weight: FontWeight.w700,
                    color: Color(0xff485470),
                  ),
                  Spacer(),
                  Icon(Icons.more_vert,color: Color(0xffC8D1E5),),

                ],
              )


            ],
          ),
        ),
          const SizedBox(height: 10,),
      ],
      ),
    );
  }
}
