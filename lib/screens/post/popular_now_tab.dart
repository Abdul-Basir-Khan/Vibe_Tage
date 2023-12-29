import 'package:flutter/material.dart';

import '../register/reusabletext.dart';


class NowTabScreen extends StatefulWidget {
  const NowTabScreen({super.key});

  @override
  State<NowTabScreen> createState() => _NowTabScreenState();
}

class _NowTabScreenState extends State<NowTabScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height*0.80,
      child: ListView(
        children: [
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xf107D8CAC),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children:

                  [
                    Image(
                      width: MediaQuery.sizeOf(context).width*1,fit: BoxFit.cover,
                      image: const AssetImage("Asset/images/post/Rectangle 23850.png")),

                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 41,width: 41,decoration: const BoxDecoration(
                      shape: BoxShape.circle,color: Color(0xf25000000),
                    ),
                      child: const Center
                        (
                        child:
                        Image(image: AssetImage("Asset/images/post/3.png"),),

                      ),
                    ),
                  ),
                    Positioned(
                      bottom: 10,right: 0,
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.only(top: 2,right: 8,bottom: 2,left: 8),
                        height: 18,width: 42,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),color: const Color(0xf25000000),
                      ),
                        child: const Center
                          (
                          child:
                          ReusableText(
                            title: '12:03',
                            size: 10,
                            weight: FontWeight.w600,
                            color: Color(0xffFFFFFF),
                          ),


                        ),
                      ),
                    ),

                  ]
                ),




                const SizedBox(height: 10,),
                const ReusableText(
                  title: 'Call of Duty: Warzone 2 Solo Win Game\n14 Kills World Record...',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff212121),
                ),
                const SizedBox(height: 10,),
                Row(
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.remove_red_eye,color: Color(0xffC8D1E5),),
                    const SizedBox(width: 5,),
                    const ReusableText(
                      title: '1.2k Views',
                      size: 13,
                      weight: FontWeight.w600,
                      color: Color(0xff485470),
                    ),
                    const SizedBox(width: 10,),
                    Container(height: 3,width: 3,decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xffC8D1E5)),)
                    ,const SizedBox(width: 10,),
                    const Image(image: AssetImage("Asset/icons/chat_update/Heart-3.png"))
      ,const SizedBox(width: 10,),
                    const ReusableText(
                      title: '238 Reacts',
                      size: 13,
                      weight: FontWeight.w600,
                      color: Color(0xff485470),
                    ),
                    const SizedBox(width: 10,),
                    Container(height: 3,width: 3,decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xffC8D1E5)),)
                    ,const SizedBox(width: 10,),
                    const ReusableText(
                      title: '3 weeks ago',
                      size: 13,
                      weight: FontWeight.w600,
                      color: Color(0xff485470),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  children: [
                    Image(image: AssetImage("Asset/images/post/Group 76754 (1).png")),
                    SizedBox(width: 6,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          title: 'Gwen Stacy',
                          size: 13,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),
                        SizedBox(height: 5,),
                        ReusableText(
                          title: '200k Followers',
                          size: 12,
                          weight: FontWeight.w500,
                          color: Color(0xff7D8CAC),
                        ),

                      ],
                    ),
                    Spacer(),
                    Icon(Icons.more_vert,color: Color(0xffC8D1E5),size: 35,),

                  ],
                ),


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
                Stack(
                    children:

                    [
                      Image(
                          width: MediaQuery.sizeOf(context).width*1,fit: BoxFit.cover,
                          image: const AssetImage("Asset/images/post/Rectangle 23850.png")),

                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          height: 41,width: 41,decoration: const BoxDecoration(
                          shape: BoxShape.circle,color: Color(0xf25000000),
                        ),
                          child: const Center
                            (
                            child:
                            Image(image: AssetImage("Asset/images/post/Group (1).png"),),

                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,right: 0,
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.only(top: 2,right: 8,bottom: 2,left: 8),
                          height: 18,width: 42,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),color: const Color(0xf25000000),
                        ),
                          child: const Center
                            (
                            child:
                            ReusableText(
                              title: '12:03',
                              size: 10,
                              weight: FontWeight.w600,
                              color: Color(0xffFFFFFF),
                            ),


                          ),
                        ),
                      ),

                    ]
                ),




                const SizedBox(height: 10,),
                const ReusableText(
                  title: 'Call of Duty: Warzone 2 Solo Win Game\n14 Kills World Record...',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff212121),
                ),
                const SizedBox(height: 10,),
                Row(
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.remove_red_eye,color: Color(0xffC8D1E5),),
                    const SizedBox(width: 5,),
                    const ReusableText(
                      title: '1.2k Views',
                      size: 13,
                      weight: FontWeight.w600,
                      color: Color(0xff485470),
                    ),
                    const SizedBox(width: 10,),
                    Container(height: 3,width: 3,decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xffC8D1E5)),)
                    ,const SizedBox(width: 10,),
                    const Image(image: AssetImage("Asset/icons/chat_update/Heart-3.png"))
                    ,const SizedBox(width: 10,),
                    const ReusableText(
                      title: '238 Reacts',
                      size: 13,
                      weight: FontWeight.w600,
                      color: Color(0xff485470),
                    ),
                    const SizedBox(width: 10,),
                    Container(height: 3,width: 3,decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xffC8D1E5)),)
                    ,const SizedBox(width: 10,),
                    const ReusableText(
                      title: '3 weeks ago',
                      size: 13,
                      weight: FontWeight.w600,
                      color: Color(0xff485470),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  children: [
                    Image(image: AssetImage("Asset/images/post/Group 76754 (1).png")),
                    SizedBox(width: 6,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          title: 'Gwen Stacy',
                          size: 13,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),
                        SizedBox(height: 5,),
                        ReusableText(
                          title: '200k Followers',
                          size: 12,
                          weight: FontWeight.w500,
                          color: Color(0xff7D8CAC),
                        ),

                      ],
                    ),
                    Spacer(),
                    Icon(Icons.more_vert,color: Color(0xffC8D1E5),size: 35,),

                  ],
                ),


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
                Stack(
                    children:

                    [
                      Image(
                          width: MediaQuery.sizeOf(context).width*1,fit: BoxFit.cover,
                          image: const AssetImage("Asset/images/post/Rectangle 23850.png")),

                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          height: 41,width: 41,decoration: const BoxDecoration(
                          shape: BoxShape.circle,color: Color(0xf25000000),
                        ),
                          child: const Center
                            (
                            child:
                            Image(image: AssetImage("Asset/images/post/Group (2).png"),),

                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,right: 0,
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.only(top: 2,right: 8,bottom: 2,left: 8),
                          height: 18,width: 42,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),color: const Color(0xf25000000),
                        ),
                          child: const Center
                            (
                            child:
                            ReusableText(
                              title: '12:03',
                              size: 10,
                              weight: FontWeight.w600,
                              color: Color(0xffFFFFFF),
                            ),


                          ),
                        ),
                      ),

                    ]
                ),




                const SizedBox(height: 10,),
                const ReusableText(
                  title: 'Call of Duty: Warzone 2 Solo Win Game\n14 Kills World Record...',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff212121),
                ),
                const SizedBox(height: 10,),
                Row(
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.remove_red_eye,color: Color(0xffC8D1E5),),
                    const SizedBox(width: 5,),
                    const ReusableText(
                      title: '1.2k Views',
                      size: 13,
                      weight: FontWeight.w600,
                      color: Color(0xff485470),
                    ),
                    const SizedBox(width: 10,),
                    Container(height: 3,width: 3,decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xffC8D1E5)),)
                    ,const SizedBox(width: 10,),
                    const Image(image: AssetImage("Asset/icons/chat_update/Heart-3.png"))
                    ,const SizedBox(width: 10,),
                    const ReusableText(
                      title: '238 Reacts',
                      size: 13,
                      weight: FontWeight.w600,
                      color: Color(0xff485470),
                    ),
                    const SizedBox(width: 10,),
                    Container(height: 3,width: 3,decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xffC8D1E5)),)
                    ,const SizedBox(width: 10,),
                    const ReusableText(
                      title: '3 weeks ago',
                      size: 13,
                      weight: FontWeight.w600,
                      color: Color(0xff485470),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  children: [
                    Image(image: AssetImage("Asset/images/post/Group 76754 (1).png")),
                    SizedBox(width: 6,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          title: 'Gwen Stacy',
                          size: 13,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),
                        SizedBox(height: 5,),
                        ReusableText(
                          title: '200k Followers',
                          size: 12,
                          weight: FontWeight.w500,
                          color: Color(0xff7D8CAC),
                        ),

                      ],
                    ),
                    Spacer(),
                    Icon(Icons.more_vert,color: Color(0xffC8D1E5),size: 35,),

                  ],
                ),


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
                Stack(
                    children:

                    [
                      Image(
                          width: MediaQuery.sizeOf(context).width*1,fit: BoxFit.cover,
                          image: const AssetImage("Asset/images/post/Rectangle 23850.png")),

                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          height: 41,width: 41,decoration: const BoxDecoration(
                          shape: BoxShape.circle,color: Color(0xf25000000),
                        ),
                          child: Center
                            (
                            child:
                            Container(
                              margin: const EdgeInsets.all(10),
                              height: 27,width: 27,decoration: const BoxDecoration(
                              shape: BoxShape.circle,color: Color(0xffFFFFFF),
                            ),child: const Center(
                              child:
                              ReusableText(
                                title: '4',
                                size: 13,
                                weight: FontWeight.w600,
                                color: Color(0xff9E9E9E),
                              ),
                            ),

                            ),

                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,right: 0,
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.only(top: 2,right: 8,bottom: 2,left: 8),
                          height: 18,width: 42,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),color: const Color(0xf25000000),
                        ),
                          child: const Center
                            (
                            child:
                            ReusableText(
                              title: '12:03',
                              size: 10,
                              weight: FontWeight.w600,
                              color: Color(0xffFFFFFF),
                            ),


                          ),
                        ),
                      ),

                    ]
                ),




                const SizedBox(height: 10,),
                const ReusableText(
                  title: 'Call of Duty: Warzone 2 Solo Win Game\n14 Kills World Record...',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff212121),
                ),
                const SizedBox(height: 10,),
                Row(
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.remove_red_eye,color: Color(0xffC8D1E5),),
                    const SizedBox(width: 5,),
                    const ReusableText(
                      title: '1.2k Views',
                      size: 13,
                      weight: FontWeight.w600,
                      color: Color(0xff485470),
                    ),
                    const SizedBox(width: 10,),
                    Container(height: 3,width: 3,decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xffC8D1E5)),)
                    ,const SizedBox(width: 10,),
                    const Image(image: AssetImage("Asset/icons/chat_update/Heart-3.png"))
                    ,const SizedBox(width: 10,),
                    const ReusableText(
                      title: '238 Reacts',
                      size: 13,
                      weight: FontWeight.w600,
                      color: Color(0xff485470),
                    ),
                    const SizedBox(width: 10,),
                    Container(height: 3,width: 3,decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xffC8D1E5)),)
                    ,const SizedBox(width: 10,),
                    const ReusableText(
                      title: '3 weeks ago',
                      size: 13,
                      weight: FontWeight.w600,
                      color: Color(0xff485470),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  children: [
                    Image(image: AssetImage("Asset/images/post/Group 76754 (1).png")),
                    SizedBox(width: 6,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          title: 'Gwen Stacy',
                          size: 13,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),
                        SizedBox(height: 5,),
                        ReusableText(
                          title: '200k Followers',
                          size: 12,
                          weight: FontWeight.w500,
                          color: Color(0xff7D8CAC),
                        ),

                      ],
                    ),
                    Spacer(),
                    Icon(Icons.more_vert,color: Color(0xffC8D1E5),size: 35,),

                  ],
                ),


              ],
            ),
          ),
          const SizedBox(height: 10,),


        ],
      ),
    );
  }
}
