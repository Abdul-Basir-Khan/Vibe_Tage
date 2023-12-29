import 'package:flutter/material.dart';

import '../../register/reusabletext.dart';


class CustomListTile extends StatelessWidget {


  final String text1;
  final String text2;

  const CustomListTile({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: ReusableText(
        title: text1.toString(),
        size: 16,
        weight: FontWeight.w700,
        color: Color(0xff212121),
      ),
      subtitle: ReusableText(
        title:text2.toString(),
        size: 16,
        weight: FontWeight.w600,
        color: Color(0xff7D8CAC),
      ),
    );
  }
}
