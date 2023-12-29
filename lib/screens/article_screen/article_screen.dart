import 'package:flutter/material.dart';

import '../blog/reusable_listtile.dart';
import '../register/reusabletext.dart';


class ArticalScreen extends StatelessWidget {
  const ArticalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: ListView(
      children: [
        const SizedBox(height: 10,),
        Container(
          width: MediaQuery.of(context).size.width*1,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffFFFFFF),
          ),
          child:  Column(
            children: [
              Row(
                children: [
                  ReusableText(
                    title: 'Popular Articles',
                    size: 20,
                    weight: FontWeight.w700,
                    color: Color(0xff212121),
                  ),
                  Spacer(),
                  ReusableText(
                    title: 'See all',
                    size: 12,
                    weight: FontWeight.w500,
                    color: Color(0xffFF9200),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
              SizedBox(height: 10,),

              ReusableListTile(),
              SizedBox(height: 10,),
              Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
              ReusableListTile(),
              SizedBox(height: 10,),
              Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
              ReusableListTile(),
            ],
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          width: MediaQuery.of(context).size.width*1,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffFFFFFF),
          ),
          child: const Column(
            children: [
              Row(
                children: [
                  ReusableText(
                    title: 'Recent Articles',
                    size: 20,
                    weight: FontWeight.w700,
                    color: Color(0xff212121),
                  ),
                  Spacer(),
                  ReusableText(
                    title: 'See all',
                    size: 12,
                    weight: FontWeight.w500,
                    color: Color(0xffFF9200),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
              SizedBox(height: 10,),

              ReusableListTile(),
              SizedBox(height: 10,),
              Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
              ReusableListTile(),
              SizedBox(height: 10,),
              Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
              ReusableListTile(),
            ],
          ),
        ),
        const SizedBox(height: 10,),

      ],
    ),));
  }
}
