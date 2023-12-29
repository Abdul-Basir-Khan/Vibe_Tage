import 'package:flutter/material.dart';

import '../register/reusabletext.dart';


class StreamEndCall extends StatefulWidget {
  const StreamEndCall({super.key});

  @override
  State<StreamEndCall> createState() => _StreamEndCallState();
}

class _StreamEndCallState extends State<StreamEndCall> {
  final List<String> imagePaths1=[
    'Asset/icons/stream/Volume Down.png',
    'Asset/icons/stream/Group (1).png',
    'Asset/icons/stream/Setting-2.png',
  ];

  bool isImage1 = false;

  void _changeImage() {
    setState(() {
      isImage1 = !isImage1;
    });
  }
  bool isImage2 = false;

  void _changeImage1() {
    setState(() {
      isImage2 = !isImage2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Center(
            child: Container(

              height: 246,width: 246,decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  width: 1,
                  color: Color(0xf30485470)),
            ),
              child: Container(
                height: 203,width: 203,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 1.4,
                      color: Color(0xf40485470)),
                ),
                child: Container(
                  height: 167,width: 167,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 1.8,
                        color: Color(0xf80485470)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("Asset/images/stream/Ellipse 2.png"),
                    ),
                  ),
                ),

              ),
            ),
          ),
          SizedBox(height: 20,),
         Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 ReusableText(
                   title: 'Mark Henry',
                   size: 26,
                   weight: FontWeight.w700,
                   color: Color(0xff212121),
                 ),
                 SizedBox(width: 10,),
                 Image(image: AssetImage("Asset/icons/register/Subtract.png")),
               ],
             ),
             SizedBox(height: 10,),
             ReusableText(
               title: '@mark_h01',
               size: 15,
               weight: FontWeight.w400,
               color: Color(0xff212121),
             ),

           ],
         ),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: _changeImage,
                child: Container(
                  height: 56,
                  width: 55,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      border: Border.all(
                        color: const Color(0xffC8D1E5),
                      )),
                  child:  isImage1?
                  Stack(children: [
                    Image(
                      image: AssetImage(
                          "Asset/icons/stream/Iconly Bold Voice.png"),
                      color: Color((0xffC8D1E5)),
                    ),
                    Image(
                      image: AssetImage(
                          "Asset/icons/stream/Group 1000002753.png"),
                      color: Color((0xffC22824)),
                    ),
                  ])
                      : Image(
                    image:AssetImage("Asset/icons/stream/Iconly Bold Voice.png"),

                    color: Color(0xffC8D1E5),
                  ),
                ),
              ),
              GestureDetector(
                onTap: _changeImage1,
                child:

                Container(
                  height: 56,
                  width: 55,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      border: Border.all(
                        color: const Color(0xffC8D1E5),
                      )),
                  child:  isImage2?
                  Stack(children: [
                    Image(
                      image: AssetImage(
                          "Asset/icons/stream/Iconly Bold Video.png"),
                      color: Color((0xffC8D1E5)),
                    ),
                    Image(
                      image: AssetImage(
                          "Asset/icons/stream/Group 1000002753.png"),
                      color: Color((0xffC22824)),
                    ),
                  ])
                      : Image(
                    image:AssetImage("Asset/icons/stream/Iconly Bold Video.png"),

                    color: Color(0xffC8D1E5),
                  ),
                ),
              ),
              ...List.generate(imagePaths1.length, (index) =>   Container(
                height: 56,
                width: 55,
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                    border: Border.all(
                      color: const Color(0xffC8D1E5),
                    )),
                child: Center(
                  child: Image(
                    image: AssetImage(imagePaths1[index].toString()),
                    color: Color((0xffC8D1E5)),
                  ),
                ),
              ),)
            ],
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>StreamEndCall()));
            },
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1,
              height: 56,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffFF4C4B),
              ),
              child: const Center(
                child: ReusableText(
                  title: 'End Call',
                  size: 17,
                  weight: FontWeight.w700,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          ),

        ],
      ),
    ),));
  }
}
