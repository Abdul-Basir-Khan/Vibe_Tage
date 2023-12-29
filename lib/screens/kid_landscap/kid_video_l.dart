import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibe_tag/screens/kid_landscap/kid_last1_l.dart';
import '../register/reusabletext.dart';
import 'kid_video_1_l.dart';

class KidVideoL extends StatefulWidget {
  const KidVideoL({super.key});

  @override
  State<KidVideoL> createState() => _KidVideoLState();
}

class _KidVideoLState extends State<KidVideoL> {
  final List<String> tabPic = [
    'Asset/images/kids/image 128.png',
    'Asset/images/kids/image 130.png',
    'Asset/images/kids/image 131.png',
    'Asset/images/kids/image 132.png',
    'Asset/images/kids/image 135.png'
  ];

  final List<String> tabText = [
    'RECOMMENDED',
    'SHOWS',
    'EXPLORE',
    'MUSIC',
    'GAMING'
  ];

  int _currentIndex = 0;
  @override
  void initState() {
    super.initState();

    // Lock the screen orientation to landscape
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined),
            color: Color(0xff7D8CAC),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Image(image: AssetImage("Asset/images/kids/logos.png")),
        ),
        body: ListView(
          physics: ScrollPhysics(),
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:List.generate(tabPic.length, (index) => InkWell(
                  onTap: () {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  child:
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                            height: 40,width: 40,
                            image: AssetImage(tabPic[index])),
                        const SizedBox(height: 10),
                        ReusableText(
                          title: tabText[index],
                          size: 12,
                          weight: FontWeight.w500,
                          color: _currentIndex == index
                              ? const Color(0xffE00B1B)
                              : Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),)
            ),
            _currentIndex == 0
                ? KidLast1L()
                : Container(),
          ],
        ),
      ),
    );
  }
}
