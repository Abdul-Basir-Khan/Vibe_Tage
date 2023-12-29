import 'package:flutter/material.dart';

import '../register/reusabletext.dart';


class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          const SizedBox(height: 10,),
          Container(
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffFFFFFF),

            ),
            child:Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*1,
                      child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage("Asset/images/setting/B1.png")),

                    ),
                    const SizedBox(height: 60,),
                    const ReusableText(
                      title: 'Foxit Technology',
                      size: 18,
                      weight: FontWeight.w700,
                      color: Color(0xff000000),
                    ),
                    const SizedBox(height: 10,),
                    const ReusableText(
                      title: '1.2k members',
                      size: 14,
                      weight: FontWeight.w500,
                      color: Color(0xff485470),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          height: 54,width: 151,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffF8F9FB),
                          ),
                          child: const Column(
                            children: [
                              ReusableText(
                                title: 'Likes',
                                size: 12,
                                weight: FontWeight.w400,
                                color: Color(0xff485470),
                              ),
                              SizedBox(height: 10,),
                              ReusableText(
                                title: '256',
                                size: 14,
                                weight: FontWeight.w600,
                                color: Color(0xff212121),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 54,width: 151,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffF8F9FB),
                          ),
                          child: const Column(
                            children: [
                              ReusableText(
                                title: 'Likes',
                                size: 12,
                                weight: FontWeight.w400,
                                color: Color(0xff485470),
                              ),
                              SizedBox(height: 10,),
                              ReusableText(
                                title: '256',
                                size: 14,
                                weight: FontWeight.w600,
                                color: Color(0xff212121),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(14) ,topLeft: Radius.circular(14))),
                            backgroundColor:const Color(0xffFFFFFF),
                            context: context,
                            builder: (BuildContext context) {
                              return StatefulBuilder(builder:
                                  (BuildContext context,
                                  void Function(void Function()) setState) {
                                return Container(
                                  padding: const EdgeInsets.all(10),
                                  height: MediaQuery.of(context).size.height*0.67,
                                  child:



                                  ListView(
                                    children: [
                                      Row(
                                        children: [
                                          IconButton(icon:const Icon(Icons.arrow_back_outlined,color: Color(0xff212121),),onPressed: (){
                                            Navigator.pop(context);
                                          },),
                                          const Spacer(),
                                          const ReusableText(
                                            title: 'Page Settings',
                                            size: 16,
                                            weight: FontWeight.w700,
                                            color: Color(0xff000000),
                                          ),
                                          const Spacer(),
                                        ],
                                      ),
                                      const SizedBox(height: 10,),
                                      const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
                                      const SizedBox(height: 20,),
                                      TextField(
                                        style: const TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(26),
                                                borderSide: const BorderSide(
                                                    color: Color(0xffC8D1E5)
                                                )
                                            ),
                                            hintText: "Paste Link here",
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(26),
                                                borderSide: const BorderSide(color: Color(0xffC8D1E5)
                                                )
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(26),
                                                borderSide: const BorderSide(color: Color(0xffC8D1E5)))),
                                      ),
                                      const SizedBox(height: 20,),
                                      const ReusableText(
                                        title: 'General',
                                        size: 15,
                                        weight: FontWeight.w500,
                                        color: Color(0xff485470),
                                      ),
                                      const SizedBox(height: 20,),
                                      const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
                                      const SizedBox(height: 20,),
                                      const ReusableText(
                                        title: 'Privacy',
                                        size: 15,
                                        weight: FontWeight.w500,
                                        color: Color(0xff485470),
                                      ),
                                      const SizedBox(height: 20,),
                                      const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
                                      const SizedBox(height: 20,),
                                      const ReusableText(
                                        title: 'Social',
                                        size: 15,
                                        weight: FontWeight.w500,
                                        color: Color(0xff485470),
                                      ),
                                      const SizedBox(height: 20,),
                                      const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
                                      const SizedBox(height: 20,),
                                      const ReusableText(
                                        title: 'Notifications',
                                        size: 15,
                                        weight: FontWeight.w500,
                                        color: Color(0xff485470),
                                      ),
                                      const SizedBox(height: 20,),
                                      const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
                                      const SizedBox(height: 20,),
                                      const ReusableText(
                                        title: 'Analytics',
                                        size: 15,
                                        weight: FontWeight.w500,
                                        color: Color(0xff485470),
                                      ),
                                      const SizedBox(height: 20,),
                                      const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
                                      const SizedBox(height: 20,),
                                      const ReusableText(
                                        title: 'Delete',
                                        size: 15,
                                        weight: FontWeight.w500,
                                        color: Color(0xff485470),
                                      ),
                                      const SizedBox(height: 10,),

                                    ],
                                  ),
                                );
                              });
                            },
                          );
                        });
                      },
                      child: Container(
                        height: 48,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff99A7C7),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.edit_outlined,color: Color(0xffFFFFFF),),
                            ReusableText(
                              title: '  Edit',
                              size: 15,
                              weight: FontWeight.w700,
                              color: Color(0xffFFFFFF),
                            ),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const Positioned(
                  right: 0,
                  top:-60,
                  left: 0,
                  child: Image(
                      image: AssetImage("Asset/images/setting/B1S.png")),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffFFFFFF),

            ),
            child:Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width*1,
                      child: const Image(
                          fit: BoxFit.cover,
                          image: AssetImage("Asset/images/setting/B2.png")),

                    ),
                    const SizedBox(height: 60,),
                    const ReusableText(
                      title: 'Foxit Technology',
                      size: 18,
                      weight: FontWeight.w700,
                      color: Color(0xff000000),
                    ),
                    const SizedBox(height: 10,),
                    const ReusableText(
                      title: '1.2k members',
                      size: 14,
                      weight: FontWeight.w500,
                      color: Color(0xff485470),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          height: 54,width: 151,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffF8F9FB),
                          ),
                          child: const Column(
                            children: [
                              ReusableText(
                                title: 'Likes',
                                size: 12,
                                weight: FontWeight.w400,
                                color: Color(0xff485470),
                              ),
                              SizedBox(height: 10,),
                              ReusableText(
                                title: '256',
                                size: 14,
                                weight: FontWeight.w600,
                                color: Color(0xff212121),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 54,width: 151,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffF8F9FB),
                          ),
                          child: const Column(
                            children: [
                              ReusableText(
                                title: 'Likes',
                                size: 12,
                                weight: FontWeight.w400,
                                color: Color(0xff485470),
                              ),
                              SizedBox(height: 10,),
                              ReusableText(
                                title: '256',
                                size: 14,
                                weight: FontWeight.w600,
                                color: Color(0xff212121),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(14) ,topLeft: Radius.circular(14))),
                            backgroundColor:const Color(0xffFFFFFF),
                            context: context,
                            builder: (BuildContext context) {
                              return StatefulBuilder(builder:
                                  (BuildContext context,
                                  void Function(void Function()) setState) {
                                return Container(
                                  padding: const EdgeInsets.all(10),
                                  height: MediaQuery.of(context).size.height*0.67,
                                  child: ListView(
                                    children: [
                                      Row(
                                        children: [
                                          IconButton(icon:const Icon(Icons.arrow_back_outlined,color: Color(0xff212121),),onPressed: (){
                                            Navigator.pop(context);
                                          },),
                                          const Spacer(),
                                          const ReusableText(
                                            title: 'Page Settings',
                                            size: 16,
                                            weight: FontWeight.w700,
                                            color: Color(0xff000000),
                                          ),
                                          const Spacer(),
                                        ],
                                      ),
                                      const SizedBox(height: 10,),
                                      const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
                                      const SizedBox(height: 20,),
                                      TextField(
                                        style: const TextStyle(color: Colors.black),
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(26),
                                                borderSide: const BorderSide(
                                                    color: Color(0xffC8D1E5)
                                                )
                                            ),
                                            hintText: "Paste Link here",
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(26),
                                                borderSide: const BorderSide(color: Color(0xffC8D1E5)
                                                )
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(26),
                                                borderSide: const BorderSide(color: Color(0xffC8D1E5)))),
                                      ),
                                      const SizedBox(height: 20,),
                                      const ReusableText(
                                        title: 'General',
                                        size: 15,
                                        weight: FontWeight.w500,
                                        color: Color(0xff485470),
                                      ),
                                      const SizedBox(height: 20,),
                                      const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
                                      const SizedBox(height: 20,),
                                      const ReusableText(
                                        title: 'Privacy',
                                        size: 15,
                                        weight: FontWeight.w500,
                                        color: Color(0xff485470),
                                      ),
                                      const SizedBox(height: 20,),
                                      const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
                                      const SizedBox(height: 20,),
                                      const ReusableText(
                                        title: 'Social',
                                        size: 15,
                                        weight: FontWeight.w500,
                                        color: Color(0xff485470),
                                      ),
                                      const SizedBox(height: 20,),
                                      const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
                                      const SizedBox(height: 20,),
                                      const ReusableText(
                                        title: 'Notifications',
                                        size: 15,
                                        weight: FontWeight.w500,
                                        color: Color(0xff485470),
                                      ),
                                      const SizedBox(height: 20,),
                                      const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
                                      const SizedBox(height: 20,),
                                      const ReusableText(
                                        title: 'Analytics',
                                        size: 15,
                                        weight: FontWeight.w500,
                                        color: Color(0xff485470),
                                      ),
                                      const SizedBox(height: 20,),
                                      const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
                                      const SizedBox(height: 20,),
                                      const ReusableText(
                                        title: 'Delete',
                                        size: 15,
                                        weight: FontWeight.w500,
                                        color: Color(0xff485470),
                                      ),
                                      const SizedBox(height: 10,),

                                    ],
                                  ),
                                );
                              });
                            },
                          );
                        });
                      },
                      child: Container(
                        height: 48,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff99A7C7),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.edit_outlined,color: Color(0xffFFFFFF),),
                            ReusableText(
                              title: '  Edit',
                              size: 15,
                              weight: FontWeight.w700,
                              color: Color(0xffFFFFFF),
                            ),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const Positioned(
                  right: 0,
                  top:-60,
                  left: 0,
                  child: Image(
                      image: AssetImage("Asset/images/setting/B2S.png")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
