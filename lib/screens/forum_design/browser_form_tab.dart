import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/forum_design/fitness_click.dart';

import '../register/reusabletext.dart';

class BrowserFormTab extends StatefulWidget {
  const BrowserFormTab({Key? key}) : super(key: key);

  @override
  State<BrowserFormTab> createState() => _BrowserFormTabState();
}

class _BrowserFormTabState extends State<BrowserFormTab> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Row(
            children: [
              const ReusableText(title: 'Health & Wellness',size: 16,weight: FontWeight.w700,color: Color(0xff485470),),
              const Spacer(),
              IconButton(icon: const Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xff485470),),onPressed: (){

              },),
            ],
          ),
          const SizedBox(height: 10,),
          InkWell(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FitnessClick()));

              });
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),border: Border.all(color: const Color(0xffC8D1E5)),color: Colors.white
              ),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,children: [
                Row(
                  children: [
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
                    const Spacer(),
                    Stack(children:[ const Image(image: AssetImage("Asset/icons/form/Ellipse 910.png"))
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
                const SizedBox(height: 12,),
                const ReusableText(title: 'Exercise and Nutrition for Optimal Fitness" - This is topic\nemphasizes the importance of regular exercise a...',size: 12,weight: FontWeight.w500,color: Color(0xff7D8CAC),),


              ],
              ),
            ),
          ),
          const SizedBox(height: 15,),
          Container(

            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),border: Border.all(color: const Color(0xffC8D1E5)),color: Colors.white
            ),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,children: [
              Row(
                children: [
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
                      const ReusableText(title: 'Nutrition',size: 15,weight: FontWeight.w700,color: Color(0xff212121),),

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
                  const Spacer(),
                  Stack(children:[ const Image(image: AssetImage("Asset/icons/form/Ellipse 910 (1).png"))
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
              const SizedBox(height: 12,),
              const ReusableText(title: 'Exercise and Nutrition for Optimal Fitness" - This is topic\nemphasizes the importance of regular exercise a...',size: 12,weight: FontWeight.w500,color: Color(0xff7D8CAC),),


            ],
            ),
          ),
          const SizedBox(height: 15,),
          Container(

            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),border: Border.all(color: const Color(0xffC8D1E5)),color: Colors.white
            ),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,children: [
              Row(
                children: [
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
                      const ReusableText(title: 'Healthy Skin',size: 15,weight: FontWeight.w700,color: Color(0xff212121),),

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
                  const Spacer(),
                  Stack(children:[ const Image(image: AssetImage("Asset/icons/form/Ellipse 910 (2).png"))
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
              const SizedBox(height: 12,),
              const ReusableText(title: 'Exercise and Nutrition for Optimal Fitness" - This is topic\nemphasizes the importance of regular exercise a...',size: 12,weight: FontWeight.w500,color: Color(0xff7D8CAC),),


            ],
            ),
          ),
          const SizedBox(height: 15,),

        ],
      ),
    );
  }
}
