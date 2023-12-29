import 'package:flutter/material.dart';


class MyAlbumTab extends StatefulWidget {
  const MyAlbumTab({super.key});

  @override
  State<MyAlbumTab> createState() => _MyAlbumTabState();
}

class _MyAlbumTabState extends State<MyAlbumTab> {

  final List<String> imgList=[
'Asset/images/album/Rectangle 23850.png',
'Asset/images/album/Rectangle 23850 (1).png',
'Asset/images/album/Rectangle 23850 (2).png',
  ];


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,itemCount: imgList.length,
            itemBuilder: (BuildContext context, int index) { return Container(
              margin: const EdgeInsets.only(bottom: 15),
            width: MediaQuery.sizeOf(context).width*1,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,

            ),
            child: Column(
              children: [
                Row(
                  children: [

                    const Text(
                     'Album List One',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff212121),
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    PopupMenuButton<int>(
                      padding: const EdgeInsets.all(0),
                      icon: const Icon(
                        Icons.more_horiz,
                        color: Color(0xff7D8CAC),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      itemBuilder: (context) => [
                        // Popup menu item 1
                        const PopupMenuItem<int>(
                          value: 0,
                          child: Text("Share"),
                        ),
                        const PopupMenuItem<int>(
                          value: 1,
                          child: Text("Edit"),
                        ),
                        // Popup menu item 2
                        const PopupMenuItem<int>(
                          value: 2,
                          child: Text("Delete"),
                        ),
                      ],
                      offset: const Offset(0, 40),
                      color: const Color(0xffFFFFFF),
                      elevation: 2,
                    ),


                  ],
                ),
                Image(
                    fit: BoxFit.cover,
                    image: AssetImage(imgList[index].toString()))
              ],
            ),
          ); },)

        ],
      ),
    );
  }
}
