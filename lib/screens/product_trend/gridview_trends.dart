import 'package:flutter/material.dart';

import '../register/reusabletext.dart';

class GridViewRepeatTrends extends StatefulWidget {
  const GridViewRepeatTrends({Key? key}) : super(key: key);

  @override
  State<GridViewRepeatTrends> createState() => _GridViewRepeatTrendsState();
}

class _GridViewRepeatTrendsState extends State<GridViewRepeatTrends> {
  final List<String> items1 = [
    'Asset/images/productTrend/Rectangle 24149.png',
    'Asset/images/productTrend/Recatangle 24149.png',
    'Asset/images/productTrend/Rectangle 24149 (1).png',
    'Asset/images/productTrend/Rectangle 24149 (2).png',
    'Asset/images/productTrend/Rectangle 24149 (3).png',
    'Asset/images/productTrend/Rectangle 24149 (4).png',

  ];
  @override
  Widget build(BuildContext context) {
    return

      Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,physics: ScrollPhysics(),
        gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.60,
          crossAxisSpacing: 10,mainAxisSpacing:10,
          crossAxisCount: 2, // Two items per row
        ),
        itemCount: items1.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              border: Border.all(color: const Color(0xffC8D1E5)),
              borderRadius: BorderRadius.circular(8),

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  width: MediaQuery.of(context).size.width*0.49,
                    fit: BoxFit.cover,
                    image: AssetImage( items1[index],)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10,),

                    const ReusableText(title: 'Air Max Best Sound\nQuality Active...',size: 13,weight: FontWeight.w600,color: Color(0xff000000),),
                    const SizedBox(height: 10,),
                    const Row(children: [
                      Icon(Icons.star,color: Color(0xffFFB13D),),
                      Icon(Icons.star,color: Color(0xffFFB13D),),
                      Icon(Icons.star,color: Color(0xffFFB13D),),
                      Icon(Icons.star,color: Color(0xffFFB13D),),
                      Icon(Icons.star,color: Color(0xffFFB13D),),
                      ReusableText(title: '(33)',size: 10,weight: FontWeight.w500,color: Color(0xff485470),),
                    ],),
                    const SizedBox(height: 10,),
                    RichText(text: const TextSpan(
                        text: '\$ 249.99 ',
                        style: TextStyle(
                          color: Color(0xffF27F12),
                          fontWeight: FontWeight.w700,
                          fontSize: 15,

                        ),
                        children: [
                          TextSpan(
                            text: '\n\$ 2.00  -53%',
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Color(0xff7D8CAC),
                                fontWeight: FontWeight.w500,
                                fontSize: 10
                            ),
                          )
                        ]
                    ),
                    ),
                  ],
                ),
              )
              ],
            ),
          );
        },
        ),
      );
  }
}