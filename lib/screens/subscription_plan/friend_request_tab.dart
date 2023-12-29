import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/subscription_plan/constant/reusing_for_request.dart';

class FriendRequestTab extends StatefulWidget {
  const FriendRequestTab({super.key});

  @override
  State<FriendRequestTab> createState() => _FriendRequestTabState();
}

class _FriendRequestTabState extends State<FriendRequestTab> {

  final List<requestModel> imageAndText=[
    requestModel(imagePath: 'Asset/images/subscription_plan/Ellipse 751.png',subtitle: 'Just now'),
    requestModel(imagePath: 'Asset/images/subscription_plan/Ellipse 752.png',subtitle: '3 min ago'),
    requestModel(imagePath: 'Asset/images/subscription_plan/Ellipse 754.png',subtitle: '3 min ago'),
    requestModel(imagePath: 'Asset/images/subscription_plan/Ellipse 755.png',subtitle: '3 min ago'),
    requestModel(imagePath: 'Asset/images/subscription_plan/Ellipse 756.png',subtitle: '3 min ago'),
    requestModel(imagePath: 'Asset/images/subscription_plan/Ellipse 757.png',subtitle: '3 min ago'),
    requestModel(imagePath: 'Asset/images/subscription_plan/Ellipse 758.png',subtitle: '3 min ago'),
    requestModel(imagePath: 'Asset/images/subscription_plan/Ellipse 759.png',subtitle: '3 min ago'),
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,children: [
     Expanded(child:   ListView.builder(
       itemCount: imageAndText.length,
       itemBuilder: (BuildContext context, int index) {

         return  Column(
           children: [
             ListTileForRequests(imagePath:imageAndText[index].imagePath.toString(), subtitleRequired: imageAndText[index].subtitle.toString()),
             const SizedBox(height: 10,),
             const Divider(thickness: 2,height: 2,color: Color(0xffE6EAF3),),
             const SizedBox(height: 10,),
           ],
         );
       },),),
    ],
    );
  }
}

class requestModel{
  final String? imagePath;
  final String? subtitle;
  requestModel({this.imagePath, this.subtitle});
}
