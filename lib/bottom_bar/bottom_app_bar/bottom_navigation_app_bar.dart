import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vibe_tag/screens/More_tab/more_main_tab.dart';
import 'package:vibe_tag/screens/hiring_screen/hiring_screen.dart';
import 'package:vibe_tag/screens/product_home_page/product_home.dart';
import 'package:vibe_tag/screens/product_trend/product_catogories.dart';
import 'package:vibe_tag/screens/product_trend/product_trends.dart';

import '../../screens/register/reusabletext.dart';


class BottomNavigationAppBar extends StatefulWidget {
  @override
  _BottomNavigationAppBarState createState() => _BottomNavigationAppBarState();
}

class _BottomNavigationAppBarState extends State<BottomNavigationAppBar> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HiringScreen(),
    const ProductCategories(),
    const SizedBox(),
    const ProductHome(),
    const MoreMainTab(),
  ];


  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: _children[_currentIndex],
        bottomNavigationBar: BottomAppBar(
          height: 70,
          child: Container(
            color: const Color(0xffF5F4F8),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BottomTab(onTap:(){
                    onTabTapped(0);
                  }, title: 'Home', icon: 'Asset/icons/bottom_bar/Home-3.svg', textAndIconColor: _currentIndex==0?const Color(0xffFF9200):const Color(0xffBBC4D9),),
                  BottomTab(onTap:(){
                    onTabTapped(1);
                  },textAndIconColor: _currentIndex==1?const Color(0xffFF9200):const Color(0xffBBC4D9), title: 'Trending', icon: 'Asset/icons/bottom_bar/trend.svg' ,),
                  BottomTab(onTap:(){
                    onTabTapped(2);
                  },textAndIconColor: _currentIndex==2?const Color(0xffFF9200):const Color(0xffBBC4D9), title: 'Buzzin', icon: 'Asset/icons/bottom_bar/bizzin.svg' ,),
                  BottomTab(onTap:(){
                    onTabTapped(3);
                  },textAndIconColor: _currentIndex==3?const Color(0xffFF9200):const Color(0xffBBC4D9), title: 'Store', icon: 'Asset/icons/bottom_bar/Store.svg' ,),
                  BottomTab(onTap:(){
                    onTabTapped(4);
                  },textAndIconColor: _currentIndex==4?const Color(0xffFF9200):const Color(0xffBBC4D9), title: 'More', icon: 'Asset/icons/bottom_bar/more.svg' ,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomTab extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onTap;
  final Color textAndIconColor;
  const BottomTab({
    super.key,
     required this.title, required this.icon, required this.onTap, required this.textAndIconColor,
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
         SizedBox(height: 35,width: 25,child: SvgPicture.asset(icon,color: textAndIconColor,),),
          const SizedBox(height: 4,),
          ReusableText(title: title,size: 10,weight: FontWeight.w500,color: textAndIconColor,),
        ],
      ),
    );
  }
}
