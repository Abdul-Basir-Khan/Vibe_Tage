import 'package:flutter/material.dart';

class TaskTab extends StatefulWidget {
  const TaskTab({super.key});

  @override
  State<TaskTab> createState() => _TaskTabState();
}

class _TaskTabState extends State<TaskTab> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
                child: Divider(
                  thickness: 2,
                  height: 2,
                  color: Color(0xffC8D1E5),
                )),
            SizedBox(
              width: 10,
            ),
            Text(
              '20 May, 2023',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff7D8CAC)),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: Divider(
                  thickness: 2,
                  height: 2,
                  color: Color(0xffC8D1E5),
                )),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage:
                    AssetImage("Asset/images/task_tab/Avatar.png"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: 'Gwen Stacy',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff485470)),
                            children: [
                              TextSpan(
                                  text: ' 12:31',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff7D8CAC),
                                  )),
                            ]),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Here is the task',
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff7D8CAC)),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Container(
                        height: 436,
                        width: MediaQuery.sizeOf(context).width * 0.75,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffC8D1E5),
                            )),
                        child: Column(
                          children: [
                            Container(
                              height: 44,
                              width: MediaQuery.sizeOf(context).width,
                              color: Color(0xffF1F4FB),
                              child: Center(
                                  child: Text(
                                    "New Banner (1000 x 400)",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                        color: Color(0xff485470)),
                                  )),
                            ),
                            Divider(
                              thickness: 2,
                              height: 2,
                              color: Color(0xffC8D1E5),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "Hi Momin, I have some urgent task to complete. I want you to design the banner for product webpage. Please pause the other tasks for now. We need it...",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13,
                                          color: Color(0xff485470))),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    thickness: 2,
                                    height: 2,
                                    color: Color(0xffC8D1E5),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.watch_later_outlined,
                                        color: Color(0xff7D8CAC),
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            text: 'Due in:',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff7D8CAC)),
                                            children: [
                                              TextSpan(
                                                  text: ' 03 days',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    color:
                                                    Color(0xff485470),
                                                  )),
                                            ]),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Image(
                                        color: Color(0xff7D8CAC),
                                        height: 25,
                                        width: 25,
                                        image: AssetImage(
                                            "Asset/images/task_tab/Group 1000005786.png"),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            text: 'Budget:',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff7D8CAC)),
                                            children: [
                                              TextSpan(
                                                  text: ' 03 days',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    color:
                                                    Color(0xff485470),
                                                  )),
                                            ]),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Image(
                                        color: Color(0xff7D8CAC),
                                        height: 25,
                                        width: 25,
                                        image: AssetImage(
                                            "Asset/images/task_tab/Priority.png"),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        'Priority:',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff7D8CAC)),
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            top: 1,
                                            right: 12,
                                            bottom: 1,
                                            left: 12),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(18),
                                            color: Color(0xffAB7BF2)),
                                        child: Center(
                                          child: Text(
                                            'Medium',
                                            style: TextStyle(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xffFFFFFF)),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    thickness: 2,
                                    height: 2,
                                    color: Color(0xffC8D1E5),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Files',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff7D8CAC)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 48,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        color: Color(0xffF1F4FB)),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                "Asset/images/task_tab/016-pdf.png")),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'Banner details.pdf',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff485470)),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.file_download_outlined,
                                          color: Color(0xff99A7C7),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    thickness: 2,
                                    height: 2,
                                    color: Color(0xffC8D1E5),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 48,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        color: Color(0xffF1F4FB)),
                                    child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Not Started',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff485470)),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons
                                              .keyboard_arrow_down_outlined,
                                          color: Color(0xff99A7C7),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
