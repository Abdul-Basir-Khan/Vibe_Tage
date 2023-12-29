import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/Album_screen/album_screen.dart';
import 'package:vibe_tag/screens/More_tab/more_sub_tab.dart';
import 'package:vibe_tag/screens/article_screen/article_screen.dart';
import 'package:vibe_tag/screens/blog/blog_ui.dart';
import 'package:vibe_tag/screens/cart_mobile/cart_mobile_screen.dart';
import 'package:vibe_tag/screens/create/create_group.dart';
import 'package:vibe_tag/screens/create/create_page_group.dart';
import 'package:vibe_tag/screens/event/event_screen.dart';
import 'package:vibe_tag/screens/gift/gift_home.dart';
import 'package:vibe_tag/screens/playlist_screen/playlist_screen.dart';
import 'package:vibe_tag/screens/post/saved_post.dart';
import 'package:vibe_tag/screens/product_trend/product_catogories.dart';
import '../Model/icon_and_text_model.dart';
import '../register/reusabletext.dart';

class MoreMainTab extends StatefulWidget {
  const MoreMainTab({super.key});

  @override
  State<MoreMainTab> createState() => _MoreMainTabState();
}

class _MoreMainTabState extends State<MoreMainTab> {

  final List<IconTextModel> allTabs=[
    IconTextModel(
  iconRequired: 'Asset/icons/playlist/Iconly Bold Buy.png',
  textRequired: 'Charts'),
    IconTextModel(
        iconRequired: 'Asset/icons/playlist/Subtract (1).png',
        textRequired: 'Playlist'),
    IconTextModel(
        iconRequired: 'Asset/images/playlist/set_up/001-sticky-notes.png',
        textRequired: 'Post'),
    IconTextModel(
        iconRequired: 'Asset/images/playlist/set_up/Group.png',
        textRequired: 'Blogs'),
    IconTextModel(
        iconRequired: 'Asset/images/playlist/set_up/Group (1).png',
        textRequired: 'My Pages'),
    IconTextModel(
        iconRequired: 'Asset/images/playlist/set_up/Vector.png',
        textRequired: 'Event'),
    IconTextModel(
        iconRequired: 'Asset/icons/playlist/Iconly Bold Image.png',
        textRequired: 'Albums'),
    IconTextModel(
        iconRequired: 'Asset/icons/playlist/3 User.png',
        textRequired: 'Groups'),
    IconTextModel(
        iconRequired: 'Asset/icons/playlist/Group (1).png',
        textRequired: 'Gifts'),
    IconTextModel(
        iconRequired: 'Asset/images/playlist/set_up/011-thinking.png',
        textRequired: 'Articles'),
    IconTextModel(
        iconRequired: 'Asset/icons/playlist/Layer 2 (1).png',
        textRequired: 'Marketplace'),
    IconTextModel(
        iconRequired: 'Asset/images/playlist/set_up/013-box.png',
        textRequired: 'Products'),
    IconTextModel(
        iconRequired: 'Asset/images/playlist/quick_pins/014-compass.png',
        textRequired: 'Explore'),
    IconTextModel(
        iconRequired: 'Asset/images/playlist/quick_pins/007-notes.png',
        textRequired: 'Blogs'),
    IconTextModel(
        iconRequired: 'Asset/images/playlist/quick_pins/002-menu.png',
        textRequired: 'See More'),
  ];



  final List pageToBeNavigate = [
    const CartMobileScreen(),
    const PlaylistScreen(),
    const SavedPost(),
    const BlogUi(),
    const Createpage(),
    const EventScreen(),
    const AlbumScreen(),
    const CreateGroup(),
    const GiftScreen(),
    const ArticalScreen(),
    const SizedBox(),
   const  ProductCategories(),
    const SizedBox(),
    const SizedBox(),
    const MoreSubTab(),

  ];


  navigateToPage(int index) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return pageToBeNavigate[index];
    }));
  }


  int? _currentIndex;

  @override
  void initState() {
    _currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 5),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const SizedBox(
                      height: 10,
                    ),
                    ...List.generate(
                    allTabs.length,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            _currentIndex = index;
                          });
                          navigateToPage(index);
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _currentIndex == index
                                ? const Color(0xffF1F4FB)
                                : Colors.transparent,
                          ),
                          child: Row(
                            children: [
                              Image(
                                  color: _currentIndex == index
                                      ? const Color(0xff485470)
                                      : const Color(0xffC8D1E5),
                                  image: AssetImage(
                                      allTabs[index].iconRequired.toString())),
                              const SizedBox(
                                width: 15,
                              ),
                              ReusableText(
                                title: allTabs[index].textRequired.toString(),
                                size: 15,
                                weight: FontWeight.w600,
                                color: _currentIndex == index
                                    ? const Color(0xff212121)
                                    : const Color(0xff485470),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
