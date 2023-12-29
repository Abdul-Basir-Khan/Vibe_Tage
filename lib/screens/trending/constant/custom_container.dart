import 'package:flutter/material.dart';
class CustomContainerForTrend extends StatelessWidget {
  const CustomContainerForTrend({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: MediaQuery.sizeOf(context).width*1,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start,children: [
        const Image(image: AssetImage("assets/images/trending/Main.png")),
        const SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,children: [
          RichText(text: const TextSpan(
              text: 'Westminster Accounts Top Labour\ndonor also funds',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: Color(0xff212121)),
              children: [
                TextSpan(
                  text: ' #news',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xffFF9200)),
                )
              ]

          )),
          const SizedBox(height: 5,),
          RichText(text: const TextSpan(
              text: 'By: ',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xff7D8CAC)),
              children: [
                TextSpan(
                  text: ' Daily News Updates',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Color(0xff485470)),
                )
              ]

          )),
          const SizedBox(height: 4,),
          Row(
            crossAxisAlignment:
            CrossAxisAlignment.center,children: [
            const Icon(Icons.remove_red_eye,color: Color(0xffC8D1E5),),
            const SizedBox(width: 5,),
            const Text("1.2k Views",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: Color(0xff485470)),
            ),
            SizedBox(width: MediaQuery.sizeOf(context).width*0.23,),
            const Text("19 hr ago",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xff99A7C7)),
            ),
          ],
          )
        ],
        )
      ],),

    );
  }
}
