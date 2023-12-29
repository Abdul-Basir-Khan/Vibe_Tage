import 'package:flutter/material.dart';

import '../register/reusabletext.dart';

class ProductFashion extends StatefulWidget {
  const ProductFashion({super.key});

  @override
  State<ProductFashion> createState() => _ProductFashionState();
}

class _ProductFashionState extends State<ProductFashion> {
  bool _isVisible = false;
  bool _isVisible1 = false;
  bool _isVisible2 = false;
  bool _isVisible3 = false;
  bool _isVisible4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4FB),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Color(0xff000000),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                hintStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff99A7C7)),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color(0xff99A7C7),
                ),
                filled: true,
                fillColor: const Color(0xffFFFFFF),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search for anything",
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.75,
                child: ListView(
                  children: [
                    InkWell(
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
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: ListView(
                                      shrinkWrap: true,physics: const ScrollPhysics(),
                                      children: [
                                        Row(
                                          children: [
const Spacer() ,                                           const ReusableText(title: 'Fashion',size: 18,weight: FontWeight.w600,color: Color(0xff434950),),
                                           const Spacer(),
                                            Container(
                                              padding: const EdgeInsets.all(4),
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xffC8D1E5)
                                              ),
                                              child: const Icon(Icons.close,color: Color(0xff7D8CAC),),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 20,),
                                        Container(
                                          width: MediaQuery.of(context).size.width*1,
                                          height: 256,
                                          decoration: BoxDecoration(
                                            color: const Color(0xff416AA7),
                                            borderRadius: BorderRadius.circular(10)
                                          ),
                                          child: const Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
                                            ReusableText(
                                              title: '343 x 256 Banner',
                                              size: 17,
                                              weight: FontWeight.w600,
                                              color: Color(0xffFFFFFF),
                                            ),
                                            SizedBox(height: 10,),
                                            ReusableText(
                                              title: 'This Banner is going to be same for all\nthe categories',
                                              size: 15,
                                              weight: FontWeight.w400,
                                              color: Color(0xffFFFFFF),
                                              alignment: TextAlign.center,
                                            ),
                                          ],
                                          ),
                                        ),
                                        const SizedBox(height: 20,),
                                        ListView(
                                          shrinkWrap: true,
                                          physics: const NeverScrollableScrollPhysics(),
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: const Color(0xffF1F4FB),
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                      children: [
                                                        const ReusableText(
                                                          title: 'Fashion for Men',
                                                          size: 16,
                                                          weight: FontWeight.w600,
                                                          color: Color(0xff434950),
                                                        ),
                                                        const Spacer(),
                                                        IconButton(
                                                            onPressed: () {
                                                              setState(() {
                                                                _isVisible3=!_isVisible3;
                                                                _isVisible4=false;
                                                              });
                                                            },
                                                            icon: const Icon(
                                                              Icons.arrow_forward_ios,
                                                              color: Color(0xff7D8CAC),
                                                            )),
                                                      ],
                                                    ),
                                                  ),

                                                  Visibility(
                                                    visible: _isVisible3,
                                                    child: const Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                                          child:  ReusableText(
                                                            title: 'T-shirts & Polo',
                                                            size: 13,
                                                            weight: FontWeight.w400,
                                                            color: Color(0xff485470),
                                                          ),),
                                                        SizedBox(height: 10,),
                                                        Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                                        SizedBox(height: 10,),
                                                        Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                                          child:  ReusableText(
                                                            title: 'Pants & Jeans',
                                                            size: 13,
                                                            weight: FontWeight.w400,
                                                            color: Color(0xff485470),
                                                          ),),
                                                        SizedBox(height: 10,),
                                                        Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                                        SizedBox(height: 10,),
                                                        Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                                          child:  ReusableText(
                                                            title: 'Shorts',
                                                            size: 13,
                                                            weight: FontWeight.w400,
                                                            color: Color(0xff485470),
                                                          ),),
                                                        SizedBox(height: 10,),
                                                        Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                                        SizedBox(height: 10,),
                                                        Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                                          child:  ReusableText(
                                                            title: 'Joggers',
                                                            size: 13,
                                                            weight: FontWeight.w400,
                                                            color: Color(0xff485470),
                                                          ),),
                                                        SizedBox(height: 10,),
                                                        Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                                        SizedBox(height: 10,),
                                                        Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                                          child:  ReusableText(
                                                            title: 'Inner wear',
                                                            size: 13,
                                                            weight: FontWeight.w400,
                                                            color: Color(0xff485470),
                                                          ),),
                                                        SizedBox(height: 10,),
                                                        Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                                        SizedBox(height: 10,),
                                                        Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                                          child:  ReusableText(
                                                            title: 'Accessories',
                                                            size: 13,
                                                            weight: FontWeight.w400,
                                                            color: Color(0xff485470),
                                                          ),),
                                                        SizedBox(height: 10,),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.symmetric(horizontal: 10),
                                              decoration: BoxDecoration(
                                                color: const Color(0xffF1F4FB),
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                      children: [
                                                        const ReusableText(
                                                          title: 'Fashion for Women',
                                                          size: 16,
                                                          weight: FontWeight.w600,
                                                          color: Color(0xff434950),
                                                        ),
                                                        const Spacer(),
                                                        IconButton(
                                                            onPressed: () {
                                                              setState(() {
                                                                _isVisible4=!_isVisible4;
                                                                _isVisible3=false;

                                                              });
                                                            },
                                                            icon: const Icon(
                                                              Icons.arrow_forward_ios,
                                                              color: Color(0xff7D8CAC),
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  Visibility(
                                                    visible: _isVisible4,
                                                    child: const Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                                          child:  ReusableText(
                                                            title: 'T-shirts & Polo',
                                                            size: 13,
                                                            weight: FontWeight.w400,
                                                            color: Color(0xff485470),
                                                          ),),
                                                        SizedBox(height: 10,),
                                                        Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                                        SizedBox(height: 10,),
                                                        Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                                          child:  ReusableText(
                                                            title: 'Pants & Jeans',
                                                            size: 13,
                                                            weight: FontWeight.w400,
                                                            color: Color(0xff485470),
                                                          ),),
                                                        SizedBox(height: 10,),
                                                        Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                                        SizedBox(height: 10,),
                                                        Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                                          child:  ReusableText(
                                                            title: 'Shorts',
                                                            size: 13,
                                                            weight: FontWeight.w400,
                                                            color: Color(0xff485470),
                                                          ),),
                                                        SizedBox(height: 10,),
                                                        Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                                        SizedBox(height: 10,),
                                                        Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                                          child:  ReusableText(
                                                            title: 'Joggers',
                                                            size: 13,
                                                            weight: FontWeight.w400,
                                                            color: Color(0xff485470),
                                                          ),),
                                                        SizedBox(height: 10,),
                                                        Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                                        SizedBox(height: 10,),
                                                        Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                                          child:  ReusableText(
                                                            title: 'Inner wear',
                                                            size: 13,
                                                            weight: FontWeight.w400,
                                                            color: Color(0xff485470),
                                                          ),),
                                                        SizedBox(height: 10,),
                                                        Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                                        SizedBox(height: 10,),
                                                        Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                                          child:  ReusableText(
                                                            title: 'Accessories',
                                                            size: 13,
                                                            weight: FontWeight.w400,
                                                            color: Color(0xff485470),
                                                          ),),
                                                        SizedBox(height: 10,),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.symmetric(horizontal: 10),
                                              decoration: BoxDecoration(
                                                color: const Color(0xffF1F4FB),
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  const ReusableText(
                                                    title: 'Fashion for Boys',
                                                    size: 16,
                                                    weight: FontWeight.w600,
                                                    color: Color(0xff434950),
                                                  ),
                                                  const Spacer(),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.arrow_forward_ios,
                                                        color: Color(0xff7D8CAC),
                                                      ))
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.symmetric(horizontal: 10),
                                              decoration: BoxDecoration(
                                                color: const Color(0xffF1F4FB),
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  const ReusableText(
                                                    title: 'Fashion for Girls',
                                                    size: 16,
                                                    weight: FontWeight.w600,
                                                    color: Color(0xff434950),
                                                  ),
                                                  const Spacer(),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.arrow_forward_ios,
                                                        color: Color(0xff7D8CAC),
                                                      ))
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.symmetric(horizontal: 10),
                                              decoration: BoxDecoration(
                                                color: const Color(0xffF1F4FB),
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  const ReusableText(
                                                    title: 'Fashion for Winter',
                                                    size: 16,
                                                    weight: FontWeight.w600,
                                                    color: Color(0xff434950),
                                                  ),
                                                  const Spacer(),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.arrow_forward_ios,
                                                        color: Color(0xff7D8CAC),
                                                      ))
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.symmetric(horizontal: 10),
                                              decoration: BoxDecoration(
                                                color: const Color(0xffF1F4FB),
                                                borderRadius:
                                                BorderRadius.circular(8),
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: [
                                                  const ReusableText(
                                                    title: 'Fashion for Summer',
                                                    size: 16,
                                                    weight: FontWeight.w600,
                                                    color: Color(0xff434950),
                                                  ),
                                                  const Spacer(),
                                                  IconButton(
                                                      onPressed: () {},
                                                      icon: const Icon(
                                                        Icons.arrow_forward_ios,
                                                        color: Color(0xff7D8CAC),
                                                      ))
                                                ],
                                              ),
                                            ),
                                          ],
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
                        height: 54,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: const Color(0xffC8D1E5))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const ReusableText(
                              title: 'Fashion',
                              size: 16,
                              weight: FontWeight.w600,
                              color: Color(0xff434950),
                            ),
                            const Spacer(),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isVisible =!_isVisible;
                                  });
                                },
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xff7D8CAC),
                                ))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Visibility(
                      visible: _isVisible,
                      child: SizedBox(
                          height:
                          MediaQuery.of(context).size.height * 0.42,
                          child: ListView(
                            children: [
                              Container(

                                decoration: BoxDecoration(
                                  color: const Color(0xffF1F4FB),
                                    borderRadius:
                                    BorderRadius.circular(8),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          const ReusableText(
                                            title: 'Fashion for Men',
                                            size: 16,
                                            weight: FontWeight.w600,
                                            color: Color(0xff434950),
                                          ),
                                          const Spacer(),
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  _isVisible1=!_isVisible1;
                                                  _isVisible2=false;
                                                });
                                              },
                                              icon: const Icon(
                                                Icons.arrow_forward_ios,
                                                color: Color(0xff7D8CAC),
                                              )),
                                        ],
                                      ),
                                    ),

                                    Visibility(
                                      visible: _isVisible1,
                                      child: const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                          child:  ReusableText(
                                            title: 'T-shirts & Polo',
                                            size: 13,
                                            weight: FontWeight.w400,
                                            color: Color(0xff485470),
                                          ),),
                                          SizedBox(height: 10,),
                                          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                          SizedBox(height: 10,),
                                          Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                            child:  ReusableText(
                                              title: 'Pants & Jeans',
                                              size: 13,
                                              weight: FontWeight.w400,
                                              color: Color(0xff485470),
                                            ),),
                                          SizedBox(height: 10,),
                                          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                          SizedBox(height: 10,),
                                          Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                            child:  ReusableText(
                                              title: 'Shorts',
                                              size: 13,
                                              weight: FontWeight.w400,
                                              color: Color(0xff485470),
                                            ),),
                                          SizedBox(height: 10,),
                                          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                          SizedBox(height: 10,),
                                          Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                            child:  ReusableText(
                                              title: 'Joggers',
                                              size: 13,
                                              weight: FontWeight.w400,
                                              color: Color(0xff485470),
                                            ),),
                                          SizedBox(height: 10,),
                                          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                          SizedBox(height: 10,),
                                          Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                            child:  ReusableText(
                                              title: 'Inner wear',
                                              size: 13,
                                              weight: FontWeight.w400,
                                              color: Color(0xff485470),
                                            ),),
                                          SizedBox(height: 10,),
                                          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                          SizedBox(height: 10,),
                                          Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                            child:  ReusableText(
                                              title: 'Accessories',
                                              size: 13,
                                              weight: FontWeight.w400,
                                              color: Color(0xff485470),
                                            ),),
                                          SizedBox(height: 10,),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: const Color(0xffF1F4FB),
                                    borderRadius:
                                    BorderRadius.circular(8),
                                    ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
                                      child: Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          const ReusableText(
                                            title: 'Fashion for Women',
                                            size: 16,
                                            weight: FontWeight.w600,
                                            color: Color(0xff434950),
                                          ),
                                          const Spacer(),
                                          IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  _isVisible2=!_isVisible2;
                                                  _isVisible1=false;
                                                });
                                              },
                                              icon: const Icon(
                                                Icons.arrow_forward_ios,
                                                color: Color(0xff7D8CAC),
                                              ))
                                        ],
                                      ),
                                    ),
                                    Visibility(
                                      visible: _isVisible2,
                                      child: const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                            child:  ReusableText(
                                              title: 'T-shirts & Polo',
                                              size: 13,
                                              weight: FontWeight.w400,
                                              color: Color(0xff485470),
                                            ),),
                                          SizedBox(height: 10,),
                                          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                          SizedBox(height: 10,),
                                          Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                            child:  ReusableText(
                                              title: 'Pants & Jeans',
                                              size: 13,
                                              weight: FontWeight.w400,
                                              color: Color(0xff485470),
                                            ),),
                                          SizedBox(height: 10,),
                                          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                          SizedBox(height: 10,),
                                          Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                            child:  ReusableText(
                                              title: 'Shorts',
                                              size: 13,
                                              weight: FontWeight.w400,
                                              color: Color(0xff485470),
                                            ),),
                                          SizedBox(height: 10,),
                                          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                          SizedBox(height: 10,),
                                          Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                            child:  ReusableText(
                                              title: 'Joggers',
                                              size: 13,
                                              weight: FontWeight.w400,
                                              color: Color(0xff485470),
                                            ),),
                                          SizedBox(height: 10,),
                                          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                          SizedBox(height: 10,),
                                          Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                            child:  ReusableText(
                                              title: 'Inner wear',
                                              size: 13,
                                              weight: FontWeight.w400,
                                              color: Color(0xff485470),
                                            ),),
                                          SizedBox(height: 10,),
                                          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                                          SizedBox(height: 10,),
                                          Padding( padding: EdgeInsets.symmetric(horizontal: 10),
                                            child:  ReusableText(
                                              title: 'Accessories',
                                              size: 13,
                                              weight: FontWeight.w400,
                                              color: Color(0xff485470),
                                            ),),
                                          SizedBox(height: 10,),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: const Color(0xffF1F4FB),
                                    borderRadius:
                                    BorderRadius.circular(8),
                                 ),
                                child: Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    const ReusableText(
                                      title: 'Fashion for Boys',
                                      size: 16,
                                      weight: FontWeight.w600,
                                      color: Color(0xff434950),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.arrow_forward_ios,
                                          color: Color(0xff7D8CAC),
                                        ))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: const Color(0xffF1F4FB),
                                    borderRadius:
                                    BorderRadius.circular(8),
                                  ),
                                child: Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    const ReusableText(
                                      title: 'Fashion for Girls',
                                      size: 16,
                                      weight: FontWeight.w600,
                                      color: Color(0xff434950),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.arrow_forward_ios,
                                          color: Color(0xff7D8CAC),
                                        ))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: const Color(0xffF1F4FB),
                                    borderRadius:
                                    BorderRadius.circular(8),
                                    ),
                                child: Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    const ReusableText(
                                      title: 'Fashion for Winter',
                                      size: 16,
                                      weight: FontWeight.w600,
                                      color: Color(0xff434950),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.arrow_forward_ios,
                                          color: Color(0xff7D8CAC),
                                        ))
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: const Color(0xffF1F4FB),
                                    borderRadius:
                                    BorderRadius.circular(8),
                                ),
                                child: Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    const ReusableText(
                                      title: 'Fashion for Summer',
                                      size: 16,
                                      weight: FontWeight.w600,
                                      color: Color(0xff434950),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.arrow_forward_ios,
                                          color: Color(0xff7D8CAC),
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 54,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: const Color(0xffC8D1E5))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ReusableText(
                            title: 'Electronics',
                            size: 16,
                            weight: FontWeight.w600,
                            color: Color(0xff434950),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff7D8CAC),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 54,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: const Color(0xffC8D1E5))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ReusableText(
                            title: 'Motors',
                            size: 16,
                            weight: FontWeight.w600,
                            color: Color(0xff434950),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff7D8CAC),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 54,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: const Color(0xffC8D1E5))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ReusableText(
                            title: 'Home & Lifestyle',
                            size: 16,
                            weight: FontWeight.w600,
                            color: Color(0xff434950),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff7D8CAC),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 54,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: const Color(0xffC8D1E5))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ReusableText(
                            title: 'Groceries',
                            size: 16,
                            weight: FontWeight.w600,
                            color: Color(0xff434950),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff7D8CAC),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 54,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: const Color(0xffC8D1E5))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ReusableText(
                            title: 'Sports',
                            size: 16,
                            weight: FontWeight.w600,
                            color: Color(0xff434950),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff7D8CAC),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 54,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: const Color(0xffC8D1E5))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ReusableText(
                            title: 'Collectibles & Arts',
                            size: 16,
                            weight: FontWeight.w600,
                            color: Color(0xff434950),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff7D8CAC),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 54,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: const Color(0xffC8D1E5))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ReusableText(
                            title: 'Babies & Toys',
                            size: 16,
                            weight: FontWeight.w600,
                            color: Color(0xff434950),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff7D8CAC),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 54,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: const Color(0xffC8D1E5))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ReusableText(
                            title: 'Health Beauty',
                            size: 16,
                            weight: FontWeight.w600,
                            color: Color(0xff434950),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff7D8CAC),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 54,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: const Color(0xffC8D1E5))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const ReusableText(
                            title: 'Pets & Gardens',
                            size: 16,
                            weight: FontWeight.w600,
                            color: Color(0xff434950),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff7D8CAC),
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                  ],
                )),
          )
        ],
      ),
    );
  }
}
