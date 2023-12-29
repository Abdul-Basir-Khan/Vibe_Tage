import 'package:flutter/material.dart';


class OtherPlayListTab extends StatefulWidget {
  const OtherPlayListTab({super.key});

  @override
  State<OtherPlayListTab> createState() => _OtherPlayListTabState();
}

class _OtherPlayListTabState extends State<OtherPlayListTab> {



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          color: Colors.white,width: MediaQuery.sizeOf(context).width*1,
          padding: const EdgeInsets.all(10),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Popular Playlist",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight:
                    FontWeight.w600,
                    color: Color(
                        0xff000000)),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage("Asset/images/playlist/Group 1000002291.png")),
                        SizedBox(height: 10,),
                        Text(
                          "Cartoon Movies",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight:
                              FontWeight.w600,
                              color: Color(
                                  0xff212121)),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage("Asset/images/playlist/2.png")),

                        SizedBox(height: 10,),  Text(
                          "Full Harry Porter ",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight:
                              FontWeight.w600,
                              color: Color(
                                  0xff212121)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          color: Colors.white,width: MediaQuery.sizeOf(context).width*1,
          padding: const EdgeInsets.all(10),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Popular Playlist",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight:
                    FontWeight.w600,
                    color: Color(
                        0xff000000)),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage("Asset/images/playlist/Group 1000002291 (1).png")),
                        SizedBox(height: 10,),
                        Text(
                          "Zombie Movies",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight:
                              FontWeight.w600,
                              color: Color(
                                  0xff212121)),
                        ),
                      ],
                    ),
                    SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(image: AssetImage("Asset/images/playlist/1.png")),

                        SizedBox(height: 10,),  Text(
                          "3D Art on car",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight:
                              FontWeight.w600,
                              color: Color(
                                  0xff212121)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
        const SizedBox(height: 10,),
        Container(
          color: Colors.white,width: MediaQuery.sizeOf(context).width*1,
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Sponserd",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight:
                    FontWeight.w600,
                    color: Color(
                        0xff000000)),
              ),
              const SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Image(image: AssetImage("Asset/images/playlist/Banner 3 1.png"),),
            )

            ],
          ),
        ),

      ],
    );
  }
}
