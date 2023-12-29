import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/setting/analytics.dart';

import '../register/reusabletext.dart';

class SocialSettingTwo extends StatefulWidget {
  const SocialSettingTwo({Key? key}) : super(key: key);

  @override
  State<SocialSettingTwo> createState() => _SocialSettingTwoState();
}

class _SocialSettingTwoState extends State<SocialSettingTwo> {
  bool _switchValue =false;
  bool _switchValue1 =false;
  bool _switchValue2=false;
  bool _switchValue3=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(

          children: [
            const SizedBox(height: 10,),
            Row(
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon:  const Icon(Icons.arrow_back_outlined,color: Color(0xff000000),),),               const Spacer(),
                const ReusableText(
                  title: 'Social Settings',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff363D4C),
                ),
                const Spacer(),
                InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Analytics(
                      )   ));
                    });
                  },
                  child: Container(
                    width: 56,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [
                              Color(0xffFDBA31),
                              Color(0xffFF9200),
                            ]
                        ),
                        borderRadius: BorderRadius.circular(26)
                    ),
                    child:const Center(
                      child:  ReusableText(
                        title: 'Save',
                        size: 14,
                        weight: FontWeight.w700,
                        color: Color(0xffFFFFFF),
                      ),
                    ) ,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
            Container(
              height: 52,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffC8D1E5),

                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFFFFFF)
              ),
              child: Row(
                children: [
                  const ReusableText(
                    title: 'Someone like my page',
                    size: 16,
                    weight: FontWeight.w600,
                    color: Color(0xff212121),
                  ),
                  const Spacer(),
                  Switch(
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                    activeColor: const Color(0xffFFFFFF), // Active color
                    activeTrackColor: const Color(0xFFFFC007), // Head color
                    inactiveThumbColor: const Color(0xFFFFFFFF), // Unactive color
                    inactiveTrackColor: const Color(0xFF000000), // Border color
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 52,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffC8D1E5),

                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFFFFFF)
              ),
              child: Row(
                children: [
                  const ReusableText(
                    title: 'Someone post on my page',
                    size: 16,
                    weight: FontWeight.w600,
                    color: Color(0xff212121),
                  ),
                  const Spacer(),
                  Switch(
                    value: _switchValue1,
                    onChanged: (value) {
                      setState(() {
                        _switchValue1 = value;
                      });
                    },
                    activeColor: const Color(0xffFFFFFF), // Active color
                    activeTrackColor: const Color(0xFFFFC007), // Head color
                    inactiveThumbColor: const Color(0xFFFFFFFF), // Unactive color
                    inactiveTrackColor: const Color(0xFF000000), // Border color
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 52,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffC8D1E5),

                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFFFFFF)
              ),
              child: Row(
                children: [
                  const ReusableText(
                    title: 'Someone commented on my posts',
                    size: 16,
                    weight: FontWeight.w600,
                    color: Color(0xff212121),
                  ),
                  const Spacer(),
                  Switch(
                    value: _switchValue2,
                    onChanged: (value) {
                      setState(() {
                        _switchValue2 = value;
                      });
                    },
                    activeColor: const Color(0xffFFFFFF), // Active color
                    activeTrackColor: const Color(0xFFFFC007), // Head color
                    inactiveThumbColor: const Color(0xFFFFFFFF), // Unactive color
                    inactiveTrackColor: const Color(0xFF000000), // Border color
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 52,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffC8D1E5),

                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffFFFFFF)
              ),
              child: Row(
                children: [
                  const ReusableText(
                    title: 'Someone shared on my posts',
                    size: 16,
                    weight: FontWeight.w600,
                    color: Color(0xff212121),
                  ),
                  const Spacer(),
                  Switch(
                    value: _switchValue3,
                    onChanged: (value) {
                      setState(() {
                        _switchValue3 = value;
                      });
                    },
                    activeColor: const Color(0xffFFFFFF), // Active color
                    activeTrackColor: const Color(0xFFFFC007), // Head color
                    inactiveThumbColor: const Color(0xFFFFFFFF), // Unactive color
                    inactiveTrackColor: const Color(0xFF000000), // Border color
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15,),
          ],
        ),
      ),
    ));
  }
}
