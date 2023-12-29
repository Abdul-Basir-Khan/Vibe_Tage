import 'package:flutter/material.dart';

import '../../../register/reusabletext.dart';



class CustomListTileTask extends StatelessWidget {


  final Widget widgetRequired;
  final String subtitleText;
  final Color subtitleColor;
  final Color containerColor;
  final Widget? statusContainer;

  CustomListTileTask({Key? key, required this.subtitleText, required this.subtitleColor, required this.widgetRequired, required this.containerColor,  this.statusContainer}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      color:containerColor,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListTile(
              leading: widgetRequired,
              contentPadding:EdgeInsets.symmetric(horizontal: 10),
              title: ReusableText(title: 'New Banner (1000 x 400)',size: 15,weight: FontWeight.w600,color: Color(0xff485470),),
              subtitle: ReusableText(title: subtitleText,size: 13,weight: FontWeight.w500,color: subtitleColor,),
              trailing:Image(image: AssetImage("Asset/icons/chat_update/Chat-3.png"),color: Color(0xff99A7C7),),
            ),
          ),
          Positioned(
            right: 12,top: 18,
            child:statusContainer??SizedBox()
          ),
        ],
      ),
    );
  }
}
