import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/setting/general_setting.dart';
import 'package:vibe_tag/screens/setting/my_page.dart';
import 'package:vibe_tag/screens/setting/privacy_setting1.dart';

import '../register/reusabletext.dart';


class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xffF1F4FB),
      body: ListView(
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    _currentIndex=0;
                  });

                },
                child: Container(
                  height: 38,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffFF9200)),
                    borderRadius: BorderRadius.circular(10),
                    gradient:
                    _currentIndex==0?
                    LinearGradient(
                      colors: [
                        Color(0xffFDBA31),
                        Color(0xffFF9200),
                      ]
                    ):LinearGradient(
                        colors: [
                          Color(0xffFFFFFF),
                          Color(0xffFFFFFF),
                        ]
                    ),

                  ),
                  child:  Center(
                    child: ReusableText(
                      title: 'My Page',
                      size: 14,
                      weight: FontWeight.w600,
                      color: _currentIndex==0?Color(0xffFFFFFF):Color(0xff485470),
                    ),
                  ),

                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){
                  setState(() {
                    _currentIndex=1;
                  });

                },
                child: Container(
                  height: 38,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffFF9200)),
                    borderRadius: BorderRadius.circular(10),
                    gradient:
                    _currentIndex==1?
                    LinearGradient(
                        colors: [
                          Color(0xffFDBA31),
                          Color(0xffFF9200),
                        ]
                    ):LinearGradient(
                        colors: [
                          Color(0xffFFFFFF),
                          Color(0xffFFFFFF),
                        ]
                    ),

                  ),
                  child:  Center(
                    child: ReusableText(
                      title: 'Suggested Pages',
                      size: 14,
                      weight: FontWeight.w600,
                      color: _currentIndex==1?Color(0xffFFFFFF):Color(0xff485470),
                    ),
                  ),

                ),
              ),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){
                  setState(() {
                    _currentIndex=2;
                  });

                },
                child: Container(
                  height: 38,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffFF9200)),
                    borderRadius: BorderRadius.circular(10),
                    gradient:
                    _currentIndex==2?
                    LinearGradient(
                        colors: [
                          Color(0xffFDBA31),
                          Color(0xffFF9200),
                        ]
                    ):LinearGradient(
                        colors: [
                          Color(0xffFFFFFF),
                          Color(0xffFFFFFF),
                        ]
                    ),

                  ),
                  child:  Center(
                    child: ReusableText(
                      title: 'Create',
                      size: 14,
                      weight: FontWeight.w600,
                      color: _currentIndex==2?Color(0xffFFFFFF):Color(0xff485470),
                    ),
                  ),

                ),
              ),
            ],
          ),
         _currentIndex==0?MyPage():_currentIndex==1?GeneralSetting():_currentIndex==2?PrivacySetting1():Container()
        ],
      ),));
  }
}
