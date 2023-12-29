import 'package:flutter/material.dart';

import '../register/reusabletext.dart';

class HistoryTab extends StatefulWidget {
  const HistoryTab({Key? key}) : super(key: key);

  @override
  State<HistoryTab> createState() => _HistoryTabState();
}

class _HistoryTabState extends State<HistoryTab> {
  int indexContainer=1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.93,

        child:
         ListView(
           physics: const ScrollPhysics(),
             scrollDirection: Axis.vertical,

             children: [
               Container(
                 color: Colors.white,
                 height: 615,
                 child:
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     const ListTile(
                       contentPadding: EdgeInsets.symmetric(horizontal: 10),

                       title: ReusableText(
                         title: 'You viewed House post',
                         color: Color(0xff212121),
                         size: 16,
                         weight: FontWeight.w700,
                       ),
                       subtitle:  ReusableText(
                         title: 'Mon 12, January, 2023',
                         color: Color(0xff485470),
                         size: 12,
                         weight: FontWeight.w600,
                       ),
                       trailing:  ReusableText(
                         title: '3 days ago',
                         color: Color(0xff485470),
                         size: 12,
                         weight: FontWeight.w600,
                       ),

                     ),
                     const Padding(
                       padding: EdgeInsets.symmetric(horizontal: 10),
                       child: Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                     ),
                     const Padding(
                       padding: EdgeInsets.all(10),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                        CircleAvatar(
                          radius: 30,backgroundColor: Color(0xffFFDBBA),
                          backgroundImage: AssetImage("Asset/images/notification/7.png")
                        ),
                           SizedBox(
                             width: 10,
                           ),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               ReusableText(
                                 title: 'Gwen Stacy',
                                 color: Color(0xff212121),
                                 size: 14,
                                 weight: FontWeight.w700,
                               ),
                               SizedBox(
                                 height: 10,
                               ),
                               ReusableText(
                                 title: '1hr ago',
                                 color: Color(0xff7D8CAC),
                                 size: 10,
                                 weight: FontWeight.w500,
                               ),
                             ],
                           ),
                           Spacer(),
                           Icon(
                             Icons.more_horiz,
                             size: 40,
                             color: Color(0xff99A7C7),
                           ),
                         ],
                       ),
                     ),
                     const SizedBox(
                       height: 10,
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10),
                       child:


                       RichText(
                         text: const TextSpan(
                           style: TextStyle(fontSize: 20, color: Colors.black),
                           children: [
                             TextSpan(
                               text: 'Lorem Ipsum is simply dummy text of the printing and typesetting ',
                               style: TextStyle(
                                   fontWeight: FontWeight.w500,
                                   fontSize: 14,
                                   color: Color(0xff7D8CAC)),
                             ),
                             TextSpan(
                                 text: "#Friends #atWork",
                                 style: TextStyle(
                                     fontWeight: FontWeight.w500,
                                     fontSize: 14,
                                     color: Color(0xffFF9200))),
                           ],
                         ),
                       ),
                     ),
                     const SizedBox(
                       height: 10,
                     ),
                     Container(
                       decoration: BoxDecoration(
                         color: const Color(0xf30FFFFFF),
                         borderRadius: BorderRadius.circular(12),
                         border: Border.all(color: const Color(0xffFFFFFF)),
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(
                             width: MediaQuery.of(context).size.width * 1,
                             child: const Image(
                                 fit: BoxFit.fitWidth,
                                 image: AssetImage("Asset/images/notification/Rectangle 24050.png")),
                           ),
                           const SizedBox(height: 10,),
                           const Padding(
                             padding: EdgeInsets.symmetric(horizontal: 10.0),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Image(image: AssetImage("Asset/images/notification/Group 289760.png")),
                                 SizedBox(width: 10,),
                                 ReusableText(
                                   title: '23.4k',
                                   color: Color(0xff7D8CAC),
                                   size: 11,
                                   weight: FontWeight.w500,
                                 ),
                                 Spacer(),
                                 ReusableText(
                                   title: '4.3K Comments | 1.9K Revibed',
                                   color: Color(0xff7D8CAC),
                                   size: 11,
                                   weight: FontWeight.w500,
                                 ),
                               ],
                             ),
                           ),
                           const SizedBox(height: 10,),
                           const Padding(
                             padding: EdgeInsets.symmetric(horizontal: 10),
                             child: Divider(thickness: 3,height: 3,color: Color(0xffC8D1E5),),
                           ),
                         ],
                       ),
                     ),
                     const SizedBox(height: 10,),
                     const Padding(
                       padding: EdgeInsets.symmetric(horizontal: 10),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Image(
                               color: Color(0xff99A7C7),
                               image: AssetImage("Asset/icons/chat_update/Heart-3.png")),
                           SizedBox(width: 10,),
                           ReusableText(
                             title: 'React',
                             color: Color(0xff7D8CAC),
                             size: 13,
                             weight: FontWeight.w500,
                           ),
                           Spacer(),
                           Image(
                               color: Color(0xff99A7C7),
                               image: AssetImage("Asset/icons/chat_update/Chat-3.png")),
                           SizedBox(width: 10,),
                           ReusableText(
                             title: 'Comment',
                             color: Color(0xff7D8CAC),
                             size: 13,
                             weight: FontWeight.w500,
                           ),
                           Spacer(),
                           Image(
                               color: Color(0xff99A7C7),
                               image: AssetImage("Asset/images/notification/Group 289754.png")),
                           SizedBox(width: 10,),
                           ReusableText(
                             title: 'Revibed',
                             color: Color(0xff7D8CAC),
                             size: 13,
                             weight: FontWeight.w500,
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
               const SizedBox(height: 10,),
               Container(
                 color: Colors.white,
                 height: 615,
                 child:
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,

                   children: [
                     const ListTile(
                       contentPadding: EdgeInsets.symmetric(horizontal: 10),

                       title: ReusableText(
                         title: 'You viewed House post',
                         color: Color(0xff212121),
                         size: 16,
                         weight: FontWeight.w700,
                       ),
                       subtitle:  ReusableText(
                         title: 'Mon 12, January, 2023',
                         color: Color(0xff485470),
                         size: 12,
                         weight: FontWeight.w600,
                       ),
                       trailing:  ReusableText(
                         title: '3 days ago',
                         color: Color(0xff485470),
                         size: 12,
                         weight: FontWeight.w600,
                       ),

                     ),
                     const Padding(
                       padding: EdgeInsets.symmetric(horizontal: 10),
                       child: Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                     ),
                     const Padding(
                       padding: EdgeInsets.all(10),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                        CircleAvatar(
                          radius: 30,backgroundColor: Color(0xffFFDBBA),
                          backgroundImage: AssetImage("Asset/images/notification/7.png")
                        ),
                           SizedBox(
                             width: 10,
                           ),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               ReusableText(
                                 title: 'Gwen Stacy',
                                 color: Color(0xff212121),
                                 size: 14,
                                 weight: FontWeight.w700,
                               ),
                               SizedBox(
                                 height: 10,
                               ),
                               ReusableText(
                                 title: '1hr ago',
                                 color: Color(0xff7D8CAC),
                                 size: 10,
                                 weight: FontWeight.w500,
                               ),
                             ],
                           ),
                           Spacer(),
                           Icon(
                             Icons.more_horiz,
                             size: 40,
                             color: Color(0xff99A7C7),
                           ),
                         ],
                       ),
                     ),
                     const SizedBox(
                       height: 10,
                     ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10),
                       child: RichText(
                         text: const TextSpan(
                           style: TextStyle(fontSize: 20, color: Colors.black),
                           children: [
                             TextSpan(
                               text: 'Lorem Ipsum is simply dummy text of the printing and typesetting ',
                               style: TextStyle(
                                   fontWeight: FontWeight.w500,
                                   fontSize: 14,
                                   color: Color(0xff7D8CAC)),
                             ),
                             TextSpan(
                                 text: "#Friends #atWork",
                                 style: TextStyle(
                                     fontWeight: FontWeight.w500,
                                     fontSize: 14,
                                     color: Color(0xffFF9200))),
                           ],
                         ),
                       ),
                     ),
                     const SizedBox(
                       height: 10,
                     ),
                     Container(
                       decoration: BoxDecoration(
                         color: const Color(0xf30FFFFFF),
                         borderRadius: BorderRadius.circular(12),
                         border: Border.all(color: const Color(0xffFFFFFF)),
                       ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(
                             width: MediaQuery.of(context).size.width * 1,
                             child: const Image(
                                 fit: BoxFit.fitWidth,
                                 image: AssetImage("Asset/images/notification/Rectangle 24050.png")),
                           ),
                           const SizedBox(height: 10,),
                           const Padding(
                             padding: EdgeInsets.symmetric(horizontal: 10.0),
                             child: Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Image(image: AssetImage("Asset/images/notification/Group 289760.png")),
                                 SizedBox(width: 10,),
                                 ReusableText(
                                   title: '23.4k',
                                   color: Color(0xff7D8CAC),
                                   size: 11,
                                   weight: FontWeight.w500,
                                 ),
                                 Spacer(),
                                 ReusableText(
                                   title: '4.3K Comments | 1.9K Revibed',
                                   color: Color(0xff7D8CAC),
                                   size: 11,
                                   weight: FontWeight.w500,
                                 ),
                               ],
                             ),
                           ),
                           const SizedBox(height: 10,),
                           const Padding(
                             padding: EdgeInsets.symmetric(horizontal: 10),
                             child: Divider(thickness: 3,height: 3,color: Color(0xffC8D1E5),),
                           ),
                         ],
                       ),
                     ),
                     const SizedBox(height: 10,),
                     const Padding(
                       padding: EdgeInsets.symmetric(horizontal: 10),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Image(
                               color: Color(0xff99A7C7),
                               image: AssetImage("Asset/icons/chat_update/Heart-3.png")),
                           SizedBox(width: 10,),
                           ReusableText(
                             title: 'React',
                             color: Color(0xff7D8CAC),
                             size: 13,
                             weight: FontWeight.w500,
                           ),
                           Spacer(),
                           Image(
                               color: Color(0xff99A7C7),
                               image: AssetImage("Asset/icons/chat_update/Chat-3.png")),
                           SizedBox(width: 10,),
                           ReusableText(
                             title: 'Comment',
                             color: Color(0xff7D8CAC),
                             size: 13,
                             weight: FontWeight.w500,
                           ),
                           Spacer(),
                           Image(
                               color: Color(0xff99A7C7),
                               image: AssetImage("Asset/images/notification/Group 289754.png")),
                           SizedBox(width: 10,),
                           ReusableText(
                             title: 'Revibed',
                             color: Color(0xff7D8CAC),
                             size: 13,
                             weight: FontWeight.w500,
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
             ],
           )
      ),
    );
  }
}


