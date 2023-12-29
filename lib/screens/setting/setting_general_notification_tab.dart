import 'package:flutter/material.dart';

import '../register/reusabletext.dart';

class SettingGeneralNotificationTab extends StatefulWidget {
  const SettingGeneralNotificationTab({super.key});

  @override
  State<SettingGeneralNotificationTab> createState() => _SettingGeneralNotificationTabState();
}

class _SettingGeneralNotificationTabState extends State<SettingGeneralNotificationTab> {

  bool  _switchValue =false;
  bool  _switchValue1=false;
  bool  _switchValue2 =false;
  bool  _switchValue3 =false;
  bool  _switchValue4 =false;
  bool  _switchValue5 =false;
  bool  _switchValue6 =false;
  bool  _switchValue7 =false;
  bool  _switchValue8 =false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 15,),
        const ReusableText(
          title: 'Notify me when',
          size: 18,
          weight: FontWeight.w700,
          color: Color(0xff485470),
        ),
        const SizedBox(height: 15,),
        Container(
          height: 48,
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
                size: 15,
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
                inactiveTrackColor: const Color(0xFFC8D1E5),  // Border color
              ),
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          height: 48,
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
                size: 15,
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
                inactiveTrackColor: const Color(0xFFC8D1E5), // Border color
              ),
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          height: 48,
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
                title: 'Someone followed me',
                size: 15,
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
                inactiveTrackColor: const Color(0xFFC8D1E5), // Border color
              ),
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          height: 48,
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
                title: 'Someone visited my profile',
                size: 15,
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
                  inactiveTrackColor: const Color(0xFFC8D1E5),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          height: 48,
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
                title: 'Someone mentioned me',
                size: 15,
                weight: FontWeight.w600,
                color: Color(0xff212121),
              ),
              const Spacer(),
              Switch(
                value: _switchValue4,
                onChanged: (value) {
                  setState(() {
                    _switchValue4 = value;
                  });
                },
                activeColor: const Color(0xffFFFFFF), // Active color
                activeTrackColor: const Color(0xFFFFC007), // Head color
                inactiveThumbColor: const Color(0xFFFFFFFF), // Unactive color
                inactiveTrackColor: const Color(0xFFC8D1E5),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          height: 48,
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
                title: 'Someone joined my groups',
                size: 15,
                weight: FontWeight.w600,
                color: Color(0xff212121),
              ),
              const Spacer(),
              Switch(
                value: _switchValue5,
                onChanged: (value) {
                  setState(() {
                    _switchValue5 = value;
                  });
                },
                activeColor: const Color(0xffFFFFFF), // Active color
                activeTrackColor: const Color(0xFFFFC007), // Head color
                inactiveThumbColor: const Color(0xFFFFFFFF), // Unactive color
                inactiveTrackColor: const Color(0xFFC8D1E5),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          height: 70,
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
                title: 'Someone accepted my friend/follow\nrequset',
                size: 15,
                weight: FontWeight.w600,
                color: Color(0xff212121),
              ),
              const Spacer(),
              Switch(
                value: _switchValue6,
                onChanged: (value) {
                  setState(() {
                    _switchValue6 = value;
                  });
                },
                activeColor: const Color(0xffFFFFFF), // Active color
                activeTrackColor: const Color(0xFFFFC007), // Head color
                inactiveThumbColor: const Color(0xFFFFFFFF), // Unactive color
                inactiveTrackColor: const Color(0xFFC8D1E5),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          height: 48,
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
                title: 'Someone posted on my timeline',
                size: 15,
                weight: FontWeight.w600,
                color: Color(0xff212121),
              ),
              const Spacer(),
              Switch(
                value: _switchValue7,
                onChanged: (value) {
                  setState(() {
                    _switchValue7 = value;
                  });
                },
                activeColor: const Color(0xffFFFFFF), // Active color
                activeTrackColor: const Color(0xFFFFC007), // Head color
                inactiveThumbColor: const Color(0xFFFFFFFF), // Unactive color
                inactiveTrackColor: const Color(0xFFC8D1E5),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          height: 48,
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
                title: 'Remind me memory',
                size: 15,
                weight: FontWeight.w600,
                color: Color(0xff212121),
              ),
              const Spacer(),
              Switch(
                value: _switchValue8,
                onChanged: (value) {
                  setState(() {
                    _switchValue8 = value;
                  });
                },
                activeColor: const Color(0xffFFFFFF), // Active color
                activeTrackColor: const Color(0xFFFFC007), // Head color
                inactiveThumbColor: const Color(0xFFFFFFFF), // Unactive color
                inactiveTrackColor: const Color(0xFFC8D1E5),
              ),
            ],
          ),
        ),


        const SizedBox(height: 15,),
      ],
    );
  }
}
