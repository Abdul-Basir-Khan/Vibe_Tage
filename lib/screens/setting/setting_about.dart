import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../forum_design/custom_textfield.dart';
import '../register/reusabletext.dart';



class SettingAbout extends StatefulWidget {
  const SettingAbout({super.key});

  @override
  State<SettingAbout> createState() => _SettingAboutState();
}

class _SettingAboutState extends State<SettingAbout> {
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
          title: 'Profile Settings',
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
      
      body: ListView(
        children: [
          Container(
            height: 190,
            child:     Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*1,
                      child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage("Asset/images/setting/Rectangle 23850.png")),

                    ),
                  ],
                ),
                const Positioned(
                  right: 0,
                  top:-80,
                  left: 0,
                  child: Image(
                      image: AssetImage("Asset/images/setting/Rectangle 75.png")),
                ),
                Positioned(
                  right: 10,
                  top: 15,


                  child:

                  DottedBorder(
                    color: const Color(0xffC8D1E5),
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(12),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      child: Container(
                        width: 120,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xf20000000),
                        ),
                        child:    const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.camera_alt_rounded,color: Color(0xffFFFFFF),),
                            SizedBox(width: 10,),
                            ReusableText(
                              title: 'Upload Cover',
                              size: 10,
                              weight: FontWeight.w600,
                              color: Color(0xffFFFFFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 140,right: 152,
                    child: Container(
                      height: 30,width: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffF1F4FB)
                      ),
                      child: const Center(
                        child: Icon(Icons.camera_alt_rounded,color: Color(0xff99A7C7),),
                      ),
                    ))
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,children: [
              const ReusableText(
                title: 'First Name',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'Gwen',
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Last Name',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'Stacy',
              ),
              const SizedBox(height: 15,),

              const ReusableText(
                title: 'About',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              Container(

                width: MediaQuery.sizeOf(context).width*1,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: const Color(0xffC8D1E5),),
                  color: Colors.white
                ),
                child:   const ReusableText(
                  title: 'Lorem Ipsum is simply dummy text of\nthe printing and typesetting industry.\nLorem Ipsum has been the industry\'s\nstandard dummy text ever since the\n1500s, when an unknown printer took a\ngalley of type and scrambled it to make\na type specimen book.',
                  size: 16,
                  weight: FontWeight.w600,
                  color: Color(0xff485470),
                ),
              ),
              const SizedBox(height: 15,),


              const ReusableText(
                title: 'School',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'Select',
                sufixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff99A7C7),),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Working at',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'Select',
                sufixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff99A7C7),),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Website',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'Select',
                sufixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff99A7C7),),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Relationship',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'Select',
                sufixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff99A7C7),),
              ),
              const SizedBox(height: 15,),


            ],
            ),
          ),

        ],
      ),
    );
  }
}
