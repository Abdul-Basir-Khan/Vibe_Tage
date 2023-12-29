import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../register/reusabletext.dart';
import 'kid_channel_l.dart';

class KidVideoPlayScreen extends StatefulWidget {
  const KidVideoPlayScreen({super.key});

  @override
  State<KidVideoPlayScreen> createState() => _KidVideoPlayScreenState();
}

class _KidVideoPlayScreenState extends State<KidVideoPlayScreen> {
  @override
  void initState() {
    super.initState();

    // Lock the screen orientation to landscape
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    super.dispose();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  @override
  bool  _isVisible= false;


  bool showFirstAppBar = true;

  void toggleAppBar() {
    setState(() {
      showFirstAppBar = !showFirstAppBar;
    });
  }

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation == Orientation.portrait;
    var orientationL = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      body: GestureDetector(
        onTap: toggleAppBar,
        child: ListView(
          children: [
            Stack(children: [
              Image(
                  width: MediaQuery.sizeOf(context).width * 1,
                  height: MediaQuery.sizeOf(context).height * 1,
                  fit: BoxFit.cover,
                  image: const AssetImage("Asset/images/kids/Rectangle 24212.png")),
              Container(
                padding: const EdgeInsets.all(20),
                height: 79,
                width: MediaQuery.sizeOf(context).width * 1,
                color:
                    showFirstAppBar ? Colors.transparent : const Color(0xf30000000),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    showFirstAppBar
                        ? const Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.white,
                          )
                        : Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.arrow_back_outlined,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffFFDBBA)),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ReusableText(
                                        title: 'Mr. Bean',
                                        size: 16,
                                        weight: FontWeight.w700,
                                        color: Color(0xffFFFFFF),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      ReusableText(
                                        title: '200k Subscriber',
                                        size: 12,
                                        weight: FontWeight.w500,
                                        color: Color(0xffFFFFFF),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: orientationL?MediaQuery.sizeOf(context).width * 0.58:MediaQuery.sizeOf(context).width * 0.58,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    // _isVisible=!_isVisible;
                                    // showFirstAppBar=!showFirstAppBar;

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const KidChannelL()));

                                  });
                                },
                                child:

                                Container(
                                  width: 101,
                                  height: 39,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      gradient: const LinearGradient(colors: [
                                        Color(0xffFFC107),
                                        Color(0xffFF8205),
                                      ])),
                                  child: const Center(
                                    child: ReusableText(
                                      title: 'Follow',
                                      size: 16,
                                      weight: FontWeight.w700,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Visibility(
                    visible: _isVisible,
                    child: Container(
                      color: const Color(0xf30000000),
                      width: 200,
                      height: MediaQuery.sizeOf(context).height*1,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,children: [
                        Text("Hiii")
                      ],
                      ),
                    )),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.90,
                  child: Container(
                    height: 55,
                    width: 55,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xf50000000)),
                    child: const Center(
                        child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
