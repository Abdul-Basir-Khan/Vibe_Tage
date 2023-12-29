import 'package:flutter/material.dart';

import '../../register/reusabletext.dart';

class ListTileForFriend extends StatelessWidget {

  final String imagePath;
  final Widget widgetRequired;




  const ListTileForFriend({super.key, required this.imagePath, required this.widgetRequired,});

  @override
  Widget build(BuildContext context) {
    return ListTile(

      leading:  Image(image: AssetImage(imagePath),),
      title:   const ReusableText(
        title: 'Micheal Even',
        size: 16,
        weight: FontWeight.w700,
        color: Color(0xff212121) ,
      ),
      subtitle: ReusableText(
        title: '@micheal_even33',
        size: 14,
        weight: FontWeight.w500,
        color: const Color(0xff485470) ,
      ),
      trailing: widgetRequired,
    );
  }
}
