import 'package:flutter/material.dart';

import '../../register/reusabletext.dart';


class TransactionContaineer extends StatelessWidget {

  final Color? containerColor;
  final String? cStatus;

  const TransactionContaineer({super.key, this.containerColor, this.cStatus});

  @override
  Widget build(BuildContext context) {
    return Container(
    width: MediaQuery.sizeOf(context).width*1,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xffC8D1E5)),
        color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ReusableText(
                title: 'Product Sale',
                size: 17,
                weight: FontWeight.w600,
                color:Color(0xff212121),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.only(top: 3,right: 13,bottom: 3,left: 13),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: containerColor
                ),
                child:Center(
                  child: ReusableText(
                    title: cStatus.toString(),
                    size: 10,
                    weight: FontWeight.w600,
                    color:const Color(0xffFFFFFF),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 3,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.watch_later_outlined,color: Color(0xff99A7C7),),
              const SizedBox(width: 10,),
              const ReusableText(
                title: '21/05/2023',
                size: 12,
                weight: FontWeight.w500,
                color:Color(0xff485470),
              ),
              const SizedBox(width: 10,),
              Container(height: 3,width: 3,decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffC8D1E5),
              ),),
              const SizedBox(width: 10,),
              const ReusableText(
                title: '#544848',
                size: 12,
                weight: FontWeight.w500,
                color:Color(0xff485470),
              ),
              const Spacer(),
              const ReusableText(
                title: '\$34.00',
                size: 14,
                weight: FontWeight.w700,
                color:Color(0xff212121),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
