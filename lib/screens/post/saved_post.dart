import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/post/all_saved_post.dart';
import 'package:vibe_tag/screens/post/popular_Video_screen.dart';

import '../register/reusabletext.dart';


class SavedPost extends StatefulWidget {
  const SavedPost({super.key});

  @override
  State<SavedPost> createState() => _SavedPostState();
}

class _SavedPostState extends State<SavedPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4FB),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
            color:Color(0xff000000),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const ReusableText(
          title: 'Saved',
          size: 17,
          weight: FontWeight.w500,
          color: Color(0xff000000),
        ),
      ),
      body: DefaultTabController(
          length: 4,
        child: ListView(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(height: 46,
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(

                          hintStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff99A7C7)),
                          prefixIcon:const Image(
                            height: 30,
                            width: 30,
                            image: AssetImage("Asset/icons/chat_update/Search-4.png"),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),borderSide: const BorderSide(
                              color: Color(0xffC8D1E5)
                          )
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26),borderSide: const BorderSide(
                            color: Color(0xffC8D1E5)
                          )
                          ),
                          filled: true,
                          fillColor: const Color(0xffFFFFFF),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Search",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Container(
                    height: 46,width: 46,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffFF9200),
                    ),
                    child: const Center(child: Icon(Icons.add,color: Colors.white,),),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              width: MediaQuery.sizeOf(context).width*1,
              height: MediaQuery.sizeOf(context).height*0.80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TabBar(

                        labelColor: Color(0xff212121),
                        unselectedLabelColor: Color(0xff7D8CAC),
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w600,fontSize: 16
                        ),
                        indicatorColor: Color(0xffFF9200),
                        tabs: [
                      Tab(text: 'All',),
                      Tab(text: 'Videos',),
                      Tab(text: 'Buzzins',),
                      Tab(text: 'Photos',),
                    ]),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height*0.74,
                      child: TabBarView(children: [
                        const AllPostSaved(),
                        Container(),
                        Container(),
                        Container(),
                      ]),
                    ),

                  ],
                ),
              ),

            )

          ],
        ),
      ),
    );
  }
}
