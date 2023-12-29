import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/movie/movie_screen_avenger.dart';

import '../forum_design/custom_textfield.dart';
import '../register/reusabletext.dart';

class NewGifts extends StatefulWidget {
  const NewGifts({super.key});

  @override
  State<NewGifts> createState() => _NewGiftsState();
}

class _NewGiftsState extends State<NewGifts> {
  final List pImage = [
    'Asset/images/gift/Group 76754 (2).png',
    'Asset/images/gift/Group 76754 (1).png',
    'Asset/images/gift/Group 76754.png',
  ];
  final List gImage = [
    'Asset/images/gift/Group 1000002625.png',

    'Asset/images/gift/Group 1000002628.png',
    'Asset/images/gift/Group 1000002627.png',
  ];

  final  List<Color> cColor = [
    const Color(0xffFFC700),
    const Color(0xff57FFAE),
    const Color(0xffA0EEFF),
    const Color(0xff87A1FF),
  ];

  final List cImage = [
    'Asset/images/gift/Heart-3.png',
    'Asset/images/gift/Star-3.png',
    'Asset/images/gift/Vector.png',
    'Asset/images/gift/Vector (1).png',
  ];

  final List crImage = [
    'Asset/images/gift/image 99.png',
    'Asset/images/gift/image 100.png',
    'Asset/images/gift/image 101 (1).png',
    'Asset/images/gift/image 93.png',
    'Asset/images/gift/image 94.png',
    'Asset/images/gift/image 95.png',
    'Asset/images/gift/image 102.png',
    'Asset/images/gift/image 97.png',
    'Asset/images/gift/image 98.png',
  ];
final List <String> cString = [

  'Free',
  '\$5.00',
  '\$10.00',

];


