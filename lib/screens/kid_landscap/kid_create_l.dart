import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibe_tag/screens/forum_design/custom_textfield.dart';

import '../register/reusabletext.dart';
import 'kid_prefrence_l.dart';

class KidcreateL extends StatefulWidget {
  const KidcreateL({super.key});

  @override
  State<KidcreateL> createState() => _KidcreateLState();
}

class _KidcreateLState extends State<KidcreateL> {
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
  final List<String> cPic = [
    'Asset/images/kids/Group 1000004258.png',
    'Asset/images/kids/Group 1000004259.png',
    'Asset/images/kids/Group 1000004260.png',
    'Asset/images/kids/Group 1000004261.png',
    'Asset/images/kids/Group 1000004262.png',
    'Asset/images/kids/Group 1000004263.png',
    'Asset/images/kids/Group 1000004264.png',
    'Asset/images/kids/Group 1000004265.png'
  ];
  int _currentIndex = 0;
  CarouselController carouselController = CarouselController();


  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:
            const Icon(Icons.arrow_back_outlined, color: Color(0xff212121)),
        title: const Image(image: AssetImage("Asset/images/kids/Vector.png")),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            const Divider(
              thickness: 3,
              height: 3,
              color: Color(0xffF1F4FB),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                const ReusableText(
                  title: 'Create your kid’s profile',
                  size: 20,
                  weight: FontWeight.w700,
                  color: Color(0xff212121),
                ),
                const SizedBox(height: 20),
                CarouselSlider(
                  items: List.generate(cPic.length, (index){
                    return Container(
                      padding:  const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: _currentIndex == index
                                  ? const Color(0xffFF9200)
                                  : Colors.transparent)),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        child: CircleAvatar(
                          radius: _currentIndex == index ? 50 : 30,
                          backgroundImage:
                          AssetImage(cPic[index]),
                        ),
                      ),
                    );
                  }),
                  options: CarouselOptions(
                    viewportFraction: 0.2,
                    height: 100,
                    onPageChanged: (index, a){
                      _currentIndex = index;
                      setState(() {

                      });
                    }
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Color(0xffFF9200))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                    hintStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff212121)),
                    suffixIcon: const Icon(
                      Icons.person,
                      color: Color(0xffC8D1E5),
                    ),
                    filled: true,
                    fillColor: const Color(0xffFFFFFF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xffC8D1E5)),
                    ),
                    hintText: 'James',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Color(0xffFF9200))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                    hintStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffC8D1E5)),
                    suffixIcon: const Icon(
                      Icons.calendar_month,
                      color: Color(0xffC8D1E5),
                    ),
                    filled: true,
                    fillColor: const Color(0xffFFFFFF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xffC8D1E5)),
                    ),
                    hintText: 'Birthday',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            const SizedBox(
              height:30,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const KidPrefrenceL()));
                });
              },
              child: Container(
                width: screenWidth * 0.6,
                height: 57,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xffFF9200),
                ),
                child: const Center(
                  child: ReusableText(
                    title: 'Continue',
                    size: 20,
                    weight: FontWeight.w700,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height:10,
            ),
          ],
        ),
      ),
    );
  }
}
