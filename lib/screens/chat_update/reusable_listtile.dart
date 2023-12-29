import 'package:flutter/material.dart';

import '../register/reusabletext.dart';


class ReusableListTileChat extends StatelessWidget {

  final Widget trailing;
  final String image;
  final String title;
  final String subtitle;
  ReusableListTileChat({Key? key, required this.trailing, required this.image, required this.title, required this.subtitle}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[

        ListTile(
        leading:    Image(image: AssetImage(image)),
        title: ReusableText(title: title,size: 15,weight: FontWeight.w700,color: Color(0xff212121),),
        subtitle: ReusableText(title: subtitle,size: 14,weight: FontWeight.w500,color: Color(0xff485470),),
        trailing: trailing,
      ),
        Positioned(
          left: 50,top: 17,
          child: Container(height: 10,width: 10,decoration: BoxDecoration(
            shape: BoxShape.circle,color: Color(0xff99A7C7)
          ),),
        )
    ]
    );
  }
}
