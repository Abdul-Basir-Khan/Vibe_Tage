import 'package:flutter/material.dart';

import '../register/reusabletext.dart';

class BlogBack extends StatefulWidget {

  final VoidCallbackIntent? Screen2;

  const BlogBack({Key? key, this.Screen2}) : super(key: key);

  @override
  State<BlogBack> createState() => _BlogBackState();
}

class _BlogBackState extends State<BlogBack> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: const Color(0xffF1F4FB),
      body: ListView(
        children: [
          Container(
            decoration: const BoxDecoration(color: Color(0xffFE9700)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 7),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          suffixIcon: const Image(
                            height: 30,
                            width: 30,
                            image: AssetImage("Asset/icons/movie/adjust.png"),
                          ),
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
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Search for anything",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffFFFFFF)),
                    child: const Center(
                        child: Image(
                          height: 30,
                          width: 30,
                          image: AssetImage("Asset/icons/movie/Chat-3.png"),
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: const Icon(Icons.arrow_back_outlined,color:Color(0xff485470))),
              const SizedBox(width: 15,),
              const ReusableText(
                title: 'Go back',
                size: 16,
                weight: FontWeight.w700,
                color: Color(0xff485470),
              ),
            ],
          ),),
          Container(
            margin: const EdgeInsets.all(10)  ,
            width: MediaQuery.of(context).size.width*1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffFFFFFF),
            ),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Image(
                    width: MediaQuery.of(context).size.width*1,
                    fit: BoxFit.cover,
                    image: const AssetImage("Asset/images/blog/Rectangle 23850 (2).png")),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width:122,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color(0xffFF9200).withOpacity(0.15),
                          borderRadius: BorderRadius.circular(15),

                        ),
                        child: const Center(
                          child: ReusableText(
                            title: 'Entertainment',
                            size: 16,
                            weight: FontWeight.w600,
                            color: Color(0xffFF9200),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const ReusableText(
                        title: 'Govt schedules All Parties Conference\nfor February 9 - Pakistan',
                        size: 16,
                        weight: FontWeight.w700,
                        color: Color(0xff212121),
                      ),
                      const SizedBox(height: 10,),

                      const Row(

                        crossAxisAlignment:CrossAxisAlignment.center,
                        children: [
                          Image(image: AssetImage("Asset/images/blog/Group 76754.png")),
                          SizedBox(width:   10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ReusableText(
                                title: 'BBC News',
                                size: 13,
                                weight: FontWeight.w700,
                                color: Color(0xff212121),
                              ),
                              SizedBox(height: 5,),
                              ReusableText(
                                title: '1hr ago',
                                size: 10,
                                weight: FontWeight.w500,
                                color: Color(0xff7D8CAC),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.more_horiz,color: Color(0xffC8D1E5),)
                        ],
                      ),
                      const SizedBox(height: 10,),
                      const Divider(thickness: 2,height: 2,color: Color(0xffF1F4FB),),
                      const SizedBox(height: 10,),
                      const ReusableText(
                        title: 'Lorem Ipsum is simply dummy text of\nthe printing and typesetting industry. Lorem\nIpsum has been the industry\'s standard\ndummy text ever since the 1500s, when an\nunknown printer took a gall\n\nremaining essentially unchanged. It was\npopularised in the 1960s with the release of\nLetraset sheets containing\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled',
                        size: 16,
                        weight: FontWeight.w500,
                        color: Color(0xff212121),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10,),
        ],
      ),
    ));
  }
}
