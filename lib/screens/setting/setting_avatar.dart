import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../register/reusabletext.dart';


class SettingAvatar extends StatefulWidget {
  const SettingAvatar({super.key});

  @override
  State<SettingAvatar> createState() => _SettingAvatarState();
}

class _SettingAvatarState extends State<SettingAvatar> {
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
          title: 'Avatar',
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
      backgroundColor: Color(0xffFFFFFF),

      body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,children: [
        Divider(thickness: 2,height: 2,color: Color(0xffF1F4FB),),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                    title: 'Cover Image',
                    size: 16,
                    weight: FontWeight.w700,
                    color: Color(0xff212121),
                  ),
                  SizedBox(height: 7,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        title: 'Use Ratio of 12:9.',
                        size: 12,
                        weight: FontWeight.w500,
                        color: Color(0xff485470),
                      ),
                      SizedBox(width: 10,),
                      ReusableText(
                        title: 'Learn more',
                        size: 14,
                        weight: FontWeight.w400,
                        color: Color(0xff0085FF),
                      ),

                    ],
                  ),
                ],
              ),
            Spacer(),
            DottedBorder(
              color: const Color(0xffC8D1E5),
              borderType: BorderType.RRect,
              strokeWidth: 2,
              radius: const Radius.circular(12),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Container(
                  width: 120,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xffF1F4FB),
                  ),
                  child:    const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.camera_alt_rounded,color: Color(0xff99A7C7),),
                      SizedBox(width: 10,),
                      ReusableText(
                        title: 'Upload Cover',
                        size: 10,
                        weight: FontWeight.w600,
                        color: Color(0xff485470),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
          ),
        ),
        SizedBox(height: 10,),
        Image(
            width: MediaQuery.sizeOf(context).width*1,
            fit: BoxFit.cover,
            image: AssetImage("Asset/images/setting/B3.png")),
        SizedBox(height: 20,),
        Divider(thickness: 4,height: 4,color: Color(0xffF8F9FB),),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                  title: 'Cover Image',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff212121),
                ),
                SizedBox(height: 7,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      title: 'Use Ratio of 12:9.',
                      size: 12,
                      weight: FontWeight.w500,
                      color: Color(0xff485470),
                    ),
                    SizedBox(width: 10,),
                    ReusableText(
                      title: 'Learn more',
                      size: 14,
                      weight: FontWeight.w400,
                      color: Color(0xff0085FF),
                    ),

                  ],
                ),
              ],
            ),
            Spacer(),
            DottedBorder(
              color: const Color(0xffC8D1E5),
              borderType: BorderType.RRect,
              strokeWidth: 2,
              radius: const Radius.circular(12),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Container(
                  width: 120,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xffF1F4FB),
                  ),
                  child:    const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.camera_alt_rounded,color: Color(0xff99A7C7),),
                      SizedBox(width: 10,),
                      ReusableText(
                        title: 'Upload Cover',
                        size: 10,
                        weight: FontWeight.w600,
                        color: Color(0xff485470),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
          ),
        ),
        SizedBox(height: 20,),
        Center(child: Image(image: AssetImage("Asset/images/setting/Girls1.png")))





    ],
    ),);
  }
}
