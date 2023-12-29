import 'package:flutter/material.dart';

import '../register/reusabletext.dart';
import 'fitness_in_gym_click.dart';

class GenerallClicks extends StatefulWidget {
  const GenerallClicks({Key? key}) : super(key: key);

  @override
  State<GenerallClicks> createState() => _GenerallClicksState();
}

class _GenerallClicksState extends State<GenerallClicks> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*1,
      padding: const EdgeInsets.all(0),
      color: const Color(0xffF1F4FB),
      child: ListView(

        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
         const SizedBox(height: 10,),
         Container(
           padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),color: const Color(0xff7D8CAC),child:
         Row(
           children: [
             const ReusableText(title: 'Health & Wellness',size: 16,weight: FontWeight.w700,color: Color(0xffFFFFFF),),
             const Spacer(),
             IconButton(icon: const Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xffFFFFFF),),onPressed: (){

             },),
           ],
         ),
         ),
         const SizedBox(height: 10,),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Container(
             padding: const EdgeInsets.all(10),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),color: const Color(0xffFFFFFF)
             ),
             child:Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   children: [
                     GestureDetector(
                       onTap: (){
                         setState(() {
                           Navigator.push(context,MaterialPageRoute(builder: (context)=>const FitnessIngym()) );
                         });
                       },
                       child: Container(
                         padding: const EdgeInsets.all(10),
                         decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xff5A8CFF),
                         ),
                         child: const Center(child:Image(image: AssetImage("Asset/icons/form/Group.png"),),),
                       ),
                     ),
                     const Spacer(),
                     Column(
                       children: const [
                         ReusableText(title: 'Topic',size: 13,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                         SizedBox(height: 10,),
                         ReusableText(title: '235',size: 16,weight: FontWeight.w700,color: Color(0xff485470),),
                       ],
                     ),
                     const SizedBox(width: 20,),
                     Column(
                       children: const [
                         ReusableText(title: 'Posts',size: 13,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                         SizedBox(height: 10,),
                         ReusableText(title: '534',size: 16,weight: FontWeight.w700,color: Color(0xff485470),),
                       ],
                     ),
                   ],
                 ),
                 const SizedBox(height: 10,),
                 const ReusableText(title: 'Fitness in Gym',size: 13,weight: FontWeight.w700,color: Color(0xff485470),),
                 const SizedBox(height: 10,)
                 ,                  const ReusableText(title: 'Exercise and Nutrition for Optimal Fitness" - This topic\nemphasizes the importance of regular exercise and\nhealthy...',size: 12,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                 const SizedBox(height: 10,),
                 const Divider(thickness: 2,color: Color(0xffF1F4FB),height:2,),
                 const SizedBox(height: 10,),
                 const ListTile(
                   leading: Image(
                     height: 40,width: 40,
                     image: AssetImage("Asset/images/form/Group 1000004117.png"),),
                   title:                  ReusableText(title: 'What Training Should I Be Doing to Lose Weight?',size: 11,weight: FontWeight.w600,color: Color(0xff485470),),
                   subtitle:                   ReusableText(title: 'Last reply by mark_henry2, 13 minutes ago',size: 13,weight: FontWeight.w700,color: Color(0xff7D8CAC),),
                 )
               ],
             ),
           ),
         ),
         const SizedBox(height: 10,),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Container(
             padding: const EdgeInsets.all(10),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),color: const Color(0xffFFFFFF)
             ),
             child:Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   children: [
                     Container(
                       padding: const EdgeInsets.all(10),
                       decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xffFF5A8C),
                       ),
                       child: const Center(child:Image(image: AssetImage("Asset/icons/form/Group.png"),),),
                     ),
                     const Spacer(),
                     Column(
                       children: const [
                         ReusableText(title: 'Topic',size: 13,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                         SizedBox(height: 10,),
                         ReusableText(title: '235',size: 16,weight: FontWeight.w700,color: Color(0xff485470),),
                       ],
                     ),
                     const SizedBox(width: 20,),
                     Column(
                       children: const [
                         ReusableText(title: 'Posts',size: 13,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                         SizedBox(height: 10,),
                         ReusableText(title: '534',size: 16,weight: FontWeight.w700,color: Color(0xff485470),),
                       ],
                     ),
                   ],
                 ),
                 const SizedBox(height: 10,),
                 const ReusableText(title: 'Fitness in Gym',size: 13,weight: FontWeight.w700,color: Color(0xff485470),),
                 const SizedBox(height: 10,)
                 ,                  const ReusableText(title: 'Exercise and Nutrition for Optimal Fitness" - This topic\nemphasizes the importance of regular exercise and\nhealthy...',size: 12,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                 const SizedBox(height: 10,),
                 const Divider(thickness: 2,color: Color(0xffF1F4FB),height:2,),
                 const SizedBox(height: 10,),
                 const ListTile(
                   leading: Image(
                     height: 40,width: 40,
                     image: AssetImage("Asset/images/form/Group 1000004117.png"),),
                   title:                  ReusableText(title: 'What Training Should I Be Doing to Lose Weight?',size: 11,weight: FontWeight.w600,color: Color(0xff485470),),
                   subtitle:                   ReusableText(title: 'Last reply by mark_henry2, 13 minutes ago',size: 13,weight: FontWeight.w700,color: Color(0xff7D8CAC),),
                 )
               ],
             ),
           ),
         ),
         const SizedBox(height: 10,),
         Container(
           padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),color: const Color(0xff7D8CAC),child: Row(
           children: [
             const ReusableText(title: 'The Gym Experience',size: 16,weight: FontWeight.w700,color: Color(0xffFFFFFF),),
             const Spacer(),
             IconButton(icon: const Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xffFFFFFF),),onPressed: (){

             },),
           ],
         ),
         ),
         const SizedBox(height: 10,),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Container(
             padding: const EdgeInsets.all(10),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),color: const Color(0xffFFFFFF)
             ),
             child:Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   children: [
                     GestureDetector(
                       onTap: (){
                         setState(() {
                           Navigator.push(context,MaterialPageRoute(builder: (context)=>const FitnessIngym()) );
                         });
                       },
                       child: Container(
                         padding: const EdgeInsets.all(10),
                         decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xffC070FF),
                         ),
                         child: const Center(child:Image(image: AssetImage("Asset/icons/form/Group.png"),),),
                       ),
                     ),
                     const Spacer(),
                     Column(
                       children: const [
                         ReusableText(title: 'Topic',size: 13,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                         SizedBox(height: 10,),
                         ReusableText(title: '235',size: 16,weight: FontWeight.w700,color: Color(0xff485470),),
                       ],
                     ),
                     const SizedBox(width: 20,),
                     Column(
                       children: const [
                         ReusableText(title: 'Posts',size: 13,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                         SizedBox(height: 10,),
                         ReusableText(title: '534',size: 16,weight: FontWeight.w700,color: Color(0xff485470),),
                       ],
                     ),
                   ],
                 ),
                 const SizedBox(height: 10,),
                 const ReusableText(title: 'Fitness in Gym',size: 13,weight: FontWeight.w700,color: Color(0xff485470),),
                 const SizedBox(height: 10,)
                 ,                  const ReusableText(title: 'Exercise and Nutrition for Optimal Fitness" - This topic\nemphasizes the importance of regular exercise and\nhealthy...',size: 12,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                 const SizedBox(height: 10,),
                 const Divider(thickness: 2,color: Color(0xffF1F4FB),height:2,),
                 const SizedBox(height: 10,),
                 const ListTile(
                   leading: Image(
                     height: 40,width: 40,
                     image: AssetImage("Asset/images/form/Group 1000004117.png"),),
                   title:                  ReusableText(title: 'What Training Should I Be Doing to Lose Weight?',size: 11,weight: FontWeight.w600,color: Color(0xff485470),),
                   subtitle:                   ReusableText(title: 'Last reply by mark_henry2, 13 minutes ago',size: 13,weight: FontWeight.w700,color: Color(0xff7D8CAC),),
                 )
               ],
             ),
           ),
         ),
         const SizedBox(height: 10,),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: Container(
             padding: const EdgeInsets.all(10),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),color: const Color(0xffFFFFFF)
             ),
             child:Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   children: [
                     GestureDetector(
                       onTap: (){
                         setState(() {
                           Navigator.push(context,MaterialPageRoute(builder: (context)=>const FitnessIngym()) );
                         });
                       },
                       child: Container(
                         padding: const EdgeInsets.all(10),
                         decoration: const BoxDecoration(shape: BoxShape.circle,color: Color(0xff5A8CFF),
                         ),
                         child: const Center(child:Image(image: AssetImage("Asset/icons/form/Group.png"),),),
                       ),
                     ),
                     const Spacer(),
                     Column(
                       children: const [
                         ReusableText(title: 'Topic',size: 13,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                         SizedBox(height: 10,),
                         ReusableText(title: '235',size: 16,weight: FontWeight.w700,color: Color(0xff485470),),
                       ],
                     ),
                     const SizedBox(width: 20,),
                     Column(
                       children: const [
                         ReusableText(title: 'Posts',size: 13,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                         SizedBox(height: 10,),
                         ReusableText(title: '534',size: 16,weight: FontWeight.w700,color: Color(0xff485470),),
                       ],
                     ),
                   ],
                 ),
                 const SizedBox(height: 10,),
                 const ReusableText(title: 'Fitness in Gym',size: 13,weight: FontWeight.w700,color: Color(0xff485470),),
                 const SizedBox(height: 10,),
                 const ReusableText(title: 'Exercise and Nutrition for Optimal Fitness" - This topic\nemphasizes the importance of regular exercise and\nhealthy...',size: 12,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                 const SizedBox(height: 10,),
                 const Divider(thickness: 2,color: Color(0xffF1F4FB),height:2,),
                 const SizedBox(height: 10,),
                 const ListTile(
                   leading: Image(
                     height: 40,width: 40,
                     image: AssetImage("Asset/images/form/Group 1000004117.png"),),
                   title: ReusableText(title: 'What Training Should I Be Doing to Lose Weight?',size: 11,weight: FontWeight.w600,color: Color(0xff485470),),
                   subtitle:ReusableText(title: 'Last reply by mark_henry2, 13 minutes ago',size: 13,weight: FontWeight.w700,color: Color(0xff7D8CAC),),
                 )
               ],
             ),
           ),
         ),
         const SizedBox(height: 20,)
        ],
      ),
    );
  }
}
