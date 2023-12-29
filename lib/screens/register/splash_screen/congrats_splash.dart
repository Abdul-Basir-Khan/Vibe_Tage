import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:vibe_tag/bottom_bar/bottom_app_bar/bottom_navigation_app_bar.dart';
import 'package:vibe_tag/screens/kid_landscap/select_gender_l.dart';

import '../reusabletext.dart';



class CongratsSplashScreen extends StatefulWidget {
  @override
  _CongratsSplashScreenState createState() => _CongratsSplashScreenState();
}

class _CongratsSplashScreenState extends State<CongratsSplashScreen> {
  @override
  void initState() {
    super.initState();

    // Add a delay before navigating to the main screen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BottomNavigationAppBar()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: LinearProgressBar(
                    maxSteps: 16,
                    minHeight: 10,
                    progressType: LinearProgressBar
                        .progressTypeLinear, // Use Linear progress
                    currentStep: 16,
                    progressColor: const Color(0xffFF9243),
                    backgroundColor: const Color(0xffF1F4FB),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "16/16",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            Spacer(),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Image(

                  image: AssetImage("Asset/icons/register/Group 27.png")),
            ),
            const SizedBox(
              height: 10,
            ),
            const   Center(
              child: ReusableText(
                title: "Congratulations!",
                color: Color(0xffFF9243),
                size: 24,
                weight: FontWeight.w700,
              ),
            ),
            const SizedBox
              (
              height: 10,
            ),
            const   Center(
              child: ReusableText(
                title: "Your profile has been approved successfully",
                color: Color(0xff7D8CAC),
                size: 14,
                weight: FontWeight.w600,
              ),
            ),
            const Spacer(),

          ],
        ),
      ),
    );
  }
}