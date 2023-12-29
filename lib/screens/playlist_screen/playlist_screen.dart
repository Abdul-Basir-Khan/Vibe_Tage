import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/playlist_screen/tabs/my_playlist_tab.dart';
import 'package:vibe_tag/screens/playlist_screen/tabs/other_playlist_tab.dart';

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({super.key});

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  final List<String> tabText = [
    'My playlist',
    'Other playlist',

  ];
  final List pages = [
    const MyPlaylistTab(),
   const OtherPlayListTab(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffF8F9FB),
          body: ListView(
            shrinkWrap: true,
            physics:const ScrollPhysics(),
            children: [

              SingleChildScrollView(
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Container(
                  width: MediaQuery.sizeOf(context).width*1,
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  color: const Color(0xffF8F9FB),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...List.generate(
                          tabText.length,
                              (index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                _currentIndex = index;
                              });
                            },
                            child: Container(
                              height: 37,

                              margin: const EdgeInsets.only(right: 10),
                              padding: const EdgeInsets.only(
                                  top: 9, right: 20, left: 20, bottom: 9),
                              decoration: BoxDecoration(
                           border: Border.all(color: _currentIndex==index?const Color(0xffFF9200):Colors.transparent),
                                borderRadius: BorderRadius.circular(26),
                                color: _currentIndex==index?const Color(0xffFFFFFF):const Color(0xffFFFFFF),
                              ),
                              child: Center(
                                child: Text(
                                  tabText[index].toString(),
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: _currentIndex == index
                                          ? const Color(0xffFF9200)
                                          : const Color(0xff7D8CAC),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          )
                      ),
                     const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,color: Color(0xffC8D1E5),
                        ),
                        child: const Image(image: AssetImage("Asset/images/playlist/Iconly Light Search.png"),),
                      ),
                    ],
                  ),
                ),
              ),


              const SizedBox(height: 20,),

              pages[_currentIndex]

            ],
          ),
        ));
  }
}
