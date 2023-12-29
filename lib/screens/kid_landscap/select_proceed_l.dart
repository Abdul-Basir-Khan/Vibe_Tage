import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibe_tag/screens/forum_design/custom_textfield.dart';

import '../register/reusabletext.dart';
import 'kid_create_l.dart';

class SelectProceedL extends StatefulWidget {
  const SelectProceedL({super.key});

  @override
  State<SelectProceedL> createState() => _SelectProceedLState();
}

class _SelectProceedLState extends State<SelectProceedL> {
  @override
  void initState() {
    super.initState();

    // Lock the screen orientation to landscape
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_outlined, color: Color(0xff212121)),
        title: const Image(image: AssetImage("Asset/images/kids/Vector.png")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const Divider(
              thickness: 3,
              height: 3,
              color: Color(0xffF1F4FB),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    const ReusableText(
                      title: 'Select how you would like\nto proceed',
                      size: 20,
                      weight: FontWeight.w700,
                      color: Color(0xff212121),
                      alignment: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 56,
                      width: MediaQuery.of(context).size.width * 0.90,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Container(
                            margin:
                            const EdgeInsets.symmetric(horizontal: 5),
                            height: 38,
                            width: 38,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffD9D9D9)),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Color(0xffC8D1E5))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Color(0xffC8D1E5))),
                          hintStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff485470)),
                          filled: true,
                          fillColor: const Color(0xffFFFFFF),
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Color(0xffC8D1E5)),
                          ),
                          hintText:
                          'Continue as mark_henry22',
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const KidcreateL()),
                        );
                      },
                      child: const ReusableText(
                        title: 'or',
                        size: 16,
                        weight: FontWeight.w600,
                        color: Color(0xff99A7C7),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 56,
                      width: MediaQuery.of(context).size.width * 0.90,
                      child: TextField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Color(0xffC8D1E5))),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.circular(30),
                              borderSide: const BorderSide(
                                  color: Color(0xffC8D1E5))),
                          hintStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff485470)),
                          filled: true,
                          fillColor: const Color(0xffFFFFFF),
                          border: OutlineInputBorder(
                            borderRadius:
                            BorderRadius.circular(30),
                            borderSide: const BorderSide(
                                color: Color(0xffC8D1E5)),
                          ),
                          hintText:
                          'Continue without Sign in',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
