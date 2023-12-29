import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibe_tag/screens/kid_landscap/select_proceed_l.dart';

import '../register/reusabletext.dart';

class SelectgenderL extends StatefulWidget {
  const SelectgenderL({super.key});

  @override
  State<SelectgenderL> createState() => _SelectgenderLState();
}

class _SelectgenderLState extends State<SelectgenderL> {
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
    var orientation = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_outlined, color: Color(0xff212121)),
        title: const Image(image: AssetImage("Asset/images/kids/Vector.png")),
      ),
      body: Center(
        child: ListView(
          children: [
            const Divider(
              thickness: 3,
              height: 3,
              color: Color(0xffF1F4FB),
            ),

            const Center(
              child: ReusableText(
                title: 'Who are you?',
                size: 30,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
            ),
SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 3,
                        color: _currentIndex == 0
                            ? const Color(0xffFF9200)
                            : Colors.transparent,
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          const Image(
                            height: 105,
                            image: AssetImage("Asset/images/kids/son.png"),
                          ),
                          const SizedBox(height: 10),
                          ReusableText(
                            title: 'Kids',
                            size: 17,
                            weight: FontWeight.w700,
                            color: _currentIndex == 0
                                ? const Color(0xffFF9200)
                                : const Color(0xff212121),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                InkWell(
                  onTap: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  child: Container(


                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 3,
                        color: _currentIndex == 1
                            ? const Color(0xffFF9200)
                            : Colors.transparent,
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          const Image(
                            height: 105,
                            image: AssetImage("Asset/images/kids/parents.png"),
                          ),
                          const SizedBox(height: 10),
                          ReusableText(
                            title: 'Parents',
                            size: 17,
                            weight: FontWeight.w700,
                            color: _currentIndex == 1
                                ? const Color(0xffFF9200)
                                : const Color(0xff212121),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
           SizedBox(height: orientation? MediaQuery.sizeOf(context).height*0.60:MediaQuery.sizeOf(context).height*0.13,),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SelectProceedL()),
                );
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8, // Adjusted width
                height: 57,
                margin: EdgeInsets.symmetric(horizontal: 10),
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

          ],
        ),
      ),
    );
  }
}

