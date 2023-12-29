import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/subscription_plan/friend_request_tab.dart';
import 'package:vibe_tag/screens/subscription_plan/new_friend_tab.dart';

import '../register/reusabletext.dart';


class FriendRequestScreenAndList extends StatefulWidget {
  const FriendRequestScreenAndList({super.key});

  @override
  State<FriendRequestScreenAndList> createState() => _FriendRequestScreenAndListState();
}

class _FriendRequestScreenAndListState extends State<FriendRequestScreenAndList> {
  int  _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child : Scaffold(body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.50,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ReusableText(
                        title: 'Friend Request',
                        size: 15,
                        weight: FontWeight.w600,
                        color: _currentIndex == 0
                            ? const Color(0xffFF9200)
                            :const Color(0xff485470) ,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 2,
                        height: 2,
                        color: _currentIndex == 0
                            ? const Color(0xffFF9200)
                            :const Color(0xff485470) ,
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.50,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ReusableText(
                        title: 'New Friends',
                        size: 15,
                        weight: FontWeight.w600,
                        color: _currentIndex == 1
                            ? const Color(0xffFF9200)
                            :const Color(0xff485470) ,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Divider(
                        thickness: 2,
                        height: 2,
                        color: _currentIndex == 1
                            ? const Color(0xffFF9200)
                            :const Color(0xff485470) ,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          _currentIndex == 0?const Expanded(child: FriendRequestTab()):const Expanded(child: NewFriendListTab())
        ],
      ),),
    );
  }
}
