import 'package:flutter/material.dart';

import '../../Model/icon_and_text_model.dart';


class MyPlaylistTab extends StatelessWidget {
  const MyPlaylistTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height*0.90,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(image: AssetImage("Asset/images/playlist/empty-box 1.png")),
            const SizedBox(height: 10,),
            const Text(
              "There is no playlist yet!",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight:
                  FontWeight.w700,
                  color: Color(
                      0xff000000)),
            ),
            const SizedBox(height: 10,),
            const Text(
              "Create your new playlist buy clicking the button\nbelow & add whatever you want!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 13,
                  fontWeight:
                  FontWeight.w600,
                  color: Color(
                      0xff7D8CAC)),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 53,
              padding: const EdgeInsets.all(10),
              width: MediaQuery.sizeOf(context).width*0.90,
              decoration: BoxDecoration(
                borderRadius:
                BorderRadius.circular(9),
                color: const Color(0xffF1F4FB),
              ),
              child: const Row(
                crossAxisAlignment:
                CrossAxisAlignment.center,
                mainAxisAlignment:
                MainAxisAlignment.center,
                children: [
                  Image(
                      image: AssetImage(
                         "Asset/images/playlist/Group 1000002189.png")),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                   "Create new playlist",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight:
                        FontWeight.w500,
                        color: Color(
                            0xff485470)),
                  )
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