  int _currentIndex=0;
  int _currentIndex1=0;
  int _currentIndex2=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.85,
          child: ListView.builder(
            itemCount: pImage.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.zero,
                                padding: const EdgeInsets.all(2),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(colors: [
                                    Color(0xffFF9243),
                                    Color(0xffFF3535),
                                    Color(0xffFFCA71),
                                    Color(0xffFFC3D7),
                                  ],
                                  ),
                                ),
                                child: Image(
                                  image: AssetImage(pImage[index].toString()),
                                ),
                            ),
                            const SizedBox(width: 10,),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ReusableText(
                                  title: 'New Gifts',
                                  size: 14,
                                  weight: FontWeight.w700,
                                  color: Color(0xff212121),
                                ),
                                ReusableText(
                                  title: '1hr ago',
                                  size: 10,
                                  weight: FontWeight.w500,
                                  color: Color(0xff7D8CAC),
                                ),
                              ],
                            ),
                            const Spacer(),
                            IconButton(
                              icon:const Icon(
                              Icons.more_horiz,
                              color: Color(0xff99A7C7),),
                              onPressed: (){
                              },
                            ),


                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Image(image: AssetImage(gImage[index].toString())),
                                const SizedBox(
                                  height: 20,
                                ),
                                const ReusableText(
                                  title: '“Gwen Stacy” Sent you a Gift',
                                  size: 16,
                                  weight: FontWeight.w700,
                                  color: Color(0xff212121),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      showModalBottomSheet(
                                        isScrollControlled: true,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                        backgroundColor:const Color(0xffFFFFFF),
                                        context: context,
                                        builder: (BuildContext context) {
                                          return StatefulBuilder(builder:
                                              (BuildContext context,
                                              void Function(void Function()) setState) {
                                            return Container(
                                              height: MediaQuery.of(context).size.height*0.85,
                                              child: ListView(
                                                children: [
                                                  Image(
                                                      width:  MediaQuery.of(context).size.width*1,
                                                      fit:BoxFit.fitWidth,
                                                      image: const AssetImage("Asset/images/gift/Group 1000002629.png")),
                                                  Padding(
                                                    padding: const EdgeInsets.all(10),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        const Center(
                                                          child: ReusableText(
                                                            title: 'Gwen Stacy\nWish you a Happy New Year',
                                                            size: 16,
                                                            weight: FontWeight.w700,
                                                            color: Color(0xff212121),
                                                            alignment: TextAlign.center,
                                                          ),
                                                        ),
                                                        const SizedBox(height: 10,),

                                                        Container(
                                                          padding: const EdgeInsets.all(10),
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),
                                                            color: const Color(0xffF1F4FB),
                                                          ),
                                                          child: const Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,children: [
                                                            ReusableText(
                                                              title: '\nHi Mark!\nI wish a Happy New Year to you and your family! I hope this year will bring warmth of love and positivity in your life.\n\nThank you',
                                                              size: 15,
                                                              weight: FontWeight.w500,
                                                              color: Color(0xff120D26),
                                                            ),
                                                          ],
                                                          ),
                                                        ),
                                                        const SizedBox(height: 20,),


                                                        GestureDetector(
                                                          onTap: (){
                                                            Navigator.pop(context);
                                                            setState(() {
                                                              showModalBottomSheet(
                                                                isScrollControlled: true,
                                                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                                                backgroundColor:const Color(0xffFFFFFF),
                                                                context: context,
                                                                builder: (BuildContext context) {
                                                                  return StatefulBuilder(builder:
                                                                      (BuildContext context,
                                                                      void Function(void Function()) setState) {
                                                                    return Container(
                                                                      height: MediaQuery.of(context).size.height*0.90,
                                                                      child: Padding(
                                                                        padding: const EdgeInsets.all(15.0),
                                                                        child: ListView(
                                                                          children: [
                                                                            const Row(
                                                                              children: [
                                                                                Spacer(),
                                                                                ReusableText(title: 'Select the Gift Box Style',size: 18,weight: FontWeight.w700,color: Color(0xff120D26),),
                                                                                Spacer(),
                                                                              ],
                                                                            ),
                                                                            const SizedBox(height: 15,),
                                                                            TextField(

                                                                              decoration: InputDecoration(

                                                                                focusedBorder: OutlineInputBorder(
                                                                                    borderRadius: BorderRadius.circular(10),
                                                                                    borderSide: const BorderSide(
                                                                                        color: Color(0xffC8D1E5))),
                                                                                enabledBorder: OutlineInputBorder(
                                                                                    borderRadius: BorderRadius.circular(10),
                                                                                    borderSide: const BorderSide(
                                                                                        color: Color(0xffC8D1E5))),

                                                                                suffixIcon: Row(
                                                                                  children: [
                                                                                    const SizedBox(width: 20,),
                                                                                    const ReusableText(
                                                                                      title: 'Search emoji',
                                                                                      size: 16,
                                                                                      weight: FontWeight.w500,
                                                                                      color: Color(0xff99A7C7),
                                                                                    ),
                                                                                    const Spacer(),

                                                                                    Container(
                                                                                      height: 52,width: 50,
                                                                                      decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(10),
                                                                                        color: const Color(0xffFF9200),
                                                                                      ),
                                                                                      child: const Center(

                                                                                          child:Icon(Icons.search,color: Color(0xffFFFFFF),)
                                                                                      ),
                                                                                    ),

                                                                                  ],
                                                                                ),
                                                                                filled: true,
                                                                                fillColor: const Color(0xffF8F9FB),
                                                                                border: OutlineInputBorder(
                                                                                  borderRadius: BorderRadius.circular(10),
                                                                                  borderSide:
                                                                                  const BorderSide(color: Color(0xffC8D1E5)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            const SizedBox(height: 10,),


                                                                            SizedBox(height: MediaQuery.sizeOf(context).height*0.48,

                                                                              child:  GridView.builder(
                                                                                itemCount: crImage.length,
                                                                                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                                                                                    crossAxisCount: 3,crossAxisSpacing: 10,mainAxisSpacing: 10,childAspectRatio: 1
                                                                                ), itemBuilder: (BuildContext context, int index) {
                                                                                return InkWell(
                                                                                  onTap: (){
                                                                                    setState((){
                                                                                      _currentIndex1=index;
                                                                                    });
                                                                                  },
                                                                                  child: Container(
                                                                                    height: 95,width: 93,
                                                                                    decoration: BoxDecoration(
                                                                                        borderRadius: BorderRadius.circular(10),
                                                                                        border: Border.all(color: _currentIndex1==index?const Color(0xffFF9200):Colors.transparent)

                                                                                    ),
                                                                                    child: Image(


                                                                                        image: AssetImage(crImage[index].toString())),
                                                                                  ),
                                                                                );
                                                                              }, ),
                                                                            ),

                                                                            const Divider(height: 2,thickness: 2,color: Color(0xffC8D1E5),),
                                                                            const SizedBox(height: 20,),

                                                                            SingleChildScrollView(
                                                                              scrollDirection: Axis.horizontal,
                                                                              child: Row(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  ...List.generate(cString.length, (index) =>   InkWell(
                                                                                    onTap: (){
                                                                                      setState((){
                                                                                        _currentIndex2=index;
                                                                                      });
                                                                                    },
                                                                                    child: Container(
                                                                                      margin: const EdgeInsets.symmetric(horizontal: 5),
                                                                                      height: 48,width: 110,
                                                                                      decoration: BoxDecoration(
                                                                                          borderRadius: BorderRadius.circular(10),
                                                                                          color: _currentIndex2==index?const Color(0xffFFFFFF):const Color(0xffF8F9FB),
                                                                                          border: Border.all(color: _currentIndex2==index?const Color(0xffFF9200):const Color(0xffC8D1E5))

                                                                                      ),
                                                                                      child: Center(
                                                                                        child:
                                                                                        ReusableText(
                                                                                          title:cString[index].toString(),
                                                                                          size: 16,
                                                                                          weight: FontWeight.w700,
                                                                                          color:_currentIndex2==index?const Color(0xffFF9200): const Color(0xff120D26),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),)
                                                                                ],
                                                                              ),
                                                                            ),

                                                                            const SizedBox(height: 10,),
                                                                            const CustomTextField(
                                                                              hintTextColor: Color(0xff485470),
                                                                              hintText: 'Custom Gift',
                                                                            ),
                                                                            const SizedBox(height: 20,),
                                                                            const Divider(height: 2,thickness: 2,color: Color(0xffC8D1E5),),
                                                                            const SizedBox(height: 20,),
                                                                            const ReusableText(
                                                                              title: 'Message',
                                                                              size: 16,
                                                                              weight: FontWeight.w700,
                                                                              color: Color(0xff120D26),
                                                                            ),
                                                                            const SizedBox(height: 10,),
                                                                            Container(
                                                                              padding: const EdgeInsets.all(10),
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(10),
                                                                                color: const Color(0xffF1F4FB),
                                                                              ),
                                                                              child: const Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,children: [
                                                                                ReusableText(
                                                                                  title: '\nHi Mark!\nI wish a Happy New Year to you and your family! I hope this year will bring warmth of love and positivity in your life.\n\nThank you',
                                                                                  size: 15,
                                                                                  weight: FontWeight.w500,
                                                                                  color: Color(0xff120D26),
                                                                                ),
                                                                              ],
                                                                              ),
                                                                            ),
                                                                            const SizedBox(height: 20,),

                                                                            GestureDetector(
                                                                              onTap: (){
                                                                                setState(() {
                                                                                  Navigator.pop(context);

                                                                                  showModalBottomSheet(
                                                                                    isScrollControlled: true,
                                                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                                                                    backgroundColor:const Color(0xffFFFFFF),
                                                                                    context: context,
                                                                                    builder: (BuildContext context) {
                                                                                      return StatefulBuilder(builder:
                                                                                          (BuildContext context,
                                                                                          void Function(void Function()) setState) {
                                                                                        return Container(
                                                                                          height: MediaQuery.of(context).size.height*0.60,
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsets.all(15.0),
                                                                                            child: ListView(
                                                                                              children: [
                                                                                                const Row(
                                                                                                  children: [
                                                                                                    Spacer(),
                                                                                                    ReusableText(title: 'Select the Gift Box Style',size: 18,weight: FontWeight.w700,color: Color(0xff120D26),),
                                                                                                    Spacer(),
                                                                                                  ],
                                                                                                ),

                                                                                                const SizedBox(height: 20,),
                                                                                                const Center(
                                                                                                  child: Image(image: AssetImage("Asset/images/gift/Gift 2.png"),),
                                                                                                ),
                                                                                                const SizedBox(height: 40,),
                                                                                                const Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                                                                                const SizedBox(height: 30,),
                                                                                                const ReusableText(title: 'Select Style',size: 16,weight: FontWeight.w700,color: Color(0xff120D26),),
                                                                                                const SizedBox(height: 20,),
                                                                                                SizedBox(
                                                                                                  height: 60,
                                                                                                  child:
                                                                                                  ListView.builder(
                                                                                                    itemCount: cColor.length,
                                                                                                    scrollDirection: Axis.horizontal, itemBuilder: (BuildContext context, int index) { return  Row(
                                                                                                    children: [
                                                                                                      InkWell(
                                                                                                        onTap:(){
                                                                                                          setState((){
                                                                                                            _currentIndex=index;
                                                                                                          });
                                                                                                        },
                                                                                                        child: Container(
                                                                                                          height: 72,width: 70,decoration: BoxDecoration(
                                                                                                            borderRadius: BorderRadius.circular(10),
                                                                                                            color: cColor[index],
                                                                                                            border: Border.all(color: _currentIndex==index?const Color(0xff000000):Colors.transparent)
                                                                                                        ),
                                                                                                          child: Center(
                                                                                                            child: Image(image: AssetImage(cImage[index]),),
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                      const SizedBox(width: 10,),

                                                                                                    ],
                                                                                                  ); },


                                                                                                  ),
                                                                                                ),
                                                                                                const SizedBox(height: 40,),

                                                                                                Container(
                                                                                                  height: 52,
                                                                                                  width:
                                                                                                  MediaQuery.sizeOf(context).width *1,
                                                                                                  padding: const EdgeInsets.all(10),
                                                                                                  decoration: BoxDecoration(
                                                                                                    gradient: const LinearGradient(colors: [
                                                                                                      Color(0xffFFC107),
                                                                                                      Color(0xffFF8205),
                                                                                                    ]),
                                                                                                    borderRadius: BorderRadius.circular(15),
                                                                                                    color: const Color(0xffF1F4FB),
                                                                                                  ),
                                                                                                  child: const Center(
                                                                                                    child: ReusableText(
                                                                                                      title: 'Send back Gift',
                                                                                                      size: 16,
                                                                                                      weight: FontWeight.w700,
                                                                                                      color: Color(0xffFFFFFF),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),

                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      });
                                                                                    },
                                                                                  );
                                                                                });
                                                                              },

                                                                              child: Container(
                                                                                height: 52,
                                                                                width:
                                                                                MediaQuery.sizeOf(context).width *1,
                                                                                padding: const EdgeInsets.all(10),
                                                                                decoration: BoxDecoration(
                                                                                  gradient: const LinearGradient(colors: [
                                                                                    Color(0xffFFC107),
                                                                                    Color(0xffFF8205),
                                                                                  ]),
                                                                                  borderRadius: BorderRadius.circular(15),
                                                                                  color: const Color(0xffF1F4FB),
                                                                                ),
                                                                                child: const Center(
                                                                                  child: ReusableText(
                                                                                    title: 'Send back Gift',
                                                                                    size: 16,
                                                                                    weight: FontWeight.w700,
                                                                                    color: Color(0xffFFFFFF),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),

                                                                          ],
                                                                        ),
                                                                      ),
                                                                    );
                                                                  });
                                                                },
                                                              );
                                                            });
                                                          },

                                                          child: Container(
                                                            height: 52,
                                                            width:
                                                            MediaQuery.sizeOf(context).width *1,
                                                            padding: const EdgeInsets.all(10),
                                                            decoration: BoxDecoration(
                                                              gradient: const LinearGradient(colors: [
                                                                Color(0xffFFC107),
                                                                Color(0xffFF8205),
                                                              ]),
                                                              borderRadius: BorderRadius.circular(15),
                                                              color: const Color(0xffF1F4FB),
                                                            ),
                                                            child: const Center(
                                                              child: ReusableText(
                                                                title: 'Send back Gift',
                                                                size: 16,
                                                                weight: FontWeight.w700,
                                                                color: Color(0xffFFFFFF),
                                                              ),
                                                            ),
                                                          ),
                                                        ),


                                                        const SizedBox(height: 10,),



                                                        Container(
                                                          height: 52,
                                                          width:
                                                          MediaQuery.sizeOf(context).width *1,
                                                          padding: const EdgeInsets.all(10),
                                                          decoration: BoxDecoration(
                                                            border:Border.all(color: const Color(0xffFF9200)),
                                                            borderRadius: BorderRadius.circular(15),
                                                            color: const Color(0xffFFFFFF),
                                                          ),
                                                          child: const Center(
                                                            child: ReusableText(
                                                              title: 'Share now', size: 16,
                                                              weight: FontWeight.w700,
                                                              color: Color(0xffFF9200),
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(height: 15,),



                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            );
                                          });
                                        },
                                      );
                                    });
                                  },
                                  child: Container(
                                    height: 52,
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.46,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(colors: [
                                        Color(0xffFFC107),
                                        Color(0xffFF8205),
                                      ]),
                                      borderRadius: BorderRadius.circular(15),
                                      color: const Color(0xffF1F4FB),
                                    ),
                                    child: const Center(
                                      child: ReusableText(
                                        title: 'Tap to open',
                                        size: 15,
                                        weight: FontWeight.w700,
                                        color: Color(0xffFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
