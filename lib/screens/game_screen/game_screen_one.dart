import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';

import '../order_email/happy_birthday.dart';
import 'game_screen.dart';

class GameScreenOne extends StatefulWidget {
  const GameScreenOne({super.key});

  @override
  State<GameScreenOne> createState() => _GameScreenOneState();
}

class _GameScreenOneState extends State<GameScreenOne> {
  PageController controller = PageController();

  final List<String> imageList = [
    'Asset/images/Rectangle 24053.png',
    'Asset/images/Rectangle 24053 (1).png',
    'Asset/images/Rectangle 24053 (2).png',
    'Asset/images/Rectangle 24053 (3).png',
    'Asset/images/Rectangle 24053 (4).png',
    'Asset/images/Rectangle 24053 (5).png',
    'Asset/images/Rectangle 24053 (6).png',
    'Asset/images/Rectangle 24053 (7).png',
  ];
  final List<String> bottomImageList = [
    'Asset/images/Ellipse 885.png',
    'Asset/images/Ellipse 885 (1).png',
    'Asset/images/Ellipse 885 (2).png',
    'Asset/images/Ellipse 885 (3).png',
    'Asset/images/Ellipse 885 (4).png',
    'Asset/images/Ellipse 885 (5).png',
    'Asset/images/Ellipse 885 (6).png',
    'Asset/images/Ellipse 885 (7).png'
  ];
  int _currentIndex = 0;
  bool _isVisible = false;
  bool _isVisible1 = false;
  bool _isVisible2 = false;
  bool _isVisible3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Image(
            height: 239,
            width: MediaQuery.sizeOf(context).width * 1,
            fit: BoxFit.cover,
            image: const AssetImage("Asset/images/Rectangle 24046.png"),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                  width: MediaQuery.sizeOf(context).width * 1,
                  child: PageIndicatorContainer(
                    child: PageView(
                      children: <Widget>[
                        const Text(""),
                        const Text(''),
                        const Text(''),
                        const Text(''),
                      ],
                      controller: controller,
                    ),
                    align: IndicatorAlign.bottom,
                    length: 4,
                    indicatorSpace: 20.0,
                    padding: const EdgeInsets.all(10),
                    indicatorColor: const Color(0xffC8D1E5),
                    indicatorSelectorColor: const Color(0xffFF9200),
                    shape: IndicatorShape.circle(size: 12),
                    // shape: IndicatorShape.roundRectangleShape(size: Size.square(12),cornerSize: Size.square(3)),
                    // shape: IndicatorShape.oval(size: Size(12, 8)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 239,
                  width: MediaQuery.sizeOf(context).width * 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffF1F4FB),
                      border: Border.all(color: const Color(0xffF8F9FB))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // here no 2
                      const Image(
                          image: AssetImage("Asset/images/tennis 1.png")),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Play with Friends",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 17),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function()) setState) {
                                  return Wrap(
                                    clipBehavior: Clip.antiAlias,
                                    children: [
                                      Container(
                                        height: MediaQuery.sizeOf(context)
                                            .height *
                                            0.92,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(20)),
                                        padding: const EdgeInsets.all(16.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          physics: ScrollPhysics(),
                                          child: Column(
                                            children: <Widget>[
                                              Row(
                                                children: [
                                                  const Icon(Icons.arrow_back),
                                                  SizedBox(
                                                    width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                        0.3,
                                                  ),
                                                  const Text(
                                                    'Invite Friends',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w600),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              const Divider(
                                                indent: 5,
                                                endIndent: 5,
                                                thickness: 1,
                                                color: Color(0xffC8D1E5),
                                              ),
                                              Container(
                                                height: 54,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color: const Color(0xffF1F4FB),
                                                    borderRadius:
                                                    BorderRadius.circular(10)),
                                                child: TextFormField(
                                                  decoration: const InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: 'Search friends',
                                                      prefixIcon: Icon(Icons.search)),
                                                ),
                                              ),
                                              ListView.builder(
                                                shrinkWrap: true,
                                                physics: NeverScrollableScrollPhysics(),
                                                itemCount: bottomImageList.length,
                                                itemBuilder: (BuildContext context,
                                                    int index) {
                                                  return Padding(
                                                    padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 30,
                                                          backgroundImage: AssetImage(
                                                              bottomImageList[index]
                                                                  .toString()),
                                                        ),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        const Text(
                                                          'Mark Joiy',
                                                          style: TextStyle(
                                                              fontWeight:
                                                              FontWeight.bold,
                                                              fontSize: 16),
                                                        ),
                                                        const Spacer(),
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                              border: Border.all(
                                                                  color: const Color(
                                                                      0xff7D8CAC))),
                                                          child: const Padding(
                                                            padding:
                                                            EdgeInsets.symmetric(
                                                                horizontal: 20,
                                                                vertical: 10),
                                                            child: Text('Invite'),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          );
                        },
                        child: Container(
                          height: 51,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          padding: const EdgeInsets.all(10),
                          width: MediaQuery.sizeOf(context).width * 1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff485470),
                          ),
                          child: const Center(
                            child: Text(
                              "Invite Friends",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Color(0xffFFFFFF)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Categories:",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color(0xff485470)),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 39,
                          padding: const EdgeInsets.all(10),
                          width: MediaQuery.sizeOf(context).width * 0.46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: const Color(0xffF1F4FB),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "All Games",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xff485470)),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.play_arrow,
                                color: Color(0xff7D8CAC),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sort by:",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: Color(0xff485470)),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 39,
                          padding: const EdgeInsets.all(10),
                          width: MediaQuery.sizeOf(context).width * 0.46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            color: const Color(0xffF1F4FB),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Recommended",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xff485470)),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.play_arrow,
                                color: Color(0xff7D8CAC),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),

                // here
                GridView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const ScrollPhysics(),
                  itemCount: imageList.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GameScreen()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: MediaQuery.sizeOf(context).width * 0.46,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: const Color(0xffF1F4FB),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image(
                                image: AssetImage(imageList[index].toString())),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                    image: AssetImage(
                                        "Asset/images/Heart-3.png")),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "238 Reacts",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11,
                                      color: Color(0xff485470)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                    image:
                                        AssetImage("Asset/images/Game-3.png")),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Sports",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 11,
                                      color: Color(0xff485470)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}






