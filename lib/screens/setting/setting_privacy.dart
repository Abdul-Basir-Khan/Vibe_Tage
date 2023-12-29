import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/setting/constant/custom_listtile.dart';

import '../register/reusabletext.dart';

class PrivacySetting extends StatefulWidget {
  const PrivacySetting({super.key});

  @override
  State<PrivacySetting> createState() => _PrivacySettingState();
}

class _PrivacySettingState extends State<PrivacySetting> {

  bool _isSwitchOn =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,leading:   IconButton(icon:const Icon(Icons.arrow_back_outlined,color: Color(0xff212121),),onPressed: (){
        Navigator.pop(context);
      },),
        title:const ReusableText(
          title: 'Privacy Settings',
          size: 16,
          weight: FontWeight.w700,
          color: Color(0xff363D4C),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            width: MediaQuery.sizeOf(context).width*0.15,height: MediaQuery.sizeOf(context).height*0.05,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),gradient: const LinearGradient(
                colors: [
                  Color(0xffFFC107),
                  Color(0xffFF9200)
                ]
            ),
            ),
            child: const Center(
              child:
              ReusableText(
                title: 'Save',
                size: 14,
                weight: FontWeight.w700,
                color: Color(0xffFFFFFF),
              ),
            ),
          )
        ],
      ),
      body:

      ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,children: [
              const ReusableText(
                title: 'Private Account',
                size: 16,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
              const Spacer(),
              Switch(
                value: _isSwitchOn,
                onChanged: (newValue) {
                  setState(() {
                    _isSwitchOn = newValue;
                  });
                },
                activeTrackColor: const Color(0xFFFF9200), // Filled color
                activeColor: const Color(0xffFFFFFF), // Filled color
                inactiveTrackColor: const Color(0xFFC8D1E5), // Unfilled color
              )
            ],
            ),
          ),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTile(text1: 'Who can Follow me?', text2: 'Everyone'),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTile(text1: 'Who can message me?', text2: 'Everyone'),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTile(text1: 'Who can see my friends?', text2: 'Everyone'),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTile(text1: 'Who can post in my timeline', text2: 'Everyone'),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTile(text1: 'Who can see my birthday?', text2: 'Everyone'),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTile(text1: 'Confirm Request when someone follow me?', text2: 'Everyone'),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTile(text1: 'Show my activities?', text2: 'Everyone'),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTile(text1: 'Status', text2: 'Everyone'),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTile(text1: 'Share my location with public?', text2: 'Everyone'),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTile(text1: 'Allow search engine to index my profile and\nposts?', text2: 'Everyone'),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTile(text1: 'Hide profile form explore page', text2: 'Everyone'),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTile(text1: 'Allow friends to tag me in posts', text2: 'Everyone'),










        ],
      ),
    );
  }
}
