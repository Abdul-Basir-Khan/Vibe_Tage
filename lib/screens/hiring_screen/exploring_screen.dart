import 'package:flutter/material.dart';


class ExploringScreen extends StatefulWidget {
  const ExploringScreen({super.key});

  @override
  State<ExploringScreen> createState() => _ExploringScreenState();
}

class _ExploringScreenState extends State<ExploringScreen> {

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
    return  Column
      (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
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
                    leading: CircleAvatar(

                      backgroundImage: AssetImage("Asset/images/hiring/Group 76751.png"),
                    ),
                    title: Text(
                      'Gwen Stacy',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(
                              0xff212121),
                          fontWeight:
                          FontWeight
                              .w700),
                    ),
                    subtitle:

                    Text(
                      '1 day',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(
                              0xff7D8CAC),
                          fontWeight:
                          FontWeight
                              .w700),
                    ),
                    trailing: Icon(Icons.more_horiz,color: Color(0xff7D8CAC),),
                  ),
                  SizedBox(height: 10,),
                  Container(

                    width: MediaQuery.sizeOf(context).width*1,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xffC8D1E5)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,color: Color(0xf20FF9200),
                        ),
                        child: Image(image:  AssetImage("Asset/images/hiring/Vector (1).png"),),
                      ),
                      Text(
                        'Exploring Career Paths: Navigating\nhe World of Work.',
                        style: TextStyle(
                            fontSize: 21,
                            color: Color(
                                0xff212121),
                            fontWeight:
                            FontWeight
                                .w700),
                      ),
                      RichText(text: TextSpan(
                          text: 'Discuss topics related to job searching, career development, and workplace culture in this category. Connect with others who are passionate about finding fulfilling work and advancing their careers...',
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(
                                  0xff7D8CAC),
                              fontWeight:
                              FontWeight
                                  .w500),
                          children: [
                            TextSpan(
                              text: 'Read more',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(
                                      0xffFF9200),
                                  fontWeight:
                                  FontWeight
                                      .w500),
                            ),
                          ]
                      ),
                      ),
                    ],
                    ),
                  ),

                ],
                ),
              ),


              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
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

              SizedBox(height: 10,),
            ],
          ),
        ),
      ],
    );
  }
}
