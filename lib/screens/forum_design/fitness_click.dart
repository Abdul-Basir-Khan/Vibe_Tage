import 'package:flutter/material.dart';

import '../register/reusabletext.dart';

class FitnessClick extends StatefulWidget {
  const FitnessClick({Key? key}) : super(key: key);

  @override
  State<FitnessClick> createState() => _FitnessClickState();
}

class _FitnessClickState extends State<FitnessClick> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF1F4FB),
        body:

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            Container(
              height: MediaQuery.of(context).size.height*0.91,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child:   Column(

                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        Row(

                          children: [
                            IconButton(icon: const Icon(Icons.arrow_back_outlined,color: Color(0xff212121),),onPressed: (){
                              Navigator.pop(context);
                            },),
                            const SizedBox(width: 6,),

                            Container(

                              height: 40,width: 40,

                              decoration: const BoxDecoration(

                                  shape: BoxShape.circle,color: Color(0xffF1F4FB)

                              ),

                              child: const Center(

                                child: Image(

                                  color: Color(0xff99A7C7),

                                  image: AssetImage("Asset/icons/form/Group.png"),),

                              ),



                            ),

                            const SizedBox(width: 10,),

                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [

                                const ReusableText(title: 'Fitness',size: 15,weight: FontWeight.w700,color: Color(0xff212121),),

                                const SizedBox(height: 7,),

                                Row(

                                  children: [

                                    const ReusableText(title: 'Topic: 05',size: 13,weight: FontWeight.w500,color: Color(0xff485470),),

                                    const SizedBox(width: 20,),

                                    Container(

                                      height: 6,width: 6,decoration: const BoxDecoration(

                                      shape: BoxShape.circle,color: Color(0xff7D8CAC),

                                    ),

                                    ),

                                    const SizedBox(width: 10,),

                                    const ReusableText(title: 'Post: 01',size: 13,weight: FontWeight.w500,color: Color(0xff485470),),



                                  ],

                                ),



                              ],

                            ),

                          ],

                        ),

                        const SizedBox(height: 12,),

                        const ReusableText(title: 'Exercise and Nutrition for Optimal Fitness" - This is topic\nemphasizes the importance of regular exercise a...',size: 12,weight: FontWeight.w500,color: Color(0xff7D8CAC),),

                      ],

                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 36,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(color: const Color(0xffFF9200),),
                            color:Colors.white
                          ),
                          child: const Center(
                            child:    ReusableText(title: 'Create new Topic',size: 14,weight: FontWeight.w600,color: Color(0xffFF9200),),
                          ),
                        ),
                      ),
                      Container(
                        height: 36,width: 36,decoration: const BoxDecoration(
                        shape: BoxShape.circle,color:Color(0xffF1F4FB),
                      ),
                        child: const Icon(Icons.share,color:Color(0xff99A7C7)),
                      ),
                      const SizedBox(width: 10,)
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Divider(thickness: 5,height: 5,color: Color(0xffF0F3FA),),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 133,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),color: Colors.white,
                            border: Border.all(color: const Color(0xffC8D1E5))
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ReusableText(title: 'Second text',size: 15,weight: FontWeight.w700,color: Color(0xff485470),),
                                      SizedBox(height: 5,),
                                      ReusableText(title: 'Last activated: 2 days ago',size: 12,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(children:[ const Image(image: AssetImage("Asset/images/form/Ellipse 910 (3).png"))
                                    , Positioned(
                                        right: -2,
                                        child: Container(
                                          padding: const EdgeInsets.all(3),
                                          height: 15,width: 15,decoration: const BoxDecoration(
                                          shape: BoxShape.circle,color: Color(0xffFF9200),
                                        ),
                                          child:  const Center(child: ReusableText(title: '2',size: 10,weight: FontWeight.w500,color: Color(0xffFFFFFF),)),
                                        )
                                    ),


                                  ]),

                                ],
                              ),
                              const SizedBox(height: 10,),
                              const Divider(
                                thickness: 2,
                                height: 2,
                                color: Color(0xffDCE2EF),
                              ),
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        ReusableText(
                                          title: 'Topic',
                                          size: 12,
                                          weight: FontWeight.w500,
                                          color: Color(0xff7D8CAC),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        ReusableText(
                                          title: '1 week ago ',
                                          size: 13,
                                          weight: FontWeight.w700,
                                          color: Color(0xff485470),
                                        ),
                                      ],
                                    ),
                                    Container(
                                        height: 45,
                                        child: const VerticalDivider(
                                          thickness: 2,
                                          width: 2,
                                          color: Color(0xffDCE2EF),
                                        )),
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,

                                      children: [
                                        ReusableText(
                                          title: 'Replies',
                                          size: 12,
                                          weight: FontWeight.w500,
                                          color: Color(0xff7D8CAC),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        ReusableText(
                                          title: '41',
                                          size: 13,
                                          weight: FontWeight.w700,
                                          color: Color(0xff485470),
                                        ),
                                      ],
                                    ),
                                    Container(
                                        height: 45,
                                        child: const VerticalDivider(
                                          thickness: 2,
                                          width: 2,
                                          color: Color(0xffDCE2EF),
                                        )),
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        ReusableText(
                                          title: 'Views',
                                          size: 12,
                                          weight: FontWeight.w500,
                                          color: Color(0xff7D8CAC),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        ReusableText(
                                          title: '45',
                                          size: 13,
                                          weight: FontWeight.w700,
                                          color: Color(0xff485470),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                        ),const SizedBox(height: 15,),Container(
                          height: 133,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),color: Colors.white,
                              border: Border.all(color: const Color(0xffC8D1E5))
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ReusableText(title: 'Second text',size: 15,weight: FontWeight.w700,color: Color(0xff485470),),
                                      SizedBox(height: 5,),
                                      ReusableText(title: 'Last activated: 2 days ago',size: 12,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(children:[ const Image(image: AssetImage("Asset/images/form/Ellipse 910 (4).png"))
                                    , Positioned(
                                        right: -2,
                                        child: Container(
                                          padding: const EdgeInsets.all(3),
                                          height: 15,width: 15,decoration: const BoxDecoration(
                                          shape: BoxShape.circle,color: Color(0xffFF9200),
                                        ),
                                          child:  const Center(child: ReusableText(title: '2',size: 10,weight: FontWeight.w500,color: Color(0xffFFFFFF),)),
                                        )
                                    ),


                                  ]),

                                ],
                              ),
                              const SizedBox(height: 10,),
                              const Divider(
                                thickness: 2,
                                height: 2,
                                color: Color(0xffDCE2EF),
                              ),
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 25),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        ReusableText(
                                          title: 'Topic',
                                          size: 12,
                                          weight: FontWeight.w500,
                                          color: Color(0xff7D8CAC),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        ReusableText(
                                          title: '1 week ago ',
                                          size: 13,
                                          weight: FontWeight.w700,
                                          color: Color(0xff485470),
                                        ),
                                      ],
                                    ),
                                    Container(
                                        height: 45,
                                        child: const VerticalDivider(
                                          thickness: 2,
                                          width: 2,
                                          color: Color(0xffDCE2EF),
                                        )),
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,

                                      children: [
                                        ReusableText(
                                          title: 'Replies',
                                          size: 12,
                                          weight: FontWeight.w500,
                                          color: Color(0xff7D8CAC),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        ReusableText(
                                          title: '41',
                                          size: 13,
                                          weight: FontWeight.w700,
                                          color: Color(0xff485470),
                                        ),
                                      ],
                                    ),
                                    Container(
                                        height: 45,
                                        child: const VerticalDivider(
                                          thickness: 2,
                                          width: 2,
                                          color: Color(0xffDCE2EF),
                                        )),
                                    const Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        ReusableText(
                                          title: 'Views',
                                          size: 12,
                                          weight: FontWeight.w500,
                                          color: Color(0xff7D8CAC),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        ReusableText(
                                          title: '45',
                                          size: 13,
                                          weight: FontWeight.w700,
                                          color: Color(0xff485470),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
