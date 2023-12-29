import 'package:flutter/material.dart';

import 'comming_soon_time.dart';


class CommingSoon extends StatefulWidget {
  const CommingSoon({super.key});

  @override
  State<CommingSoon> createState() => _CommingSoonState();
}

class _CommingSoonState extends State<CommingSoon> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold

      (
      backgroundColor: const Color(0xffF1F4FB),
      body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage("Asset/images/comming_soon/image 115.png")),
          const SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const CommingSoonTime()));
            },
            child: const Text(
              'This feature is coming real soon',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(
                      0xff212121),
                  fontWeight:
                  FontWeight
                      .w700),
            ),
          ),




        ],
      ),
    ),));
  }
}
