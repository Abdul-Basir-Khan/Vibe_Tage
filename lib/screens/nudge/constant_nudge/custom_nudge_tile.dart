import 'package:flutter/material.dart';



class CustomNudgeTile extends StatelessWidget {
  final String? imagePath;

  const CustomNudgeTile({super.key, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 73,width: MediaQuery.sizeOf(context).width*1,
      margin: const EdgeInsets.only(bottom: 7),
      padding: const EdgeInsets.all(10),
      color: const Color(0xffFFFFFF),

      child: Row(
       crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(height: 53,width: 53,
          // margin: EdgeInsets.all(5),
          padding: const EdgeInsets.all(3),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
Color(0xffFF9243),
Color(0xffFF3535),
Color(0xffFCA71),
Color(0xffFFC3D7),
              ]
            ),
          ),
          child: CircleAvatar(backgroundImage: AssetImage(imagePath.toString()),),
        ),
        const SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(text: const TextSpan(
              text: 'Gwen Stacy',
              style: TextStyle(
                fontSize: 16,fontWeight: FontWeight.w700,color: Color(0xff212121)
              ),
              children: [
                TextSpan(
                  text: '  1hr ago',
                    style: TextStyle(
                        fontSize: 15,fontWeight: FontWeight.w500,color: Color(0xff7D8CAC)
                    )
                )
              ]
            )),
            const Text('Nudge you!',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: Color(0xff485470)),)

          ],
        ),
        const Spacer(),
        Container(
          height: 35,
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 9),
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color(0xffFFC107),
              Color(0xffFF8205),
            ]
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
        'Nudge Back',
              style: TextStyle(
                  fontSize: 13,
                  color: Color(0xffFFFFFF),

                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ],
    ),
    );
  }
}
