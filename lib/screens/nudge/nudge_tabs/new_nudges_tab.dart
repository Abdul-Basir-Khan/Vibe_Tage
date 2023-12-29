import 'package:flutter/material.dart';

import '../constant_nudge/custom_nudge_tile.dart';


class NewNudgeTab extends StatefulWidget {
  const NewNudgeTab({super.key});

  @override
  State<NewNudgeTab> createState() => _NewNudgeTabState();
}

class _NewNudgeTabState extends State<NewNudgeTab> {

  final List <String> imagePath=[
    'Asset/images/nudge/Ellipse 753.png',
    'Asset/images/nudge/Ellipse 753 (1).png',
    'Asset/images/nudge/Ellipse 753 (2).png',
    'Asset/images/nudge/Ellipse 753 (3).png',
    'Asset/images/nudge/Group 76754.png',
    'Asset/images/nudge/Group 76754 (1).png',
    'Asset/images/nudge/Group 76754 (2).png',
    'Asset/images/nudge/Group 76754 (3).png',

  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
  ListView.builder(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,itemCount: imagePath.length,
    itemBuilder: (BuildContext context, int index) { return       CustomNudgeTile(imagePath: imagePath[index].toString(),); },)


      ],
    );
  }
}
