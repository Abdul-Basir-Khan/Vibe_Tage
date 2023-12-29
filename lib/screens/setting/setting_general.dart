import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/forum_design/custom_textfield.dart';

import '../register/reusabletext.dart';


class SettingGeneral extends StatefulWidget {
  const SettingGeneral({super.key});

  @override
  State<SettingGeneral> createState() => _SettingGeneralState();
}

class _SettingGeneralState extends State<SettingGeneral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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


                  child: DottedBorder(
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
                        child:   const Row(
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
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,children: [
              const ReusableText(
                title: 'Username',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'gwen_stacy9',
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Phone',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
                 TextField(

      decoration: InputDecoration(
        prefixIcon: const Row(
        
          children: [
            SizedBox(width: 10,),
            Image(image: AssetImage("Asset/images/setting/flag.png")),
            SizedBox(width: 10,),
            SizedBox(height: 40,
            child: VerticalDivider(thickness: 3,width: 3,color: Color(0xffC8D1E5),),),
            SizedBox(width: 20,),
            ReusableText(
              title: '+41 395 65700',
              size: 15,
              weight: FontWeight.w600,
              color: Color(0xff485470),
            ),

            
          ],
        ),

        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
                color: Color(0xffC8D1E5))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
                color: Color(0xffC8D1E5))),


        filled: true,
        fillColor: const Color(0xffFFFFFF),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide:
          const BorderSide(color: Color(0xffC8D1E5)),
        ),

      ),
    ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Location',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'Select',
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Email',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'examplemail22@mail.com',
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Birthday',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: '03-02-2023',
                sufixIcon: Icon(Icons.calendar_month,color: Color(0xff7D8CAC),),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Gender',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'Select',
                sufixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff7D8CAC),),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Height',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'Select',
                sufixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff7D8CAC),),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Body Type',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'Select',
                sufixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff7D8CAC),),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Hair Color',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'Select',
                sufixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff7D8CAC),),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Eye Color',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'Select',
                sufixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff7D8CAC),),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Religion',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'Select',
                sufixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff7D8CAC),),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Ethnicity',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'Select',
                sufixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff7D8CAC),),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Education',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'Select',
                sufixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff7D8CAC),),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Smoke',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'Select',
                sufixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff7D8CAC),),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Pets',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'Select',
                sufixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff7D8CAC),),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Kids',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff485470),
                hintText: 'Select',
                sufixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff7D8CAC),),
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



