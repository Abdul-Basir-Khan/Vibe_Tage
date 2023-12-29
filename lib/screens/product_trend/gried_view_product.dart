import 'package:flutter/material.dart';

import '../register/reusabletext.dart';

class GridViewRepeatProduct extends StatefulWidget {
  const GridViewRepeatProduct({Key? key}) : super(key: key);

  @override
  State<GridViewRepeatProduct> createState() => _GridViewRepeatProductState();
}

class _GridViewRepeatProductState extends State<GridViewRepeatProduct> {
  final List<String> items = [
    'Asset/images/productTrend/Rectangle 24149.png',
    'Asset/images/productTrend/Rectangle 24149 (1).png',
    'Asset/images/productTrend/Rectangle 24149 (2).png',
    'Asset/images/productTrend/Rectangle 24149 (3).png',
    'Asset/images/productTrend/Rectangle 24149 (4).png',
    'Asset/images/productTrend/Rectangle 24149 (2).png'

  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width:MediaQuery.of(context).size.width*1,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          color: const Color(0xffF1F4FB),
          borderRadius: BorderRadius.circular(10)
      ),
      child:GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.60,
          crossAxisSpacing: 10,mainAxisSpacing:10,
          crossAxisCount: 2, // Two items per row
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xffFFFFFF)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                    width: MediaQuery.of(context).size.width*0.49,
                    fit: BoxFit.cover,
                    image: AssetImage( items[index],)),
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
          );
        },
      ),
    );
  }
}