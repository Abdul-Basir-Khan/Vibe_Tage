import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/setting/setting_about.dart';
import 'package:vibe_tag/screens/setting/setting_avatar.dart';
import 'package:vibe_tag/screens/setting/setting_general.dart';
import 'package:vibe_tag/screens/setting/setting_info.dart';
import 'package:vibe_tag/screens/setting/setting_manage.dart';
import 'package:vibe_tag/screens/setting/setting_notification.dart';
import 'package:vibe_tag/screens/setting/setting_password.dart';
import 'package:vibe_tag/screens/setting/setting_privacy.dart';
import 'package:vibe_tag/screens/setting/setting_socials.dart';
import 'package:vibe_tag/screens/setting/setting_widraw.dart';

import '../register/reusabletext.dart';

class SettingMainPage extends StatefulWidget {
  const SettingMainPage({super.key});

  @override
  State<SettingMainPage> createState() => _SettingMainPageState();
}

class _SettingMainPageState extends State<SettingMainPage> {
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
          title: 'Settings',
          size: 16,
          weight: FontWeight.w700,
          color: Color(0xff363D4C),
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [

            const SizedBox(height: 20,),
            SizedBox(
              height: 52,
              child: TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)
                        )
                    ),
                    prefixIcon: const Image(image: AssetImage("Asset/icons/chat_update/Search-4.png"),),
                    hintText: "Search",

                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(26),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)))),
              ),
            ),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SettingGeneral()));
              },
              child: const ReusableText(
                title: 'General',
                size: 16,
                weight: FontWeight.w500,
                color: Color(0xff485470),
              ),
            ),
            const SizedBox(height: 20,),
            const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SettingAbout()));
              },
              child: const ReusableText(
                title: 'Profile',
                size: 16,
                weight: FontWeight.w500,
                color: Color(0xff485470),
              ),
            ),
            const SizedBox(height: 20,),
            const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const PrivacySetting()));
              },
              child: const ReusableText(
                title: 'Privacy',
                size: 15,
                weight: FontWeight.w500,
                color: Color(0xff485470),
              ),
            ),
            const SizedBox(height: 20,),
            const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const PasswordSettings()));
              },
              child: const ReusableText(
                title: 'Password',
                size: 15,
                weight: FontWeight.w500,
                color: Color(0xff485470),
              ),
            ),
            const SizedBox(height: 20,),
            const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SettingManage()));
              },
              child: const ReusableText(
                title: 'Manage Session',
                size: 15,
                weight: FontWeight.w500,
                color: Color(0xff485470),
              ),
            ),
            const SizedBox(height: 20,),
            const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SettingWithdraw()));
              },
              child: const ReusableText(
                title: 'Wallet',
                size: 15,
                weight: FontWeight.w500,
                color: Color(0xff485470),
              ),
            ),
            const SizedBox(height: 20,),
            const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SettingSocials()));
              },

              child: const ReusableText(
                title: 'Social',
                size: 15,
                weight: FontWeight.w500,
                color: Color(0xff485470),
              ),
            ),
            const SizedBox(height: 20,),
            const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SettingAvatar()));
              },

              child: const ReusableText(
                title: 'Avatar',
                size: 15,
                weight: FontWeight.w500,
                color: Color(0xff485470),
              ),
            ),
            const SizedBox(height: 20,),
            const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SettingNotification()));
              },
              child: const ReusableText(
                title: 'Notifications',
                size: 15,
                weight: FontWeight.w500,
                color: Color(0xff485470),
              ),
            ),
            const SizedBox(height: 20,),
            const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SettingInfoScreen()));
              },
              child: const ReusableText(
                title: 'Delete',
                size: 15,
                weight: FontWeight.w500,
                color: Color(0xff485470),
              ),
            ),
            const SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
