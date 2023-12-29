import 'package:flutter/material.dart';

class ChatMovement extends StatefulWidget {
  const ChatMovement({super.key});

  @override
  State<ChatMovement> createState() => _ChatMovementState();
}

class _ChatMovementState extends State<ChatMovement> {
  final List imgList = [
    'Asset/images/chat_movement/Group 1000003735 (1).png',
    'Asset/images/chat_movement/Group 1000003735 (3).png',
    'Asset/images/chat_movement/Group 1000003735 (4).png',
    'Asset/images/chat_movement/Group 1000003737.png',
    'Asset/images/chat_movement/Group 1000003735 (3).png',
    'Asset/images/chat_movement/Group 1000003735 (1).png',
  ];
  final List imgList1 = [
    'Asset/images/chat_movement/Rectangle 24083.png',
    'Asset/images/chat_movement/Rectangle 24083 (1).png',
    'Asset/images/chat_movement/Rectangle 24083 (2).png',
    'Asset/images/chat_movement/Rectangle 24083 (3).png',
    'Asset/images/chat_movement/Rectangle 24083 (2).png',
    'Asset/images/chat_movement/Rectangle 24083.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffF1F4FB),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffF1F4FB),
        leading: const Icon(
          Icons.arrow_back,
          color: Color(0xff212121),
        ),
        title: const Text(
          "Moments",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xff000000),
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: const Icon(
              Icons.search,
              color: Color(0xff7D8CAC),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: const Icon(
              Icons.more_horiz,
              color: Color(0xff7D8CAC),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffC8D1E5)),
                  ),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                            "Asset/images/chat_movement/Group 1000003735.png"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff485470),
                            ),
                          ),
                          Text(
                            "Add your new story",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff99A7C7),
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(colors: [
                              Color(0xffFFC107),
                              Color(0xffFF9200),
                            ])),
                        child: const Text(
                          "Create",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: imgList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 20 / 28.3),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: const Color(0xffC8D1E5)),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage(imgList[index].toString()),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Mark J.",
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff485470),
                                      ),
                                    ),
                                    Text(
                                      "12 hrs ago",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff99A7C7),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Image(
                              fit: BoxFit.fitHeight,
                              image: AssetImage(imgList1[index].toString()))
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
