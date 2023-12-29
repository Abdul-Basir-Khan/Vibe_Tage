import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Container(
          height: 40,
          width: 40,
          margin: const EdgeInsets.all(10),
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Color(0xff3D3D3D)),
          child: const Icon(
            Icons.close,
            color: Color(0xffBBBBBB),
          ),
        ),
        actions: [
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffFFFFFF)),
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent),
            child: const Image(
              image: AssetImage("Asset/images/Group.png"),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffFFFFFF)),
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent),
            child: const Image(
              image: AssetImage("Asset/images/Iconly Bold Add User.png"),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 7),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffFFFFFF)),
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent),
            child: const Image(
              image: AssetImage("Asset/images/Bookmark-3.png"),
            ),
          ),
          const Icon(Icons.more_vert, color: Color(0xffFFFFFF))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Image(
                width: MediaQuery.sizeOf(context).width * 1,fit: BoxFit.cover,
                image: const AssetImage("Asset/images/Rectangle 24267.png")),
          ),
        ],
      ),
    );
  }
}
