import 'package:flutter/material.dart';

import '../register/reusabletext.dart';


class StreamReusableContainer extends StatelessWidget {

  final String? image1path;
  final String? image2path;


  const StreamReusableContainer({super.key, this.image1path, this.image2path});

  @override
  Widget build(BuildContext context) {
    return

      Container(
        margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color(0xffFFFFFF),
      ),
      child:   Stack(
        children: [
          Column(
            children: [
              Image(
                width: MediaQuery.sizeOf(context).width*1,
                fit: BoxFit.cover,
                image: AssetImage(image1path.toString()),),
              const SizedBox(height:40 ,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ReusableText(
                          title: 'Vibetag Company',
                          size: 17,
                          weight: FontWeight.w700,
                          color: Color(0xff212121),
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            Image(
                                height: 30,width: 30,
                                image: AssetImage("Asset/images/stream/Ellipse 946.png")),
                            const SizedBox(width: 10,),
                            const ReusableText(
                              title: 'Organizer: Bessie Colen',
                              size: 13,
                              weight: FontWeight.w500,
                              color: Color(0xff7D8CAC),
                            ),

                          ],)

                      ],
                    ),
                    const Spacer(),
                    const Icon(Icons.more_vert,color: Color(0xffC8D1E5),)
                  ],
                ),
              )
            ],
          ),

         Positioned(
            left: 20,
            bottom: 84,
            child: Image(
              image: AssetImage(image2path.toString()),),
          ),
        ],
      ),
    );
  }
}
