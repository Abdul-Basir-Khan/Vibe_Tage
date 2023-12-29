import 'package:flutter/material.dart';

class HistoryTab extends StatefulWidget {
  const HistoryTab({super.key});

  @override
  State<HistoryTab> createState() => _HistoryTabState();
}

class _HistoryTabState extends State<HistoryTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: const Color(0xffFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,children: [
              const Row(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
                    'You viewed House post',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(
                            0xff212121),
                        fontWeight:
                        FontWeight
                            .w700),
                  ),
                  Spacer(),
                  Text(
                    '3 days ago',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(
                            0xff485470),
                        fontWeight:
                        FontWeight
                            .w600),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const Text(
                'Mon 12, January, 2023',
                style: TextStyle(
                    fontSize: 12,
                    color: Color(
                        0xff485470),
                    fontWeight:
                    FontWeight
                        .w600),
              ),
              const SizedBox(height: 10,),
              const Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
              const SizedBox(height: 10,),

              const ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 23,
                  backgroundImage: AssetImage("assets/images/history/Group 76754.png"),
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
                subtitle: Text(
                  '1hr ago',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(
                          0xff7D8CAC),
                      fontWeight:
                      FontWeight
                          .w500),
                ),
                trailing: Icon(Icons.more_horiz,color: Color(0xff7D8CAC),),
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
                  children: [
                    TextSpan(
                      text: '#Friends #atWork',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(
                              0xffFF9200),
                          fontWeight:
                          FontWeight
                              .w500),
                    )
                  ]
              ),
              ),
              const SizedBox(height: 10,),
            ],
            ),
          ),

              const Image(image: AssetImage("assets/images/history/Rectangle 24050.png")),



              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,children: [
                    Row(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage("assets/images/history/face-with-tears-of-joy.png")),
                        Image(image: AssetImage("assets/images/history/smiling-face-with-heart-eyes.png")),
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
                          Image(image: AssetImage("assets/images/event/heart.png")),
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
                          Image(image: AssetImage("assets/images/event/Chat-4.png")),
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

                          Image(image: AssetImage("assets/images/event/Group 289754.png")),
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


            ],
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          color: const Color(0xffFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,children: [
              const Row(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
                    'You viewed House post',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(
                            0xff212121),
                        fontWeight:
                        FontWeight
                            .w700),
                  ),
                  Spacer(),
                  Text(
                    '3 days ago',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(
                            0xff485470),
                        fontWeight:
                        FontWeight
                            .w600),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const Text(
                'Mon 12, January, 2023',
                style: TextStyle(
                    fontSize: 12,
                    color: Color(
                        0xff485470),
                    fontWeight:
                    FontWeight
                        .w600),
              ),
              const SizedBox(height: 10,),
              const Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
              const SizedBox(height: 10,),

              const ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 23,
                  backgroundImage: AssetImage("assets/images/history/Group 76754.png"),
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
                subtitle: Text(
                  '1hr ago',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(
                          0xff7D8CAC),
                      fontWeight:
                      FontWeight
                          .w500),
                ),
                trailing: Icon(Icons.more_horiz,color: Color(0xff7D8CAC),),
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
                  children: [
                    TextSpan(
                      text: '#Friends #atWork',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(
                              0xffFF9200),
                          fontWeight:
                          FontWeight
                              .w500),
                    )
                  ]
              ),
              ),
              const SizedBox(height: 10,),
            ],
            ),
          ),

              const Image(image: AssetImage("assets/images/history/Rectangle 24050.png")),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,children: [
                    Row(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage("assets/images/history/face-with-tears-of-joy.png")),
                        Image(image: AssetImage("assets/images/history/smiling-face-with-heart-eyes.png")),
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
                          Image(image: AssetImage("assets/images/event/heart.png")),
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
                          Image(image: AssetImage("assets/images/event/Chat-4.png")),
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

                          Image(image: AssetImage("assets/images/event/Group 289754.png")),
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


            ],
          ),
        ),
      ],
    );
  }
}
