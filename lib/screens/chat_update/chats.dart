import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/blog/reusable_listtile.dart';
import 'package:vibe_tag/screens/chat_update/reusable_listtile.dart';

import '../register/reusabletext.dart';

class ChatsTab extends StatefulWidget {
  const ChatsTab({Key? key}) : super(key: key);

  @override
  State<ChatsTab> createState() => _ChatsTabState();
}

class _ChatsTabState extends State<ChatsTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 10,),
    ReusableListTileChat(

        trailing: Padding(
          padding: const EdgeInsets.only(top: 13),
          child: Column(
      children: [
          ReusableText(title: '3:20 PM',size: 11,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
          SizedBox(height: 10,),
          Container(
            height: 16,width: 16,decoration: BoxDecoration(
            shape: BoxShape.circle,color: Color(0xffFF9200),
          ),
            child:  Center(child: ReusableText(title: '2',size: 8,alignment: TextAlign.center,weight: FontWeight.w400,color: Color(0xffFFFFFF),)),
          )
      ],
    ),
        ), image: 'Asset/images/chat_update/Ellipse 2.png', title: 'Kaitlyn', subtitle: 'Have a good one!'),
        SizedBox(height: 10,),
        Divider(thickness: 3,height: 3,color: Color(0xffF1F4FB),),
        SizedBox(height: 10,),
        ReusableListTileChat(

            trailing: Padding(
              padding: const EdgeInsets.only(top: 13),
              child: Column(
                children: [
                  ReusableText(title: '3:20 PM',size: 11,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                  SizedBox(height: 10,),
                  Container(
                    height: 16,width: 16,decoration: BoxDecoration(
                    shape: BoxShape.circle,color: Color(0xffFF9200),
                  ),
                    child:  Center(child: ReusableText(title: '2',size: 8,alignment: TextAlign.center,weight: FontWeight.w400,color: Color(0xffFFFFFF),)),
                  )
                ],
              ),
            ), image: 'Asset/images/chat_update/Ellipse 2 (1).png', title: 'Joel Mek', subtitle: 'Good bye!'),
        SizedBox(height: 10,),
        Divider(thickness: 3,height: 3,color: Color(0xffF1F4FB),),
        SizedBox(height: 10,),
        ReusableListTileChat(

            trailing:

            Icon(Icons.done_all_outlined,color: Color(0xffFF9200),),

            image: 'Asset/images/chat_update/Ellipse 2 (3).png', title: 'Winshi Lin', subtitle: 'Please check the file that I send you y...'),
        SizedBox(height: 10,),
        Divider(thickness: 3,height: 3,color: Color(0xffF1F4FB),),
        SizedBox(height: 10,),
        ReusableListTileChat(

            trailing:

            Icon(Icons.done_all_outlined,color: Color(0xffC8D1E5),),

            image: 'Asset/images/chat_update/Ellipse 2 (6).png', title: 'Kethrine Dea', subtitle: 'Don’t worry, I will manage it'),
        SizedBox(height: 10,),
        Divider(thickness: 3,height: 3,color: Color(0xffF1F4FB),),
        SizedBox(height: 10,),
        ReusableListTileChat(

            trailing:

            Icon(Icons.done_all_outlined,color: Color(0xffC8D1E5),),

            image: 'Asset/images/chat_update/Ellipse 2 (4).png', title: 'Jolly stoe', subtitle: 'I will call him today.'),
        SizedBox(height: 10,),
        Divider(thickness: 3,height: 3,color: Color(0xffF1F4FB),),
        SizedBox(height: 10,),
        ReusableListTileChat(

            trailing:

            Icon(Icons.done_all_outlined,color: Color(0xffFF9200),),

            image: 'Asset/images/chat_update/Ellipse 2 (3).png', title: 'Gwen Stacy', subtitle: 'Is there any update?'),
        SizedBox(height: 10,),
        Divider(thickness: 3,height: 3,color: Color(0xffF1F4FB),),



      ],
    );
  }
}
