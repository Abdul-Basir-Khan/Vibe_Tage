import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/blog/blog_back.dart';

import '../register/reusabletext.dart';


class ReusableInEntertainment extends StatefulWidget {



  const ReusableInEntertainment({Key? key,}) : super(key: key);

  @override
  State<ReusableInEntertainment> createState() => _ReusableInEntertainmentState();
}

class _ReusableInEntertainmentState extends State<ReusableInEntertainment> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
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
                image: const AssetImage("Asset/images/blog/Rectangle 23850.png")),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const BlogBack()));
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12),
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
                      ),
                      const Spacer(),
                      const ReusableText(
                        title: '1hr ago',
                        size: 12,
                        weight: FontWeight.w500,
                        color: Color(0xff7D8CAC),
                      ),

                    ],
                  ),
                  const SizedBox(height: 10,),
                  const ReusableText(
                    title: 'Govt schedules All Parties Conference\nfor February 9 - Pakistan',
                    size: 16,
                    weight: FontWeight.w700,
                    color: Color(0xff212121),
                  ),
                  const SizedBox(height: 10,),
                  const Divider(thickness: 2,height: 2,color: Color(0xffF1F4FB),),
                  const SizedBox(height: 10,),
                  const Row(

                    crossAxisAlignment:CrossAxisAlignment.center,
                    children: [
                      Image(image: AssetImage("Asset/images/blog/Group 76754.png")),
                      SizedBox(width:   10,),
                      ReusableText(
                        title: 'BBC News',
                        size: 13,
                        weight: FontWeight.w700,
                        color: Color(0xff212121),
                      ),
                      Spacer(),
                      Icon(Icons.more_horiz,color: Color(0xffC8D1E5),)
                    ],
                  ),
                  const SizedBox(height: 10,)
                ],
              ),
            )
          ],
        ),
      ),
    )
    ;
  }
}
