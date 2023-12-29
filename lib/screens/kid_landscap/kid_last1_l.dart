import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibe_tag/screens/setting/setting_main_page.dart';

import '../register/reusabletext.dart';
import 'kid_play_video.dart';

class KidLast1L extends StatefulWidget {
  const KidLast1L({super.key});

  @override
  State<KidLast1L> createState() => _KidLast1LState();
}

class _KidLast1LState extends State<KidLast1L> {
  final List<String> crtnPic = [
    'Asset/images/kids/Group 1000004278.png',
    'Asset/images/kids/Group 1000004279.png',
    'Asset/images/kids/Group 1000004282.png',
  ];

  final List<String> mPic = [
    'Asset/images/kids/0.png',

    'Asset/images/kids/2.png',
    'Asset/images/kids/1.png',
    'Asset/images/kids/3.png',
  ];

  int _currentIndex = 0;
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
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: isPortrait ? screenHeight * 0.78 : screenHeight * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            const SizedBox(height: 10),
            SizedBox(
              height: isPortrait
                  ? screenHeight * 0.25
                  : screenHeight * 0.2,
              width: screenWidth * 1,
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
                                ? isPortrait
                                ? screenHeight * 0.25
                                : screenHeight * 0.6
                                : isPortrait
                                ? screenHeight * 0.2
                                : screenHeight * 0.3,
                            image: AssetImage(crtnPic[index].toString()),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: ReusableText(
                title: 'More for you',
                size: 25,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: isPortrait
                  ? screenHeight * 0.53
                  : screenHeight * 0.45,
              child: GridView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: mPic.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: isPortrait ? 2 : 2,
                  childAspectRatio: isPortrait ? 1.49 :1.30,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const KidVideoPlayScreen()));
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width*0.49,
                      padding: const EdgeInsets.all(0),
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Image(
                            height: 194,
                            width: MediaQuery.sizeOf(context).width*0.49,
                              fit: BoxFit.fitWidth,
                              image: AssetImage(mPic[index].toString())),
                          const ListTile(
                            title: ReusableText(
                              title:
                              'Tom & Jerry | Tom & Jerry in Full Screen Classic Cartoon Compilation...',
                              size: 16,
                              weight: FontWeight.w600,
                              color: Color(0xff212121),
                            ),
                            trailing: Icon(
                              Icons.more_vert,
                              color: Color(0xffC8D1E5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

