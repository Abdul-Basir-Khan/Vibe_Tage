import 'package:flutter/material.dart';

import 'exploring_screen.dart';


class HiringScreen extends StatefulWidget {
  const HiringScreen({super.key});

  @override
  State<HiringScreen> createState() => _HiringScreenState();
}

class _HiringScreenState extends State<HiringScreen> {

  final List imgList=[
    'Asset/images/hiring/Rectangle 209.png',
    'Asset/images/hiring/unsplash_3XCg-6qwJsw.png',
    'Asset/images/hiring/unsplash_cWjapqWNzW8.png',
    'Asset/images/hiring/unsplash_pVpif5O2o7I.png',
    'Asset/images/hiring/unsplash_3XCg-6qwJsw.png',
  ];

  int _currentIndex=0;


  @override
  Widget build(BuildContext context) {
    return       SafeArea(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            width: double.infinity,color: Colors.white,child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children:List.generate(imgList.length, (index) =>  Container(
                  clipBehavior: Clip.antiAlias,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: _currentIndex==index?const Color(0xffFF9200):const Color(0xffFFFFFF))
                  ),
                  child:Stack(
                    children: [
                      Image(image: AssetImage(imgList[index].toString())),
                      index==0?

                      Positioned(
                        top: 30,left: 15,
                        child:   Container(

                          padding: const EdgeInsets.all(5),

                          decoration: const BoxDecoration(

                              shape: BoxShape.circle,color: Color(0xf70FFFFFF)

                          ),

                          child: const Icon(Icons.add,color: Color(0xffFFFFFF),size: 28,),

                        ),
                      ):
                      Positioned(
                        top: 2,left: 3,
                        child:   Container(
                          height: 25,width: 25,

                          decoration: const BoxDecoration(

                              shape: BoxShape.circle,color: Color(0xf70FFFFFF)

                          ),

                          child:const CircleAvatar(backgroundImage: AssetImage('Asset/images/hiring/1.png'),

                          ),
                        ),
                      ),


                    ],
                  ),
                ))
            ),
          ),
          ),
          const SizedBox(height: 10,),
          Container(
            color: const Color(0xffFFFFFF),
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage("Asset/images/hiring/Group 76751.png"),),
                const SizedBox(width: 10,),
                Container(height: 45,
                  width: MediaQuery.sizeOf(context).width*0.62,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'What’s your Vibe 🤙',
                      hintStyle: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xff99A7C7)),
                      filled: true,fillColor: const Color(0xffF1F4FB),
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide:  BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide:  BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide:  BorderSide.none,
                      ),

                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                GestureDetector(
                  child: Container(

                    padding: const EdgeInsets.all(5),

                    decoration: const BoxDecoration(

                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [
                              Color(0xffFFC107),
                              Color(0xffFF9200),
                            ]
                        )

                    ),

                    child: const Icon(Icons.add,color: Color(0xffFFFFFF),size: 28,),

                  ),
                ),

              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,children: [

                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const CircleAvatar(
                        radius: 23,
                        backgroundImage: AssetImage("Asset/images/hiring/Ellipse 753.png"),
                      ),
                      title: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Apple Official',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(
                                    0xff212121),
                                fontWeight:
                                FontWeight
                                    .w700),
                          ),
                          SizedBox(width: 10,),
                          Image(image: AssetImage("Asset/images/hiring/Subtract.png"))
                        ],
                      ),
                      subtitle: const Text(
                        'Sponsored',
                        style: TextStyle(
                            fontSize: 11,
                            color: Color(
                                0xffFF9200),
                            fontWeight:
                            FontWeight
                                .w500),
                      ),
                      trailing: SizedBox(
                        width: MediaQuery.sizeOf(context).width*0.29,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment. center,
                          children: [
                            Container(
                              width: 80,height: 35,padding: const EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffF1F4FB)
                              ),
                              child: const Center(
                                child:
                                Text(
                                  'Follow',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color(
                                          0xff7D8CAC),
                                      fontWeight:
                                      FontWeight
                                          .w600),
                                ),
                              ),
                            ),
                            const Icon(Icons.more_vert,color: Color(0xff7D8CAC),),

                          ],
                        ),
                      ),
                    ),
                    RichText(text: const TextSpan(
                      text: 'Lorem Ipsum is simply dummy text of the printing and typesetting ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(
                              0xff7D8CAC),
                          fontWeight:
                          FontWeight
                              .w500),
                    ),
                    ),

                  ],
                  ),
                ),
                const SizedBox(height: 10,),
                Stack(
                  children: [
                    const Image(image: AssetImage("Asset/images/hiring/Rectangle 24050.png")),
                    Positioned(
                      left: MediaQuery.sizeOf(context).width*0.30,top: 90,
                      child: const Text(
                        'We are Hiring\nUX Designer',
                        style: TextStyle(
                            fontSize: 26,
                            color: Color(
                                0xffFFFFFF),
                            fontWeight:
                            FontWeight
                                .w700),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,children: [
                    Row(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage("Asset/images/history/face-with-tears-of-joy.png")),
                        Image(image: AssetImage("Asset/images/history/smiling-face-with-heart-eyes.png")),
                        Text(
                          '23.4k',
                          style: TextStyle(
                              fontSize: 11,
                              color: Color(
                                  0xff7D8CAC),
                              fontWeight:
                              FontWeight
                                  .w500),
                        ),
                        Spacer(),
                        Text(
                          '4.3K Comments | 1.9K Revibed',
                          style: TextStyle(
                              fontSize: 11,
                              color: Color(
                                  0xff7D8CAC),
                              fontWeight:
                              FontWeight
                                  .w500),
                        ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(thickness: 1,height: 1,color: Color(0xffC8D1E5),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("Asset/images/Heart-3.png")),
                            SizedBox(width: 10,),
                            Text(
                              'React',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(
                                      0xff7D8CAC),
                                  fontWeight:
                                  FontWeight
                                      .w500),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("Asset/images/event/Chat-4.png")),
                            SizedBox(width: 10,),
                            Text(
                              'Comment',
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Color(
                                      0xff7D8CAC),
                                  fontWeight:
                                  FontWeight
                                      .w500),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Image(image: AssetImage("Asset/images/event/Group 289754.png")),
                            SizedBox(width: 10,),
                            Text(
                              'Revibed',
                              style: TextStyle(
                                  fontSize: 11,
                                  color: Color(
                                      0xff7D8CAC),
                                  fontWeight:
                                  FontWeight
                                      .w500),
                            ),
                          ],
                        ),




                      ],),
                  ],
                  ),
                ),

                const SizedBox(height: 10,),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical:5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),color: const Color(0xffF8F9FB)
                  ),
                  child: const ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(

                      backgroundImage: AssetImage("Asset/images/hiring/Group 76751.png"),
                    ),
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Gwen Stacy',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(
                                  0xff212121),
                              fontWeight:
                              FontWeight
                                  .w700),
                        ),
                        SizedBox(width: 10,),
                        Text(
                          '1 day',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(
                                  0xff212121),
                              fontWeight:
                              FontWeight
                                  .w700),
                        ),
                      ],
                    ),
                    subtitle: Text(
                      'Lorem Ipsum is simply dummy text of\nthe printing and typesetting ',
                      style: TextStyle(
                          fontSize: 11,
                          color: Color(
                              0xff485470),
                          fontWeight:
                          FontWeight
                              .w500),
                    ),
                    trailing: Icon(Icons.more_vert,color: Color(0xff7D8CAC),),
                  ),
                )
              ],
            ),
          ),
          const ExploringScreen()
        ],
      ),
    );
  }
}
