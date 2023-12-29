import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibe_tag/screens/kid_landscap/select_gender_l.dart';



class SplashScreenL extends StatefulWidget {
  @override
  _SplashScreenLState createState() => _SplashScreenLState();
}

class _SplashScreenLState extends State<SplashScreenL> {
  @override
  void initState() {
    super.initState();

    // Lock the screen orientation to landscape
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);


    // Add a delay before navigating to the main screen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SelectgenderL()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Center(
        child:


          Image(
image: AssetImage("Asset/images/kids/Group 1000004248.png"),

        ),
      ),
    );
  }
}