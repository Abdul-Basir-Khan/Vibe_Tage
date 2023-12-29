import 'package:flutter/material.dart';

import '../register/reusabletext.dart';


class FormMessage extends StatefulWidget {
  const FormMessage({Key? key}) : super(key: key);

  @override
  State<FormMessage> createState() => _FormMessageState();
}

class _FormMessageState extends State<FormMessage> {
  @override
  Widget build(BuildContext context) {
    return

      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage("Asset/images/form/image 101.png")),
            ReusableText(title: 'No threads to show!',size: 18,weight: FontWeight.w700,color: Color(0xff485470),alignment: TextAlign.center,)


          ],
        ),
      );
  }
}
