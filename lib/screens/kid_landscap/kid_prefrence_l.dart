import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '../register/reusabletext.dart';
import 'kid_pascod_l.dart';

class KidPrefrenceL extends StatefulWidget {
  const KidPrefrenceL({super.key});

  @override
  State<KidPrefrenceL> createState() => _KidPrefrenceLState();
}

class _KidPrefrenceLState extends State<KidPrefrenceL> {
  bool _isSwitchOn = false;
  bool _isSwitchOn1 = false;
  bool _isSwitchOn2 = false;
  bool _isSwitchOn3 = false;
  bool _isSwitchOn4 = false;
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
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading:
              const Icon(Icons.arrow_back_outlined, color: Color(0xff212121)),
          title: const Image(image: AssetImage("Asset/images/kids/Vector.png")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: [
              const Divider(
                thickness: 3,
                height: 3,
                color: Color(0xffF1F4FB),
              ),
              const SizedBox(
                height: 20,
              ),
              const ReusableText(
                title: 'Preferences for James',
                size: 22,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
              const SizedBox(
                height: 20,
              ),
              buildSwitchOption('Timer', _isSwitchOn,
                  (newValue) => setState(() => _isSwitchOn = newValue)),
              const SizedBox(
                height: 20,
              ),
              buildSwitchOption('Enable Search', _isSwitchOn1,
                  (newValue) => setState(() => _isSwitchOn1 = newValue)),
              const SizedBox(
                height: 20,
              ),
              buildSwitchOption('Auto-play', _isSwitchOn2,
                  (newValue) => setState(() => _isSwitchOn2 = newValue)),
              const SizedBox(
                height: 20,
              ),
              buildSwitchOption('Pause Watch History', _isSwitchOn3,
                  (newValue) => setState(() => _isSwitchOn3 = newValue)),
              const SizedBox(
                height: 20,
              ),
              buildSwitchOption('Pause Search History', _isSwitchOn4,
                  (newValue) => setState(() => _isSwitchOn4 = newValue)),
              SizedBox(
                height:isPortrait? MediaQuery.sizeOf(context).height * 0.50:MediaQuery.sizeOf(context).height * 0.18,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const KidPascodeL()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 1,
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

            ],
          ),
        ),
      ),
    );
  }

  Widget buildSwitchOption(String title, bool value, Function(bool) onChanged) {
    return


      Container(
      height: 56,
      width: MediaQuery.of(context).size.width * 0.80,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: const Color(0xffC8D1E5)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ReusableText(
            title: title,
            size: 18,
            weight: FontWeight.w600,
            color: Color(0xff212121),
          ),
          Spacer(),
          Switch(
            value: value,
            onChanged: onChanged,
            activeTrackColor: const Color(0xFFFF9200), // Filled color
            activeColor: const Color(0xffFFFFFF), // Filled color
            inactiveTrackColor: const Color(0xFFC8D1E5), // Unfilled color
          ),
        ],
      ),
    );
  }
}