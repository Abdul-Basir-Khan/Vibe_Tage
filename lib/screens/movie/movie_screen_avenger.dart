import 'package:flutter/material.dart';

import '../register/reusabletext.dart';


class AvengerMovieScreen extends StatefulWidget {
  const AvengerMovieScreen({super.key});

  @override
  State<AvengerMovieScreen> createState() => _AvengerMovieScreenState();
}

class _AvengerMovieScreenState extends State<AvengerMovieScreen> {

  final List<String> imagePath=[
    "Asset/images/Movie/avenger_screen/Rectangle 24197.png",
    "Asset/images/Movie/avenger_screen/Rectangle 24198.png",
    "Asset/images/Movie/avenger_screen/Rectangle 24197.png",
  ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      bottomNavigationBar:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
        child: Row(
          children: [
            Container(
              height: 42,
              padding: const EdgeInsets.only(top: 5,right: 15,bottom: 5,left: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                color:const Color(0xffFFFFFF),
              ),
              child: Row(
                children: [
                  Icon(Icons.play_arrow,color:Colors.black),
                  ReusableText(
                    title: 'Trailer',
                    size: 15,weight: FontWeight.w500,
                    color: Color(0xff000000) ,
                  ),
                ],
              ),
            ),
            SizedBox(width: 15,),
            Container(
              height: 42,
              width: MediaQuery.sizeOf(context).width*0.65,

              padding: const EdgeInsets.only(top: 5,right: 15,bottom: 5,left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color:Colors.transparent,
                  border: Border.all( color:const Color(0xffFFFFFF))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.add_circle_outlined,color:Colors.white),
                  SizedBox(width: 15),
                  ReusableText(
                    title: 'Add to Favorite',
                    size: 15,weight: FontWeight.w500,
                    color: Color(0xffFFFFFF) ,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xff232323),
      body: ListView(
      children: [
        Image(
          height: 295,
            fit: BoxFit.cover,width: MediaQuery.sizeOf(context).width*1,
            image: const AssetImage("Asset/images/Movie/avenger_screen/image 97.png")),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const ReusableText(
                title: '2019 - 2022   2 Season',
                size: 12,weight: FontWeight.w500,
                color:Color(0xffA4A4A4) ,
              ),
              const SizedBox(height: 10,),
              const ReusableText(
                title: 'Avengers - End Game',
                size: 22,weight: FontWeight.w700,
                color:Color(0xffFFFFFF) ,
              ),
              const SizedBox(height: 10,),
              RichText(text:const TextSpan(
                text: 'An ex-marine is hired by a defence contractor\nto travel to Panama to complete an arm...',
                style: TextStyle(
                fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xffBBBBBB),
        ),
                  children: [
                 TextSpan(
                   text: 'Read more',style: TextStyle(
                   fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xffFF9200),
                 )
                 ),

                ]
              ) ),
              const SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  const Icon(Icons.star,color: Color(0xffFFC319),),
                  const Icon(Icons.star,color: Color(0xffFFC319),),
                  const Icon(Icons.star,color: Color(0xffFFC319),),
                  const Icon(Icons.star,color: Color(0xffFFC319),),
                  const Icon(Icons.star,color: Color(0xf50FFFFFF),),
                  const SizedBox(width: 10,),
                  RichText(text:const TextSpan(
                      text: '7.1',
                      style: TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xffFFFFFF),
                      ),
                      children: [
                        TextSpan(
                            text: '/10 IMDb',style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xffBBBBBB),
                        )
                        ),

                      ]
                  ) ),

              ],),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Container(

                    padding: const EdgeInsets.only(top: 5,right: 15,bottom: 5,left: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                       color:const Color(0xf20FFFFFF),
                       border: Border.all( color:const Color(0xffFFFFFF))
                    ),
                    child: const Center(
                      child: ReusableText(
                        title: 'Action',
                        size: 13,weight: FontWeight.w600,
                        color: Color(0xffFFFFFF) ,
                      ),
                    ),
                  ),   const SizedBox(width: 15,) ,Container(

                    padding: const EdgeInsets.only(top: 5,right: 15,bottom: 5,left: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:const Color(0xf20FFFFFF),
                        border: Border.all( color:const Color(0xffFFFFFF))
                    ),
                    child: const Center(
                      child: ReusableText(
                        title: 'Thriller',
                        size: 13,weight: FontWeight.w600,
                        color: Color(0xffFFFFFF) ,
                      ),
                    ),
                  ),const SizedBox(width: 15,) ,

                  Container(

                    padding: const EdgeInsets.only(top: 5,right: 15,bottom: 5,left: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:const Color(0xf20FFFFFF),
                        border: Border.all( color:const Color(0xffFFFFFF))
                    ),
                    child: const Center(
                      child: ReusableText(
                        title: '16+',
                        size: 13,weight: FontWeight.w600,
                        color: Color(0xffFFFFFF) ,
                      ),
                    ),
                  ),const Spacer(),
                ],
              ),
              const SizedBox(height: 40,),
              const ReusableText(
                title: 'Episodes',
                size: 20,weight: FontWeight.w700,
                color: Color(0xffFFFFFF) ,
              ),
              const SizedBox(height: 20,),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(children: [
                ...List.generate(4, (index) =>
                    Container(
                 width: 146,
                   margin: const EdgeInsets.only(left: 10),
                   padding: const EdgeInsets.all(10),decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(5),

                     color: const Color(0xff000000)
                 ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       const Image(image: AssetImage("Asset/images/Movie/avenger_screen/Rectangle 24200 (1).png")),
                       const SizedBox(height: 5,),
                       const ReusableText(
                         title: 'Red house Blues',
                         size: 14,weight: FontWeight.w600,
                         color: Color(0xffFFFFFF) ,
                       ),
                       const SizedBox(height: 6,),
                       Row(
                         children: [
                           const ReusableText(
                             title: 'Episode 1',
                             size: 12,weight: FontWeight.w600,
                             color: Color(0xffBBBBBB) ,
                           ),
                           const SizedBox(width: 10,),
                           Container(
                             height: 6,width: 6,decoration: const BoxDecoration(
                               shape: BoxShape.circle,color:Color(0xffBBBBBB)
                           ),
                           ),
                           const SizedBox(width: 10,),
                           const ReusableText(
                             title: '54 min',
                             size: 14,weight: FontWeight.w600,
                             color: Color(0xffBBBBBB) ,
                           ),
                         ],
                       ),
                     ],
                   ),

                 ),
                 ),
               ],),
             ),
              const SizedBox(height: 20,),
              const ReusableText(
                title: 'Cast & Crew',
                size: 20,weight: FontWeight.w700,
                color: Color(0xffFFFFFF) ,
              ),
              const SizedBox(height: 20,),
              const Row(children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,backgroundImage: AssetImage("Asset/images/Movie/avenger_screen/Ellipse 919.png"),
                    ),
                    SizedBox(height: 10,),
                    ReusableText(
                      title: 'Tom Holland',
                      size: 13,weight: FontWeight.w600,
                      color: Color(0xffFFFFFF) ,
                    ),

                  ],
                ),
                SizedBox(width: 20,),
                Column (
                  children: [
                    CircleAvatar(
                      radius: 40,backgroundImage: AssetImage("Asset/images/Movie/avenger_screen/Ellipse 919 (1).png"),
                    ),
                    SizedBox(height: 10,),
                    ReusableText(
                      title: 'Robert D.',
                      size: 13,weight: FontWeight.w600,
                      color: Color(0xffFFFFFF) ,
                    ),

                  ],
                ),
                SizedBox(width: 20,),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,backgroundImage: AssetImage("Asset/images/Movie/avenger_screen/Ellipse 919 (2).png"),
                    ),
                    SizedBox(height: 10,),
                    ReusableText(
                      title: 'Tom Holland',
                      size: 13,weight: FontWeight.w600,
                      color: Color(0xffFFFFFF) ,
                    ),

                  ],
                ),
              ],),
              const SizedBox(height: 20,),
              const ReusableText(
                title: 'More like this >',
                size: 20,weight: FontWeight.w700,
                color: Color(0xffFFFFFF) ,
              ),
              const SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  ...List.generate(imagePath.length, (index) =>
                      Container(
                        width: 138,
                        margin: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),

                          color: Colors.transparent,
                      ),
                        child:

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(image: AssetImage(imagePath[index].toString())),
                            const SizedBox(height: 5,),
                            const ReusableText(
                              title: 'Money Heist: Sea...',
                              size: 14,weight: FontWeight.w600,
                              color: Color(0xffFFFFFF) ,
                            ),
                            const SizedBox(height: 6,),
                            Row(
                              children: [
                                const ReusableText(
                                  title: '2018',
                                  size: 12,weight: FontWeight.w600,
                                  color: Color(0xffBBBBBB) ,
                                ),
                                const SizedBox(width: 10,),
                                Container(
                                  height: 6,width: 6,decoration: const BoxDecoration(
                                    shape: BoxShape.circle,color:Color(0xffBBBBBB)
                                ),
                                ),
                                const SizedBox(width: 10,),
                                const Icon(Icons.star,color: Color(0xffBBBBBB),),

                                const SizedBox(width: 10,),
                                const ReusableText(
                                  title: '9.5',
                                  size: 14,weight: FontWeight.w600,
                                  color: Color(0xffBBBBBB) ,
                                ),
                              ],
                            ),
                          ],
                        ),

                      ),
                  ),
                ],),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),

      ],
    ),));
  }
}
