import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../register/reusabletext.dart';


class GeneralSetting extends StatefulWidget {
  const GeneralSetting({Key? key}) : super(key: key);

  @override
  State<GeneralSetting> createState() => _GeneralSettingState();
}

class _GeneralSettingState extends State<GeneralSetting> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child:

          Row(
            children: [
              const Icon(Icons.arrow_back_outlined,color: Color(0xff000000),),
              const Spacer(),
              const ReusableText(
                title: 'General Settings',
                size: 16,
                weight: FontWeight.w700,
                color: Color(0xff363D4C),
              ),
              const Spacer(),
              Container(
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
              )
            ],
          ),
        ),
        const SizedBox(height: 10,),
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
                    image: AssetImage("Asset/images/setting/B1.png")),

              ),
            ],
          ),
          const Positioned(
            right: 0,
            top:-60,
            left: 0,
            child: Image(
                image: AssetImage("Asset/images/setting/B1S.png")),
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
                      color: const Color(0xffC8D1E5).withOpacity(0.6)
                  ),
                  child:  const Row(
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
              top: 150,right: 147,
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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ReusableText(
                title: 'Page name',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 15,),
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)
                        )
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff99A7C7)
                    ),
                    hintText: "Foxit Technology",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)))),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Category',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 15,),
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff99A7C7),),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)
                        )
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff99A7C7)
                    ),
                    hintText:"Select",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)))),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Page URL',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 15,),
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  prefixIcon: Container(
                    margin: const EdgeInsets.only(left: 3),
                    height: 53,width: 142,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffF8F9FB)
                  ),
                    child: const Center(
                      child:ReusableText(
                        title: 'Vibetag.com/',
                        size: 16,
                        weight: FontWeight.w500,
                        color: Color(0xff7D8CAC),
                      ),
                    ),
                  ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)
                        )
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff99A7C7)
                    ),
                    hintText: "  Foxit Technology",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)))),
              ),
              const SizedBox(height: 15,),
              const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
              const SizedBox(height: 15,),
              Row(
                children: [
                  const ReusableText(
                    title: 'Location',
                    size: 16,
                    weight: FontWeight.w700,
                    color: Color(0xff212121),
                  ),
                  const Spacer(),
                  Container(
                    width: 101,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xffC8D1E5)),
                      color: const Color(0xffF1F4FB)
                    ),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ReusableText(
                          title: 'Public',
                          size: 12,
                          weight: FontWeight.w600,
                          color: Color(0xff485470),
                        ),
                        SizedBox(width: 10,),
                        Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff99A7C7),),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Address',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 15,),
              TextField(
                maxLines: 3,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)
                        )
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff99A7C7)
                    ),
                    hintText: "Street no. 2 Austin Road, nearby\nWin Garden",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)))),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'City/Town',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 15,),
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)
                        )
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff99A7C7)
                    ),
                    hintText: "Canada",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)))),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Postal Code',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 15,),
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)
                        )
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff99A7C7)
                    ),
                    hintText: "19060",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)))),
              ),
              const SizedBox(height: 15,),
              const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
              const SizedBox(height: 15,),
              Row(
                children: [
                  const ReusableText(
                    title: 'Contact info',
                    size: 16,
                    weight: FontWeight.w700,
                    color: Color(0xff212121),
                  ),
                  const Spacer(),
                  Container(
                    width: 101,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xffC8D1E5)),
                        color: const Color(0xffF1F4FB)
                    ),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ReusableText(
                          title: 'Public',
                          size: 12,
                          weight: FontWeight.w600,
                          color: Color(0xff485470),
                        ),
                        SizedBox(width: 10,),
                        Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff99A7C7),),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Phone Number',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 15,),
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)
                        )
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff99A7C7)
                    ),
                    hintText: "+9444519060",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)))),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Email',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 15,),
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)
                        )
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff99A7C7)
                    ),
                    hintText: "Even6767@gmail.com",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)))),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Website Link',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              const SizedBox(height: 15,),
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)
                        )
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff99A7C7)
                    ),
                    hintText: "Website Address",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5)))),
              ),
              const SizedBox(height: 15,),
              const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
              const SizedBox(height: 15,),
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
                      title: 'Allow Review on page',
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
              const SizedBox(height: 10,)
            ],
          ),
        ),


      ],
    );
  }
}
