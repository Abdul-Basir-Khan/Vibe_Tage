import 'package:flutter/material.dart';


class CommingSoonTime extends StatefulWidget {
  const CommingSoonTime({super.key});

  @override
  State<CommingSoonTime> createState() => _CommingSoonTimeState();
}

class _CommingSoonTimeState extends State<CommingSoonTime> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold

      (
      backgroundColor: const Color(0xffFFFFFF),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height*0.25,),
            const Image(image: AssetImage("Asset/images/comming_soon/Group 1000003089.png")),
            const SizedBox(height: 15,),
            const Text(
              'COMING SOON',
              style: TextStyle(
                  fontSize: 28,
                  color: Color(
                      0xffFF9200),
                  fontWeight:
                  FontWeight
                      .w800),
            ),

            const SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF1F4FB)
                        ),
                        child:      const Center(
                          child: Text(
                            '01',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color(
                                    0xff485470),
                                fontWeight:
                                FontWeight
                                    .w700),
                          ),
                        ),
                      ),
                    const SizedBox(height: 10,),
                    const Text(
                      'DAYS',
                      style: TextStyle(
                          fontSize: 10,
                          color: Color(
                              0xff7D8CAC),
                          fontWeight:
                          FontWeight
                              .w600),
                    ),
                  ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.center,children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: Color(0xff99A7C7),
                            shape: BoxShape.circle
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: Color(0xff99A7C7),
                            shape: BoxShape.circle
                          ),
                        ),

                    ],
                    ),
                  ),

                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF1F4FB)
                      ),
                      child:      const Center(
                        child: Text(
                          '16',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(
                                  0xff485470),
                              fontWeight:
                              FontWeight
                                  .w700),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                      'HOURS',
                      style: TextStyle(
                          fontSize: 10,
                          color: Color(
                              0xff7D8CAC),
                          fontWeight:
                          FontWeight
                              .w600),
                    ),
                  ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.center,children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                            color: Color(0xff99A7C7),
                            shape: BoxShape.circle
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                            color: Color(0xff99A7C7),
                            shape: BoxShape.circle
                        ),
                      ),

                    ],
                    ),
                  ),


                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF1F4FB)
                      ),
                      child:      const Center(
                        child: Text(
                          '45',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(
                                  0xff485470),
                              fontWeight:
                              FontWeight
                                  .w700),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                      'MINUTE',
                      style: TextStyle(
                          fontSize: 10,
                          color: Color(
                              0xff7D8CAC),
                          fontWeight:
                          FontWeight
                              .w600),
                    ),
                  ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.center,children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                            color: Color(0xff99A7C7),
                            shape: BoxShape.circle
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                            color: Color(0xff99A7C7),
                            shape: BoxShape.circle
                        ),
                      ),

                    ],
                    ),
                  ),

                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF1F4FB)
                      ),
                      child:      const Center(
                        child: Text(
                          '37',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(
                                  0xff485470),
                              fontWeight:
                              FontWeight
                                  .w700),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                      'SECOND',
                      style: TextStyle(
                          fontSize: 10,
                          color: Color(
                              0xff7D8CAC),
                          fontWeight:
                          FontWeight
                              .w600),
                    ),
                  ],
                  ),
                ],
              ),
            ),
const Spacer()

          ],
        ),
      ),));
  }
}
