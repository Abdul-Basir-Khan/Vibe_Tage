import 'package:flutter/material.dart';

import '../register/reusabletext.dart';
import 'constant/reusing_for_friends.dart';

class NewFriendListTab extends StatefulWidget {
  const NewFriendListTab({super.key});

  @override
  State<NewFriendListTab> createState() => _NewFriendListTabState();
}

class _NewFriendListTabState extends State<NewFriendListTab> {

  bool _isVisible=false;

  final List<friendModel> imagesList=[
    friendModel(imagePath: 'Asset/images/subscription_plan/Ellipse 11.png'),
    friendModel(imagePath: 'Asset/images/subscription_plan/Ellipse 12.png'),
    friendModel(imagePath: 'Asset/images/subscription_plan/Ellipse 13.png'),
    friendModel(imagePath: 'Asset/images/subscription_plan/Ellipse 14.png'),
    friendModel(imagePath: 'Asset/images/subscription_plan/Ellipse 15.png'),
    friendModel(imagePath: 'Asset/images/subscription_plan/Ellipse 16.png'),
    friendModel(imagePath: 'Asset/images/subscription_plan/Ellipse 17.png'),
    friendModel(imagePath: 'Asset/images/subscription_plan/Ellipse 18.png'),

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Expanded(child: ListView.separated(
          itemCount: imagesList.length,
          itemBuilder: (BuildContext context, int index) {

            return StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) {
              return  ListTileForFriend(imagePath: imagesList[index].imagePath.toString(), widgetRequired:

              GestureDetector(
                onTap: (){
                  setState(() {
                    _isVisible= !_isVisible;
                  });
                },
                child:
                _isVisible ?
                Container(

                  height: 40,width: 123,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color:  const Color(0xff99A7C7),
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: const Center(
                    child: ReusableText(
                      title: 'Following',
                      size: 16,
                      weight: FontWeight.w700,
                      color: Color(0xffFFFFFF) ,
                    ),
                  ),
                )
                 :
                Container(

                  height: 40,width: 123,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [
                          Color(0xffFFC107),
                          Color(0xffFF8205),
                        ]
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffC8D1E5),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_add_alt_outlined,color: Colors.white,),
                      SizedBox(width: 10,),
                      ReusableText(
                        title: 'Follow',
                        size: 16,
                        weight: FontWeight.w700,
                        color: Color(0xffFFFFFF) ,
                      ),
                    ],
                  ),
                )
                ,
              ),
              );
            },);
          }, separatorBuilder: (BuildContext context, int index) {
            return const Divider(thickness: 2,);
        },),),







      ],
    );
  }
}


class friendModel{
  final String? imagePath;

  friendModel({this.imagePath, });
}
