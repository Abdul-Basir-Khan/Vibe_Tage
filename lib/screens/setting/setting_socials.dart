import 'package:flutter/material.dart';

import '../register/reusabletext.dart';


class SettingSocials extends StatefulWidget {
  const SettingSocials({super.key});

  @override
  State<SettingSocials> createState() => _SettingSocialsState();
}

class _SettingSocialsState extends State<SettingSocials> {
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
          title: 'Social',
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
      body:ListView(
        children:

      [
        const Divider(thickness: 2,height: 2,color: Color(0xffF1F4FB),),
        const SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ReusableText(
                title: 'Facebook',
                size: 16,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
              const SizedBox(height: 15,),
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    prefixIcon: const Image(image: AssetImage("Asset/icons/settings/facebook.png"),),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)
                        )
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff485470)
                    ),
                    hintText: " https://www.facebook.com/topm...",
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
                title: 'Twitter',
                size: 16,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
              const SizedBox(height: 15,),
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    prefixIcon: const Image(image: AssetImage("Asset/icons/settings/twitter.png"),),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)
                        )
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff485470)
                    ),
                    hintText: " https://www.twitter.com/topmov...",
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
                title: 'Instagram',
                size: 16,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
              const SizedBox(height: 15,),
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    prefixIcon: const Image(image: AssetImage("Asset/icons/settings/instagram.png"),),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)
                        )
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff485470)
                    ),
                    hintText: " https://www.instagram.com/top...",
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
                title: 'Discord',
                size: 16,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
              const SizedBox(height: 15,),
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    prefixIcon: const Image(image: AssetImage("Asset/icons/settings/discord.png"),),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)
                        )
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff485470)
                    ),
                    hintText: " https://www.discord.com//topm...",
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
                title: 'Linkedin',
                size: 16,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
              const SizedBox(height: 15,),
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    prefixIcon: const Image(image: AssetImage("Asset/icons/settings/linkedin.png"),),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)
                        )
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff485470)
                    ),
                    hintText: " https://www.linkedin.com//topm...",
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
                title: 'YouTube',
                size: 16,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
              const SizedBox(height: 15,),
              TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    prefixIcon: const Image(image: AssetImage("Asset/icons/settings/youtube.png"),),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)
                        )
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff485470)
                    ),
                    hintText: " https://www.youtube.com//topm...",
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




            ],
          ),
      ),
      ]
      ),
    );
  }
}


