import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibe_tag/screens/kid_landscap/kid_video_1_l.dart';


import '../register/reusabletext.dart';
import 'kid_video_l.dart';

class KidPascodeL extends StatefulWidget {
  const KidPascodeL({super.key});

  @override
  State<KidPascodeL> createState() => _KidPascodeLState();
}

class _KidPascodeLState extends State<KidPascodeL> {
  @override
  Widget build(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    final screenWidth = MediaQuery.of(context).size.width;
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

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(Icons.arrow_back_outlined, color: Color(0xff212121)),
          title: const Image(image: AssetImage("Asset/images/kids/Vector.png")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Divider(
                thickness: 3,
                height: 3,
                color: Color(0xffF1F4FB),
              ),
              const SizedBox(height: 20,),
              const ReusableText(
                title: 'Create custom passcode',
                size: 20,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                width: screenWidth * 0.70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(4, (index) {
                    return Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: const Color(0xffC8D1E5)),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: ClipOval(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            height: 56,
                            width: 56,
                            child: const TextField(
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              obscuringCharacter: '*',
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const KidVideoL()));
                },
                child:

                Container(
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
}

