import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../register/reusabletext.dart';
import 'kid_channel_l.dart';

class KidVideo1L extends StatefulWidget {
  const KidVideo1L({super.key});

  @override
  State<KidVideo1L> createState() => _KidVideo1LState();
}

class _KidVideo1LState extends State<KidVideo1L> {
  final List<String> crtnPic = [
    'Asset/images/kids/Group 1000004278.png',
    'Asset/images/kids/Group 1000004282.png',
    'Asset/images/kids/Group 1000004279.png',
  ];

  final List<String> mPic = [
    'Asset/images/kids/0.png',
    'Asset/images/kids/1.png',
    'Asset/images/kids/2.png',
    'Asset/images/kids/3.png',
  ];

  int _currentIndex = 1;
  @override
  void initState() {
    super.initState();

    // Lock the screen orientation to landscape
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  }



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.80,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const SizedBox(height: 10,),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 1,
              child: ListView.builder(
                itemCount: crtnPic.length,
                scrollDirection: Axis.horizontal,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.all(4),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                          child: Image(
                            height: _currentIndex == index
                                ? MediaQuery.of(context).size.height * 0.25
                                : MediaQuery.of(context).size.height * 0.20,
                            image: AssetImage(crtnPic[index]),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10,),
            const Center(
              child: ReusableText(
                title: 'More for you',
                size: 25,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
            ),
            const SizedBox(height: 10,),
            buildVideoContainer(context),
            const SizedBox(height: 10,),
            const Divider(thickness: 2, height: 2, color: Color(0xffF1F4FB)),
            const SizedBox(height: 10,),
            buildVideoContainer(context),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }

  InkWell buildVideoContainer(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const KidChannelL()));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image(
                  width: MediaQuery.of(context).size.width * 1,
                  fit: BoxFit.cover,
                  image: const AssetImage("Asset/images/kids/Kid last .png"),
                ),
                Positioned(
                  bottom: 10,
                  right: 0,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.only(top: 2, right: 8, bottom: 2, left: 8),
                    height: 18,
                    width: 42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xf25000000),
                    ),
                    child: const Center(
                      child: ReusableText(
                        title: '12:03',
                        size: 10,
                        weight: FontWeight.w600,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            const Row(
              children: [
                ReusableText(
                  title: 'Tom & Jerry | Tom & Jerry in Full Screen\nClassic Cartoon Compilation...',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff212121),
                ),
                Spacer(),
                Icon(Icons.more_vert, color: Color(0xffC8D1E5), size: 35),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
