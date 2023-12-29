import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:vibe_tag/screens/register/reusabletext.dart';

import '../../Model/icon_and_text_model.dart';

class BottomSheetsScreen extends StatefulWidget {
  const BottomSheetsScreen({super.key});

  @override
  State<BottomSheetsScreen> createState() => _BottomSheetsScreenState();
}

class _BottomSheetsScreenState extends State<BottomSheetsScreen> {
  final List bottomSheetName = [
    'For Post Menu One',
    'For Edit Post',
    'For Report',
    'For Post',
    'For Funding Request',
    'For Messages',
    'For Post Share',
    'For Set up',
    'For Quick Pin',
    'For Message Info',
    'For Message Delete',
    'For Social Accounts',
    'For Social Accounts',
    'For Product Delivery',
    'For Create Ads',
    'For Estimate Result',
    'For Paypal Details',
    'For Paypal Email',
    'For Delivery Details',
    'For Payment Method',
    'For Money You Like',
    'For Selecting Gender',
    'For Add Music',
    'For Gallery',
    'For Stickers',
    'For Playlist New',
    'For Saved To',
    'For Video Room',
    'For Room Activity',
  ];
  final List musicList = [
    'Asset/images/create/Rectangle 24094.png',
    'Asset/images/create/Rectangle 24094 (1).png',
    'Asset/images/create/Rectangle 24094 (2).png',
    'Asset/images/create/Rectangle 24094 (3).png',
    'Asset/images/create/Rectangle 24094 (4).png',
    'Asset/images/create/Rectangle 24094 (5).png',
    'Asset/images/create/Rectangle 24094 (6).png',
    'Asset/images/create/Rectangle 24094 (7).png',
    'Asset/images/create/Rectangle 24094 (8).png',
  ];
  final List galleryImages = [
    'Asset/images/create/for_gallery/Rectangle 24094.png',
    'Asset/images/create/for_gallery/Rectangle 24094 (1).png',
    'Asset/images/create/for_gallery/Rectangle 24094 (2).png',
    'Asset/images/create/for_gallery/Rectangle 24094 (3).png',
    'Asset/images/create/for_gallery/Rectangle 24094 (4).png',
    'Asset/images/create/for_gallery/Rectangle 24095.png',
    'Asset/images/create/for_gallery/Rectangle 24095 (1).png',
    'Asset/images/create/for_gallery/Rectangle 24095 (2).png',
    'Asset/images/create/for_gallery/Rectangle 24095 (3).png',
    'Asset/images/create/for_gallery/Rectangle 24095 (4).png',
    'Asset/images/create/for_gallery/Rectangle 24095 (5).png',
    'Asset/images/create/for_gallery/Rectangle 24096.png',
    'Asset/images/create/for_gallery/Rectangle 24096 (1).png',
    'Asset/images/create/for_gallery/Rectangle 24096 (2).png',
    'Asset/images/create/for_gallery/Rectangle 24096 (3).png',
    'Asset/images/create/for_gallery/Rectangle 24096 (4).png',
  ];
  final List stickers = [
    'Asset/images/create/image 93.png',
    'Asset/images/create/image 94.png',
    'Asset/images/create/image 95.png',
    'Asset/images/create/image 96.png',
    'Asset/images/create/image 97.png',
    'Asset/images/create/image 98.png',
    'Asset/images/create/image 99.png',
    'Asset/images/create/image 100.png',
    'Asset/images/create/image 101.png',
    'Asset/images/create/image 102.png',
    'Asset/images/create/image 103.png',
    'Asset/images/create/image 104.png',
    'Asset/images/create/image 105.png',
    'Asset/images/create/image 106.png',
    'Asset/images/create/image 107.png',

  ];
  final List<Color> colorList = [
    const Color(0xff519EF6),
    const Color(0xff00DAC8),
    const Color(0xffFFCC33),
    const Color(0xffFF7169),
    const Color(0xff736BED),
    const Color(0xff537FC3),
  ];
  final List<Color> colorList1 = [
    const Color(0xff2186FA),
    const Color(0xff00B9AA),
    const Color(0xffE5AC00),
    const Color(0xffFF3C31),
    const Color(0xff5E54F1),
    const Color(0xff386EC2),
  ];
  final List<String> iconPath = [
    'Asset/images/playlist/set_up/001-live-streaming.png',
    'Asset/images/playlist/set_up/002-photo-camera.png',
    'Asset/images/playlist/set_up/003-location.png',
    'Asset/images/playlist/set_up/004-feeling.png',
    'Asset/images/playlist/set_up/005-businessman.png',
    'Asset/images/playlist/set_up/009-user-group.png',
  ];
  final List<String> iconText = [
    'Go Live',
    'Photo',
    'Check in',
    'Feeling',
    'Sell',
    'Tag Friend',
  ];
  final List<IconTextModel> iconTextList = [
    IconTextModel(
        textRequired: 'Out of Stock',
        iconRequired: 'Asset/icons/post_menu/Group 1000003821.png'),
    IconTextModel(
        textRequired: 'Edit Post',
        iconRequired: 'Asset/icons/post_menu/Iconly Bold Edit.png'),
    IconTextModel(
        textRequired: 'Delete',
        iconRequired: 'Asset/icons/post_menu/Group 77268.png'),
    IconTextModel(
        textRequired: 'Copy Link',
        iconRequired: 'Asset/icons/post_menu/Union.png'),
    IconTextModel(
        textRequired: 'Disable Comments',
        iconRequired: 'Asset/icons/post_menu/Group 1000003491.png'),
    IconTextModel(
        textRequired: 'Open Post in New Tab',
        iconRequired: 'Asset/icons/post_menu/Group.png'),
    IconTextModel(
        textRequired: 'Edit Audience',
        iconRequired: 'Asset/icons/post_menu/Vector.png'),
    IconTextModel(
        textRequired: 'Pin Post',
        iconRequired: 'Asset/icons/post_menu/Vector (1).png'),
    IconTextModel(
        textRequired: 'Boast Post',
        iconRequired: 'Asset/icons/post_menu/Vector (2).png'),
  ];
  final List<IconTextModel> iconTextList1 = [
    IconTextModel(
        textRequired: 'Report',
        iconRequired: 'Asset/icons/post_menu/Danger-2.png'),
    IconTextModel(
        textRequired: 'Not Interested',
        iconRequired: 'Asset/icons/post_menu/Group1.png'),
    IconTextModel(
        textRequired: 'Copy Link',
        iconRequired: 'Asset/icons/post_menu/Union.png'),
  ];
  final List<IconTextModel> iconTextList2 = [
    IconTextModel(
        textRequired: 'Copy Link',
        iconRequired: 'Asset/icons/post_menu/Union.png'),
    IconTextModel(
        textRequired: 'Save Post',
        iconRequired: 'Asset/icons/post_menu/Bookmark-3.png'),
    IconTextModel(
        textRequired: 'Open Post in New Tab',
        iconRequired: 'Asset/icons/post_menu/Group.png'),
    IconTextModel(
        textRequired: 'Report Post',
        iconRequired: 'Asset/icons/post_menu/037---Waypoint-Flag.png'),
    IconTextModel(
        textRequired: 'Hide Post',
        iconRequired: 'Asset/icons/post_menu/Hide.png'),
  ];
  final List<IconTextModel> iconTextList3 = [
    IconTextModel(
        textRequired: 'Reply',
        iconRequired: 'Asset/images/history/reply_bottom_sheet/Vector.png'),
    IconTextModel(
        textRequired: 'Forward',
        iconRequired: 'Asset/images/history/reply_bottom_sheet/Vector (1).png'),
    IconTextModel(
        textRequired: 'Start Message',
        iconRequired: 'Asset/images/history/reply_bottom_sheet/Star-2.png'),
    IconTextModel(
        textRequired: 'Delete message',
        iconRequired:
        'Asset/images/history/reply_bottom_sheet/Group 77268.png'),
    IconTextModel(
        textRequired: 'Select message',
        iconRequired:
        'Asset/images/history/reply_bottom_sheet/Group 1000002495.png'),
    IconTextModel(
        textRequired: 'Copy',
        iconRequired: 'Asset/images/history/reply_bottom_sheet/Union.png'),
    IconTextModel(
        textRequired: 'Message info',
        iconRequired:
        'Asset/images/history/reply_bottom_sheet/Info Circle.png'),
  ];
  final List<IconTextModel> iconTextList4 = [
    IconTextModel(
        textRequired: 'Share this Video Post',
        iconRequired:
        'Asset/images/history/reply_bottom_sheet/Group 75662.png'),
    IconTextModel(
        textRequired: 'Reply',
        iconRequired: 'Asset/images/history/reply_bottom_sheet/Vector.png'),
    IconTextModel(
        textRequired: 'Forward',
        iconRequired: 'Asset/images/history/reply_bottom_sheet/Vector (1).png'),
    IconTextModel(
        textRequired: 'Start Message',
        iconRequired: 'Asset/images/history/reply_bottom_sheet/Star-2.png'),
    IconTextModel(
        textRequired: 'Delete message',
        iconRequired:
        'Asset/images/history/reply_bottom_sheet/Group 77268.png'),
    IconTextModel(
        textRequired: 'Copy',
        iconRequired: 'Asset/images/history/reply_bottom_sheet/Union.png'),
    IconTextModel(
        textRequired: 'Message info',
        iconRequired:
        'Asset/images/history/reply_bottom_sheet/Info Circle.png'),
  ];
  final List<IconTextModel> iconTextList5 = [
    IconTextModel(
        textRequired: 'Create Ad',
        iconRequired: 'Asset/images/playlist/set_up/001-megaphone.png'),
    IconTextModel(
        textRequired: 'Create Blogs',
        iconRequired: 'Asset/images/playlist/set_up/Group.png'),
    IconTextModel(
        textRequired: 'Create Event',
        iconRequired: 'Asset/images/playlist/set_up/Vector.png'),
    IconTextModel(
        textRequired: 'Create Group',
        iconRequired: 'Asset/images/playlist/set_up/009-user-group.png'),
    IconTextModel(
        textRequired: 'Create Page',
        iconRequired: 'Asset/images/playlist/set_up/Group (1).png'),
    IconTextModel(
        textRequired: 'Create Currency',
        iconRequired: 'Asset/images/playlist/set_up/003-currency.png'),
  ];
  final List<IconTextModel> iconTextList6 = [
    IconTextModel(
        textRequired: 'Shortcut to your page',
        iconRequired: 'Asset/images/playlist/quick_pins/Group.png'),
    IconTextModel(
        textRequired: 'Explore your group & discover other\nGroups',
        iconRequired: 'Asset/images/playlist/quick_pins/014-compass.png'),
    IconTextModel(
        textRequired: 'Checkout daily sale of your favorite\nitems',
        iconRequired: 'Asset/images/playlist/quick_pins/001-discount.png'),
    IconTextModel(
        textRequired: 'See all your Wishlists',
        iconRequired: 'Asset/images/Heart-3.png'),
    IconTextModel(
        textRequired: 'See all your inspired recently\nviewed shop items',
        iconRequired: 'Asset/images/playlist/quick_pins/002-history.png'),
    IconTextModel(
        textRequired: 'Publish, Edit, Discover, Product &\nBusiness',
        iconRequired: 'Asset/images/playlist/quick_pins/003-loupe.png'),
  ];
  final List<IconTextModel> iconTextList7 = [
    IconTextModel(
        textRequired: 'Share Now',
        iconRequired: 'Asset/images/playlist/Vector (1).png'),
    IconTextModel(
        textRequired: 'Share to Feed',
        iconRequired: 'Asset/images/playlist/Iconly Bold Send.png'),
    IconTextModel(
        textRequired: 'Share to your Story',
        iconRequired: 'Asset/images/playlist/Group.png'),
    IconTextModel(
        textRequired: 'Share in Chat',
        iconRequired: 'Asset/images/playlist/Iconly Bold Chat.png'),
  ];
  final List<IconTextModel> iconTextList8 = [
    IconTextModel(
        textRequired: 'Copy Link',
        iconRequired: 'Asset/images/playlist/Group 33451.png'),
    IconTextModel(
        textRequired: 'WhatsApp',
        iconRequired: 'Asset/images/playlist/Group 33440.png'),
    IconTextModel(
        textRequired: 'Facebook',
        iconRequired: 'Asset/images/playlist/Group 33438.png'),
    IconTextModel(
        textRequired: 'Messanger',
        iconRequired: 'Asset/images/playlist/Group 33446.png'),
    IconTextModel(
        textRequired: 'Twitter',
        iconRequired: 'Asset/images/playlist/Group 33439.png'),
    IconTextModel(
        textRequired: 'Instagram',
        iconRequired: 'Asset/images/playlist/Group 33449.png'),
    IconTextModel(
        textRequired: 'Skype',
        iconRequired: 'Asset/images/playlist/Group 33450.png'),
    IconTextModel(
        textRequired: 'Massage',
        iconRequired: 'Asset/images/playlist/Group 33441.png'),
  ];
  final List<IconTextModel> iconTextList9 = [
    IconTextModel(
        textRequired: 'Room Activity',
        iconRequired: 'Asset/images/event/bottom_sheet/Group 1000003393.png'),
    IconTextModel(
        textRequired: 'Invite Friends',
        iconRequired: 'Asset/images/event/bottom_sheet/Group 1000003392.png'),
    IconTextModel(
        textRequired: 'Schedule Time ',
        iconRequired: 'Asset/images/event/bottom_sheet/Group 1000003391.png'),
    IconTextModel(
        textRequired: 'Post Title & Cover',
        iconRequired: 'Asset/images/event/bottom_sheet/Group 1000003390.png'),
    IconTextModel(
        textRequired: 'Camera Controls',
        iconRequired: 'Asset/images/event/bottom_sheet/Iconly Bold Video.png'),
  ];
  final List<IconTextModel> iconTextList10 = [
    IconTextModel(
        textRequired: 'Charlie’s Room',
        iconRequired: 'Asset/images/event/bottom_sheet/Group 1000003436.png'),
    IconTextModel(
        textRequired: 'Surfing Vibes',
        iconRequired: 'Asset/images/event/bottom_sheet/Group 1000003437.png'),
    IconTextModel(
        textRequired: 'Vox Space',
        iconRequired: 'Asset/images/event/bottom_sheet/Group 1000003438.png'),
    IconTextModel(
        textRequired: 'Join Link',
        iconRequired: 'Asset/images/event/bottom_sheet/Group 1000003439.png'),

  ];
  final List liveSubtext=[
    'Surfing Vibes',
    'Everyone',
    'Now',
    'Add title & cover of your post',
    'Select Audio & Camera source',

  ];

  int? _currentIndex;
  int _currentIndex1 = 0;
  bool _switchValue = false;
  bool _isVisible = false;
  bool _isVisible1 = false;
  bool _isVisible2 = false;
  bool _isVisible3 = false;
  bool _isChecked= false;
  bool _isChecked1= false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListView(
              children: [
                GridView.builder(
                  itemCount: bottomSheetName.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 20 / 6,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _currentIndex = index;
                          _currentIndex == 0
                              ? showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder: (BuildContext context) {
                              return Wrap(
                                clipBehavior: Clip.antiAlias,
                                children: [
                                  Container(
                                    height:
                                    MediaQuery
                                        .sizeOf(context)
                                        .height *
                                        0.80,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(20)),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      physics: const ScrollPhysics(),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            ListView.builder(
                                              itemCount: iconTextList.length,
                                              shrinkWrap: true,
                                              itemBuilder:
                                                  (BuildContext context,
                                                  int index) {
                                                return Container(
                                                  height: 53,
                                                  padding:
                                                  const EdgeInsets.all(
                                                      10),
                                                  margin:
                                                  const EdgeInsets.only(
                                                      bottom: 10),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        9),
                                                    color: const Color(
                                                        0xffF1F4FB),
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .center,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .start,
                                                    children: [
                                                      Image(
                                                          image: AssetImage(
                                                              iconTextList[
                                                              index]
                                                                  .iconRequired
                                                                  .toString())),
                                                      const SizedBox(
                                                        width: 15,
                                                      ),
                                                      Text(
                                                        iconTextList[index]
                                                            .textRequired
                                                            .toString(),
                                                        style: const TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                            FontWeight
                                                                .w500,
                                                            color: Color(
                                                                0xff212121)),
                                                      )
                                                    ],
                                                  ),
                                                );
                                              },
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          )
                              : _currentIndex == 1
                              ? showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function())
                                    setState) {
                                  return Wrap(
                                    clipBehavior: Clip.antiAlias,
                                    children: [
                                      Container(
                                        height: MediaQuery
                                            .sizeOf(context)
                                            .height *
                                            0.86,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(
                                                20)),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          physics: const ScrollPhysics(),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                const EdgeInsets.all(
                                                    10),
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  children: <Widget>[
                                                    Row(
                                                      children: [
                                                        const Spacer(),
                                                        const Text(
                                                          "Edit Post",
                                                          style: TextStyle(
                                                              fontWeight:
                                                              FontWeight
                                                                  .w700,
                                                              fontSize:
                                                              16,
                                                              color: Color(
                                                                  0xff000000)),
                                                        ),
                                                        const Spacer(),
                                                        Container(
                                                          height: 25,
                                                          width: 25,
                                                          decoration: const BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              color: Color(
                                                                  0xffC8D1E5)),
                                                          child: const Icon(
                                                              Icons.close,
                                                              color: Color(
                                                                  0xffFFFFFF)),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    const Divider(
                                                      thickness: 2,
                                                      height: 2,
                                                      color: Color(
                                                          0xffE3E8F2),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    const ListTile(
                                                      contentPadding:
                                                      EdgeInsets.zero,
                                                      leading: Image(
                                                        image: AssetImage(
                                                            "Asset/images/post_menu/Group 289749.png"),
                                                      ),
                                                      title: Text(
                                                        "Momin Hassan",
                                                        style: TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w700,
                                                            fontSize: 15,
                                                            color: Color(
                                                                0xff212121)),
                                                      ),
                                                      subtitle: Text(
                                                        "@momin_h911",
                                                        style: TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w500,
                                                            fontSize: 12,
                                                            color: Color(
                                                                0xff7D8CAC)),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    RichText(
                                                      text:
                                                      const TextSpan(
                                                        text:
                                                        'Exclusive Place to Visit',
                                                        style: TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w600,
                                                            fontSize: 15,
                                                            color: Color(
                                                                0xff212121)),
                                                        children: [
                                                          TextSpan(
                                                              text:
                                                              ' #Newyork',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                                  fontSize:
                                                                  15,
                                                                  color: Color(
                                                                      0xffFF9200)))
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Image(
                                                  height: 375,
                                                  width:
                                                  MediaQuery
                                                      .sizeOf(
                                                      context)
                                                      .width *
                                                      1,
                                                  image: const AssetImage(
                                                      "Asset/images/post_menu/Rectangle 24117.png")),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets
                                                    .symmetric(
                                                    horizontal: 10),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Container(
                                                          height: 38,
                                                          padding: const EdgeInsets
                                                              .symmetric(
                                                              horizontal:
                                                              10,
                                                              vertical:
                                                              5),
                                                          decoration:
                                                          BoxDecoration(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                            color: const Color(
                                                                0xffFFFFFF),
                                                            border: Border.all(
                                                                color: const Color(
                                                                    0xffC8D1E5)),
                                                          ),
                                                          child:
                                                          const Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                            children: [
                                                              Icon(
                                                                  Icons
                                                                      .lock,
                                                                  color: Color(
                                                                      0xffC8D1E5)),
                                                              SizedBox(
                                                                width: 6,
                                                              ),
                                                              Text(
                                                                "Public",
                                                                style: TextStyle(
                                                                    fontWeight: FontWeight
                                                                        .w600,
                                                                    fontSize:
                                                                    12,
                                                                    color:
                                                                    Color(
                                                                        0xff485470)),
                                                              ),
                                                              SizedBox(
                                                                width: 6,
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_sharp,
                                                                color: Color(
                                                                    0xff99A7C7),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 38,
                                                          padding: const EdgeInsets
                                                              .symmetric(
                                                              horizontal:
                                                              10,
                                                              vertical:
                                                              5),
                                                          decoration:
                                                          BoxDecoration(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                            color: const Color(
                                                                0xffFFFFFF),
                                                            border: Border.all(
                                                                color: const Color(
                                                                    0xffC8D1E5)),
                                                          ),
                                                          child:
                                                          const Row(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                            children: [
                                                              Text(
                                                                "Category",
                                                                style: TextStyle(
                                                                    fontWeight: FontWeight
                                                                        .w600,
                                                                    fontSize:
                                                                    12,
                                                                    color:
                                                                    Color(
                                                                        0xff485470)),
                                                              ),
                                                              SizedBox(
                                                                width: 6,
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_sharp,
                                                                color: Color(
                                                                    0xff99A7C7),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 38,
                                                          padding: const EdgeInsets
                                                              .symmetric(
                                                              horizontal:
                                                              7,
                                                              vertical:
                                                              5),
                                                          decoration:
                                                          BoxDecoration(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                            color: const Color(
                                                                0xffFFFFFF),
                                                            border: Border.all(
                                                                color: const Color(
                                                                    0xffC8D1E5)),
                                                          ),
                                                          child:
                                                          const Center(
                                                              child:
                                                              Icon(
                                                                Icons
                                                                    .numbers_outlined,
                                                                color: Color(
                                                                    0xff99A7C7),
                                                              )),
                                                        ),
                                                        Container(
                                                          height: 38,
                                                          padding: const EdgeInsets
                                                              .symmetric(
                                                              horizontal:
                                                              7,
                                                              vertical:
                                                              5),
                                                          decoration:
                                                          BoxDecoration(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                            color: const Color(
                                                                0xffFFFFFF),
                                                            border: Border.all(
                                                                color: const Color(
                                                                    0xffC8D1E5)),
                                                          ),
                                                          child:
                                                          const Center(
                                                              child:
                                                              Icon(
                                                                Icons
                                                                    .alternate_email,
                                                                color: Color(
                                                                    0xff99A7C7),
                                                              )),
                                                        ),
                                                        Container(
                                                          height: 38,
                                                          padding: const EdgeInsets
                                                              .symmetric(
                                                              horizontal:
                                                              7,
                                                              vertical:
                                                              5),
                                                          decoration:
                                                          BoxDecoration(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                            color: const Color(
                                                                0xffFFFFFF),
                                                            border: Border.all(
                                                                color: const Color(
                                                                    0xffC8D1E5)),
                                                          ),
                                                          child:
                                                          const Center(
                                                              child:
                                                              Icon(
                                                                Icons
                                                                    .emoji_emotions_rounded,
                                                                color: Color(
                                                                    0xff99A7C7),
                                                              )),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                      children: [
                                                        Container(
                                                          height: 50,
                                                          width: MediaQuery
                                                              .sizeOf(
                                                              context)
                                                              .width *
                                                              0.46,
                                                          decoration:
                                                          BoxDecoration(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                            color: const Color(
                                                                0xffF1F4FB),
                                                          ),
                                                          child:
                                                          const Center(
                                                            child: Text(
                                                              'Cancel',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  16,
                                                                  color: Color(
                                                                      0xff7D8CAC),
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 50,
                                                          width: MediaQuery
                                                              .sizeOf(
                                                              context)
                                                              .width *
                                                              0.46,
                                                          decoration:
                                                          BoxDecoration(
                                                            gradient:
                                                            const LinearGradient(
                                                                colors: [
                                                                  Color(
                                                                      0xffFFC107),
                                                                  Color(
                                                                      0xffFF8205),
                                                                ]),
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                            color: const Color(
                                                                0xffF1F4FB),
                                                          ),
                                                          child:
                                                          const Center(
                                                            child: Text(
                                                              'Send Now',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                  16,
                                                                  color: Color(
                                                                      0xffFFFFFF),
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          )
                              : _currentIndex == 2
                              ? showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder: (BuildContext context) {
                              return Wrap(
                                clipBehavior: Clip.antiAlias,
                                children: [
                                  Container(
                                    height: MediaQuery
                                        .sizeOf(context)
                                        .height *
                                        0.30,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(
                                            20)),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      physics: const ScrollPhysics(),
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment
                                              .start,
                                          children: [
                                            ListView.builder(
                                              itemCount: iconTextList1
                                                  .length,
                                              shrinkWrap: true,
                                              itemBuilder:
                                                  (BuildContext
                                              context,
                                                  int index) {
                                                return Container(
                                                  height: 53,
                                                  padding:
                                                  const EdgeInsets.all(
                                                      10),
                                                  margin:
                                                  const EdgeInsets.only(
                                                      bottom: 10),
                                                  decoration:
                                                  BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        9),
                                                    color: const Color(
                                                        0xffF1F4FB),
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .center,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .start,
                                                    children: [
                                                      Image(
                                                          image: AssetImage(
                                                              iconTextList1[
                                                              index]
                                                                  .iconRequired
                                                                  .toString())),
                                                      const SizedBox(
                                                        width: 15,
                                                      ),
                                                      Text(
                                                        iconTextList1[
                                                        index]
                                                            .textRequired
                                                            .toString(),
                                                        style: const TextStyle(
                                                            fontSize:
                                                            15,
                                                            fontWeight:
                                                            FontWeight
                                                                .w500,
                                                            color: Color(
                                                                0xff212121)),
                                                      )
                                                    ],
                                                  ),
                                                );
                                              },
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          )
                              : _currentIndex == 3
                              ? showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft:
                                    Radius.circular(15))),
                            builder: (BuildContext context) {
                              return Wrap(
                                clipBehavior: Clip.antiAlias,
                                children: [
                                  Container(
                                    height:
                                    MediaQuery
                                        .sizeOf(context)
                                        .height *
                                        0.45,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(
                                            20)),
                                    child: SingleChildScrollView(
                                      scrollDirection:
                                      Axis.vertical,
                                      physics:
                                      const ScrollPhysics(),
                                      child: Padding(
                                        padding:
                                        const EdgeInsets.all(
                                            10),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment
                                              .start,
                                          children: [
                                            ListView.builder(
                                              itemCount:
                                              iconTextList2
                                                  .length,
                                              shrinkWrap: true,
                                              itemBuilder:
                                                  (BuildContext
                                              context,
                                                  int index) {
                                                return Container(
                                                  height: 53,
                                                  padding:
                                                  const EdgeInsets
                                                      .all(
                                                      10),
                                                  margin: const EdgeInsets
                                                      .only(
                                                      bottom:
                                                      10),
                                                  decoration:
                                                  BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        9),
                                                    color: const Color(
                                                        0xffF1F4FB),
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .center,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .start,
                                                    children: [
                                                      Image(
                                                          image: AssetImage(
                                                              iconTextList2[index]
                                                                  .iconRequired
                                                                  .toString())),
                                                      const SizedBox(
                                                        width: 15,
                                                      ),
                                                      Text(
                                                        iconTextList2[
                                                        index]
                                                            .textRequired
                                                            .toString(),
                                                        style: const TextStyle(
                                                            fontSize:
                                                            15,
                                                            fontWeight: FontWeight
                                                                .w500,
                                                            color:
                                                            Color(0xff212121)),
                                                      )
                                                    ],
                                                  ),
                                                );
                                              },
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          )
                              : _currentIndex == 4
                              ? showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape:
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius
                                    .only(
                                    topRight: Radius
                                        .circular(15),
                                    topLeft:
                                    Radius
                                        .circular(
                                        15))),
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext
                                context,
                                    void Function(
                                        void Function())
                                    setState) {
                                  return Wrap(
                                    clipBehavior:
                                    Clip.antiAlias,
                                    children: [
                                      Container(
                                        height:
                                        MediaQuery
                                            .sizeOf(
                                            context)
                                            .height *
                                            0.86,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius
                                                .circular(
                                                20)),
                                        child:
                                        SingleChildScrollView(
                                          scrollDirection:
                                          Axis.vertical,
                                          physics:
                                          const ScrollPhysics(),
                                          child: Padding(
                                            padding:
                                            const EdgeInsets
                                                .all(10),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                              children: <Widget>[
                                                const Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .center,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .center,
                                                  children: [
                                                    Text(
                                                      "Create a funding request",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .w700,
                                                          fontSize:
                                                          20,
                                                          color:
                                                          Color(0xff120D26)),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                DottedBorder(
                                                  strokeWidth:
                                                  2,
                                                  dashPattern: [
                                                    6,
                                                    2
                                                  ],
                                                  color: const Color(
                                                      0xffC8D1E5),
                                                  borderType:
                                                  BorderType
                                                      .RRect,
                                                  radius: const Radius
                                                      .circular(
                                                      10),
                                                  child:
                                                  ClipRRect(
                                                    clipBehavior:
                                                    Clip.antiAlias,
                                                    borderRadius: const BorderRadius
                                                        .all(
                                                        Radius.circular(
                                                            10)),
                                                    child:
                                                    Container(
                                                      height:
                                                      163,
                                                      width:
                                                      MediaQuery
                                                          .sizeOf(context)
                                                          .width *
                                                          1,
                                                      decoration: BoxDecoration(
                                                          color:
                                                          const Color(
                                                              0xffF1F4FB),
                                                          borderRadius: BorderRadius
                                                              .circular(10)),
                                                      child:
                                                      const Column(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment
                                                                .center,
                                                            crossAxisAlignment: CrossAxisAlignment
                                                                .center,
                                                            children: [
                                                              Icon(
                                                                Icons.photo,
                                                                color: Color(
                                                                    0xff99A7C7),
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Text(
                                                                "Upload Image",
                                                                style: TextStyle(
                                                                    fontWeight: FontWeight
                                                                        .w700,
                                                                    fontSize: 15,
                                                                    color: Color(
                                                                        0xff485470)),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            "Select from computer or drag & drop the image",
                                                            style: TextStyle(
                                                                fontWeight: FontWeight
                                                                    .w500,
                                                                fontSize: 11,
                                                                color: Color(
                                                                    0xff485470)),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Text(
                                                  "Title",
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight
                                                          .w700,
                                                      fontSize:
                                                      16,
                                                      color: Color(
                                                          0xff120D26)),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  height: 54,
                                                  width: double
                                                      .infinity,
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xffFFFFFF),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                                  child:
                                                  TextFormField(
                                                    decoration: InputDecoration(
                                                        enabledBorder: OutlineInputBorder(
                                                            borderRadius: BorderRadius
                                                                .circular(10),
                                                            borderSide: const BorderSide(
                                                              color: Color(
                                                                  0xffC8D1E5),
                                                            )),
                                                        focusedBorder: OutlineInputBorder(
                                                            borderRadius: BorderRadius
                                                                .circular(10),
                                                            borderSide: const BorderSide(
                                                              color: Color(
                                                                  0xffC8D1E5),
                                                            )),
                                                        hintText: '   Enter Here',
                                                        hintStyle: const TextStyle(
                                                            fontWeight: FontWeight
                                                                .w500,
                                                            fontSize: 15,
                                                            color: Color(
                                                                0xff7D8CAC))),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Text(
                                                  "How much money you would like to receive?",
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight
                                                          .w700,
                                                      fontSize:
                                                      16,
                                                      color: Color(
                                                          0xff120D26)),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  height: 54,
                                                  width: double
                                                      .infinity,
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xffFFFFFF),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                                  child:
                                                  TextFormField(
                                                    decoration: InputDecoration(
                                                        suffixIcon: FittedBox(
                                                          child:
                                                          Row(
                                                            children: [
                                                              Container(
                                                                height: 40,
                                                                width: 2,
                                                                color: const Color(
                                                                    0xffC8D1E5),
                                                              ),
                                                              const SizedBox(
                                                                width: 5,
                                                              ),
                                                              const Text(
                                                                "Dollar",
                                                                style: TextStyle(
                                                                    fontWeight: FontWeight
                                                                        .w500,
                                                                    fontSize: 15,
                                                                    color: Color(
                                                                        0xff485470)),
                                                              ),
                                                              const SizedBox(
                                                                width: 5,
                                                              ),
                                                              const Icon(
                                                                Icons
                                                                    .keyboard_arrow_down,
                                                                color: Color(
                                                                    0xff99A7C7),
                                                              ),
                                                              const SizedBox(
                                                                width: 5,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        enabledBorder: OutlineInputBorder(
                                                            borderRadius: BorderRadius
                                                                .circular(10),
                                                            borderSide: const BorderSide(
                                                              color: Color(
                                                                  0xffC8D1E5),
                                                            )),
                                                        focusedBorder: OutlineInputBorder(
                                                            borderRadius: BorderRadius
                                                                .circular(10),
                                                            borderSide: const BorderSide(
                                                              color: Color(
                                                                  0xffC8D1E5),
                                                            )),
                                                        hintText: '   Enter Here',
                                                        hintStyle: const TextStyle(
                                                            fontWeight: FontWeight
                                                                .w500,
                                                            fontSize: 15,
                                                            color: Color(
                                                                0xff7D8CAC))),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Text(
                                                  "Description",
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight
                                                          .w700,
                                                      fontSize:
                                                      16,
                                                      color: Color(
                                                          0xff120D26)),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  width: double
                                                      .infinity,
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xffFFFFFF),
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                                  child:
                                                  TextFormField(
                                                    maxLines:
                                                    5,
                                                    decoration: InputDecoration(
                                                        enabledBorder: OutlineInputBorder(
                                                            borderRadius: BorderRadius
                                                                .circular(10),
                                                            borderSide: const BorderSide(
                                                              color: Color(
                                                                  0xffC8D1E5),
                                                            )),
                                                        focusedBorder: OutlineInputBorder(
                                                            borderRadius: BorderRadius
                                                                .circular(10),
                                                            borderSide: const BorderSide(
                                                              color: Color(
                                                                  0xffC8D1E5),
                                                            )),
                                                        hintText: '   Enter Here',
                                                        hintStyle: const TextStyle(
                                                            fontWeight: FontWeight
                                                                .w500,
                                                            fontSize: 15,
                                                            color: Color(
                                                                0xff7D8CAC))),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceAround,
                                                  children: [
                                                    Container(
                                                      height:
                                                      50,
                                                      width: MediaQuery
                                                          .sizeOf(context)
                                                          .width *
                                                          0.43,
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                        color:
                                                        const Color(0xffF1F4FB),
                                                      ),
                                                      child:
                                                      const Center(
                                                        child:
                                                        Text(
                                                          'Cancel',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color: Color(
                                                                  0xff7D8CAC),
                                                              fontWeight: FontWeight
                                                                  .w700),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height:
                                                      50,
                                                      width: MediaQuery
                                                          .sizeOf(context)
                                                          .width *
                                                          0.43,
                                                      decoration:
                                                      BoxDecoration(
                                                        gradient:
                                                        const LinearGradient(
                                                            colors: [
                                                              Color(0xffFFC107),
                                                              Color(0xffFF8205),
                                                            ]),
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                        color:
                                                        const Color(0xffF1F4FB),
                                                      ),
                                                      child:
                                                      const Center(
                                                        child:
                                                        Text(
                                                          'Send Now',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              color: Color(
                                                                  0xffFFFFFF),
                                                              fontWeight: FontWeight
                                                                  .w700),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          )
                              : _currentIndex == 5
                              ? showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.only(
                                    topRight: Radius
                                        .circular(15),
                                    topLeft: Radius
                                        .circular(
                                        15))),
                            builder:
                                (BuildContext context) {
                              return Wrap(
                                clipBehavior:
                                Clip.antiAlias,
                                children: [
                                  Container(
                                    height:
                                    MediaQuery
                                        .sizeOf(
                                        context)
                                        .height *
                                        0.58,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius
                                            .circular(
                                            20)),
                                    child:
                                    SingleChildScrollView(
                                      scrollDirection:
                                      Axis.vertical,
                                      physics:
                                      const ScrollPhysics(),
                                      child: Padding(
                                        padding:
                                        const EdgeInsets
                                            .all(10),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment
                                              .start,
                                          children: [
                                            ListView
                                                .builder(
                                              itemCount:
                                              iconTextList3
                                                  .length,
                                              shrinkWrap:
                                              true,
                                              itemBuilder:
                                                  (BuildContext
                                              context,
                                                  int index) {
                                                return Container(
                                                  height:
                                                  53,
                                                  padding:
                                                  const EdgeInsets.all(10),
                                                  margin: const EdgeInsets.only(
                                                      bottom:
                                                      10),
                                                  decoration:
                                                  BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(9),
                                                    color:
                                                    const Color(0xffF1F4FB),
                                                  ),
                                                  child:
                                                  Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Image(image: AssetImage(
                                                          iconTextList3[index]
                                                              .iconRequired
                                                              .toString())),
                                                      const SizedBox(
                                                        width: 15,
                                                      ),
                                                      Text(
                                                        iconTextList3[index]
                                                            .textRequired
                                                            .toString(),
                                                        style: const TextStyle(
                                                            fontSize: 15,
                                                            fontWeight: FontWeight
                                                                .w500,
                                                            color: Color(
                                                                0xff212121)),
                                                      )
                                                    ],
                                                  ),
                                                );
                                              },
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          )
                              : _currentIndex == 6
                              ? showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.only(
                                    topRight: Radius
                                        .circular(
                                        15),
                                    topLeft: Radius
                                        .circular(
                                        15))),
                            builder: (BuildContext
                            context) {
                              return Wrap(
                                clipBehavior:
                                Clip.antiAlias,
                                children: [
                                  Container(
                                    height: MediaQuery
                                        .sizeOf(
                                        context)
                                        .height *
                                        0.58,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius
                                            .circular(
                                            20)),
                                    child:
                                    SingleChildScrollView(
                                      scrollDirection:
                                      Axis.vertical,
                                      physics:
                                      const ScrollPhysics(),
                                      child: Padding(
                                        padding:
                                        const EdgeInsets
                                            .all(
                                            10),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment
                                              .start,
                                          children: [
                                            const Center(
                                              child:
                                              Text(
                                                'Quick Pins',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Color(0xff212121),
                                                    fontWeight: FontWeight
                                                        .w800),
                                              ),
                                            ),
                                            const SizedBox(
                                              height:
                                              10,
                                            ),
                                            const Divider(
                                              thickness:
                                              2,
                                              height:
                                              2,
                                              color: Color(
                                                  0xffC8D1E5),
                                            ),
                                            const SizedBox(
                                              height:
                                              10,
                                            ),
                                            ListView
                                                .builder(
                                              itemCount:
                                              iconTextList4.length,
                                              shrinkWrap:
                                              true,
                                              itemBuilder:
                                                  (BuildContext context,
                                                  int index) {
                                                return Container(
                                                  padding:
                                                  const EdgeInsets.all(10),
                                                  margin:
                                                  const EdgeInsets.only(
                                                      bottom: 10),
                                                  decoration:
                                                  BoxDecoration(
                                                    borderRadius: BorderRadius
                                                        .circular(9),
                                                    color: const Color(
                                                        0xffF1F4FB),
                                                  ),
                                                  child:
                                                  Row(
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .center,
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .start,
                                                    children: [
                                                      Image(image: AssetImage(
                                                          iconTextList4[index]
                                                              .iconRequired
                                                              .toString())),
                                                      const SizedBox(
                                                        width: 15,
                                                      ),
                                                      Text(
                                                        iconTextList4[index]
                                                            .textRequired
                                                            .toString(),
                                                        style: const TextStyle(
                                                            fontSize: 15,
                                                            fontWeight: FontWeight
                                                                .w500,
                                                            color: Color(
                                                                0xff212121)),
                                                      )
                                                    ],
                                                  ),
                                                );
                                              },
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          )
                              : _currentIndex == 7
                              ? showModalBottomSheet(
                            isScrollControlled:
                            true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius
                                        .circular(
                                        15),
                                    topLeft: Radius
                                        .circular(
                                        15))),
                            builder: (BuildContext
                            context) {
                              return Wrap(
                                clipBehavior: Clip
                                    .antiAlias,
                                children: [
                                  Container(
                                    height: MediaQuery
                                        .sizeOf(
                                        context)
                                        .height *
                                        0.50,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(
                                            20)),
                                    child:
                                    SingleChildScrollView(
                                      scrollDirection:
                                      Axis.vertical,
                                      physics:
                                      const ScrollPhysics(),
                                      child:
                                      Padding(
                                        padding: const EdgeInsets
                                            .all(
                                            10),
                                        child:
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            const Center(
                                              child:
                                              Text(
                                                'Set up',
                                                style: TextStyle(fontSize: 18,
                                                    color: Color(0xff212121),
                                                    fontWeight: FontWeight
                                                        .w800),
                                              ),
                                            ),
                                            const SizedBox(
                                              height:
                                              10,
                                            ),
                                            const Divider(
                                              thickness:
                                              2,
                                              height:
                                              2,
                                              color:
                                              Color(0xffC8D1E5),
                                            ),
                                            const SizedBox(
                                              height:
                                              10,
                                            ),
                                            ListView
                                                .builder(
                                              itemCount:
                                              iconTextList5.length,
                                              shrinkWrap:
                                              true,
                                              itemBuilder:
                                                  (BuildContext context,
                                                  int index) {
                                                return Container(
                                                  padding: const EdgeInsets.all(
                                                      10),
                                                  margin: const EdgeInsets.only(
                                                      bottom: 10),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius
                                                        .circular(9),
                                                    color: const Color(
                                                        0xffF1F4FB),
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .center,
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .start,
                                                    children: [
                                                      Image(image: AssetImage(
                                                          iconTextList5[index]
                                                              .iconRequired
                                                              .toString())),
                                                      const SizedBox(
                                                        width: 15,
                                                      ),
                                                      Text(
                                                        iconTextList5[index]
                                                            .textRequired
                                                            .toString(),
                                                        style: const TextStyle(
                                                            fontSize: 15,
                                                            fontWeight: FontWeight
                                                                .w500,
                                                            color: Color(
                                                                0xff212121)),
                                                      )
                                                    ],
                                                  ),
                                                );
                                              },
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          )
                              : _currentIndex == 8
                              ? showModalBottomSheet(
                            isScrollControlled:
                            true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight:
                                    Radius.circular(
                                        15),
                                    topLeft: Radius
                                        .circular(
                                        15))),
                            builder:
                                (BuildContext
                            context) {
                              return Wrap(
                                clipBehavior:
                                Clip.antiAlias,
                                children: [
                                  Container(
                                    height: MediaQuery
                                        .sizeOf(context)
                                        .height *
                                        0.50,
                                    decoration:
                                    BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            20)),
                                    child:
                                    SingleChildScrollView(
                                      scrollDirection:
                                      Axis.vertical,
                                      physics:
                                      const ScrollPhysics(),
                                      child:
                                      Padding(
                                        padding: const EdgeInsets
                                            .all(
                                            10),
                                        child:
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            ListView.builder(
                                              itemCount: iconTextList6.length,
                                              shrinkWrap: true,
                                              itemBuilder: (
                                                  BuildContext context,
                                                  int index) {
                                                return Container(
                                                  padding: const EdgeInsets.all(
                                                      10),
                                                  margin: const EdgeInsets.only(
                                                      bottom: 10),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius
                                                        .circular(9),
                                                    color: const Color(
                                                        0xffF1F4FB),
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .center,
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .start,
                                                    children: [
                                                      Image(image: AssetImage(
                                                          iconTextList6[index]
                                                              .iconRequired
                                                              .toString())),
                                                      const SizedBox(
                                                        width: 15,
                                                      ),
                                                      Text(
                                                        iconTextList6[index]
                                                            .textRequired
                                                            .toString(),
                                                        style: const TextStyle(
                                                            fontSize: 15,
                                                            fontWeight: FontWeight
                                                                .w500,
                                                            color: Color(
                                                                0xff212121)),
                                                      )
                                                    ],
                                                  ),
                                                );
                                              },
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          )
                              : _currentIndex == 9
                              ? showModalBottomSheet(
                            isScrollControlled:
                            true,
                            context:
                            context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(
                                        15),
                                    topLeft:
                                    Radius.circular(15))),
                            builder:
                                (BuildContext
                            context) {
                              return Wrap(
                                clipBehavior:
                                Clip.antiAlias,
                                children: [
                                  Container(
                                    height:
                                    MediaQuery
                                        .sizeOf(context)
                                        .height * 0.30,
                                    decoration:
                                    BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            20)),
                                    child:
                                    SingleChildScrollView(
                                      scrollDirection:
                                      Axis.vertical,
                                      physics:
                                      const ScrollPhysics(),
                                      child:
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [
                                            const Row(
                                              children: [
                                                Icon(
                                                  Icons.arrow_back,
                                                  color: Color(0xff212121),
                                                ),
                                                Spacer(),
                                                Text(
                                                  'Message Info',
                                                  style: TextStyle(fontSize: 18,
                                                      color: Color(0xff212121),
                                                      fontWeight: FontWeight
                                                          .w800),
                                                ),
                                                Spacer(),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Divider(
                                              thickness: 2,
                                              height: 2,
                                              color: Color(0xffC8D1E5),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(15),
                                              decoration: const BoxDecoration(
                                                  color: Color(0xffEBEFFB),
                                                  borderRadius: BorderRadius
                                                      .only(
                                                    topRight: Radius.circular(
                                                        16),
                                                    bottomLeft: Radius.circular(
                                                        16),
                                                    bottomRight: Radius
                                                        .circular(16),
                                                  )),
                                              child: const Text(
                                                'Lacus ac lacinia.',
                                                style: TextStyle(fontSize: 18,
                                                    color: Color(0xff212121),
                                                    fontWeight: FontWeight
                                                        .w700),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Divider(
                                              thickness: 2,
                                              height: 2,
                                              color: Color(0xffC8D1E5),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Row(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .start,
                                              children: [
                                                Icon(
                                                  Icons.done_all,
                                                  color: Color(0xffB7BDCB),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'Delivered at',
                                                  style: TextStyle(fontSize: 15,
                                                      color: Color(0xff485470),
                                                      fontWeight: FontWeight
                                                          .w700),
                                                ),
                                                Spacer(),
                                                Text(
                                                  'Wed-2023, 14:25:12',
                                                  style: TextStyle(fontSize: 15,
                                                      color: Color(0xff212121),
                                                      fontWeight: FontWeight
                                                          .w700),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Divider(
                                              thickness: 2,
                                              height: 2,
                                              color: Color(0xffC8D1E5),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Row(
                                              mainAxisAlignment: MainAxisAlignment
                                                  .start,
                                              children: [
                                                Icon(
                                                  Icons.done_all,
                                                  color: Color(0xffFF9200),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  'Delivered at',
                                                  style: TextStyle(fontSize: 15,
                                                      color: Color(0xff485470),
                                                      fontWeight: FontWeight
                                                          .w700),
                                                ),
                                                Spacer(),
                                                Text(
                                                  'Wed-2023, 14:25:12',
                                                  style: TextStyle(fontSize: 15,
                                                      color: Color(0xff212121),
                                                      fontWeight: FontWeight
                                                          .w700),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          )
                              : _currentIndex ==
                              10
                              ? showModalBottomSheet(
                            isScrollControlled:
                            true,
                            context:
                            context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder:
                                (BuildContext
                            context) {
                              return Wrap(
                                clipBehavior:
                                Clip.antiAlias,
                                children: [
                                  Container(
                                    height: MediaQuery
                                        .sizeOf(context)
                                        .height * 0.23,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            20)),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      physics: const ScrollPhysics(),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [
                                            const Row(
                                              children: [
                                                Icon(
                                                  Icons.arrow_back,
                                                  color: Color(0xff212121),
                                                ),
                                                Spacer(),
                                                Text(
                                                  'Delete Message',
                                                  style: TextStyle(fontSize: 18,
                                                      color: Color(0xff212121),
                                                      fontWeight: FontWeight
                                                          .w800),
                                                ),
                                                Spacer(),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Divider(
                                              thickness: 2,
                                              height: 2,
                                              color: Color(0xffC8D1E5),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              margin: const EdgeInsets.only(
                                                  bottom: 10),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius
                                                    .circular(9),
                                                color: const Color(0xffF1F4FB),
                                              ),
                                              child: const Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .center,
                                                mainAxisAlignment: MainAxisAlignment
                                                    .start,
                                                children: [
                                                  Text(
                                                    'Delete for me',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight: FontWeight
                                                            .w500,
                                                        color: Color(
                                                            0xff212121)),
                                                  )
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              margin: const EdgeInsets.only(
                                                  bottom: 10),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius
                                                    .circular(9),
                                                color: const Color(0xffF1F4FB),
                                              ),
                                              child: const Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .center,
                                                mainAxisAlignment: MainAxisAlignment
                                                    .start,
                                                children: [
                                                  Text(
                                                    'Delete for Everyone',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight: FontWeight
                                                            .w500,
                                                        color: Color(
                                                            0xff212121)),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          )
                              : _currentIndex ==
                              11
                              ? showModalBottomSheet(
                            isScrollControlled:
                            true,
                            context:
                            context,
                            shape:
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder:
                                (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function()) setState) {
                                  return Wrap(
                                    clipBehavior: Clip.antiAlias,
                                    children: [
                                      Container(
                                        height: MediaQuery
                                            .sizeOf(context)
                                            .height * 0.60,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                20)),
                                        padding: const EdgeInsets.all(16.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          physics: const ScrollPhysics(),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            children: [
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .center,
                                                children: [
                                                  const Image(image: AssetImage(
                                                      "Asset/images/event/Group 76844.png")),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      const Text(
                                                        "Momin Hassan",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Color(
                                                                0xff212121),
                                                            fontWeight: FontWeight
                                                                .w700),
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Container(
                                                        height: 25,
                                                        padding: const EdgeInsets
                                                            .symmetric(
                                                            horizontal: 10),
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: const Color(
                                                                    0xffC8D1E5)),
                                                            color: Colors
                                                                .white),
                                                        child: const Row(
                                                          crossAxisAlignment: CrossAxisAlignment
                                                              .center,
                                                          mainAxisAlignment: MainAxisAlignment
                                                              .center,
                                                          children: [
                                                            Text(
                                                              "Public",
                                                              style: TextStyle(
                                                                  fontSize: 10,
                                                                  color: Color(
                                                                      0xff7D8CAC),
                                                                  fontWeight: FontWeight
                                                                      .w500),
                                                            ),
                                                            SizedBox(
                                                              width: 5,
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .keyboard_arrow_down,
                                                              color: Color(
                                                                  0xff7D8CAC),
                                                            )
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    height: 35,
                                                    width: 35,
                                                    decoration: const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Color(
                                                            0xffC8D1E5)),
                                                    child: const Center(
                                                        child: Icon(
                                                          Icons.close,
                                                          color: Colors.white,
                                                        )),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Container(
                                                child: TextField(
                                                  maxLines: 6,
                                                  decoration: InputDecoration(
                                                    hintText: "🤙 What’s your Vibe?",
                                                    hintStyle: const TextStyle(
                                                        fontWeight: FontWeight
                                                            .w500,
                                                        fontSize: 15,
                                                        color: Color(
                                                            0xff99A7C7)),
                                                    border: OutlineInputBorder(
                                                        borderRadius: BorderRadius
                                                            .circular(10),
                                                        borderSide: BorderSide
                                                            .none),
                                                    enabledBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius
                                                            .circular(10),
                                                        borderSide: BorderSide
                                                            .none),
                                                    focusedBorder: OutlineInputBorder(
                                                        borderRadius: BorderRadius
                                                            .circular(10),
                                                        borderSide: BorderSide
                                                            .none),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              GridView.builder(
                                                itemCount: iconText.length,
                                                shrinkWrap: true,
                                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 3,
                                                    mainAxisSpacing: 10,
                                                    crossAxisSpacing: 10),
                                                itemBuilder: (
                                                    BuildContext context,
                                                    int index) {
                                                  return Column(
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .center,
                                                    children: [
                                                      Container(
                                                        padding: const EdgeInsets
                                                            .all(15),
                                                        decoration: BoxDecoration(
                                                          shape: BoxShape
                                                              .circle,
                                                          gradient: LinearGradient(
                                                              colors: [
                                                                colorList[index],
                                                                colorList1[index],
                                                              ]),
                                                        ),
                                                        child: Image(
                                                          color: Colors.white,
                                                          image: AssetImage(
                                                              iconPath[index]
                                                                  .toString()),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        iconText[index]
                                                            .toString(),
                                                        style: const TextStyle(
                                                            fontSize: 15,
                                                            fontWeight: FontWeight
                                                                .w600,
                                                            color: Color(
                                                                0xff485470)),
                                                      )
                                                    ],
                                                  );
                                                },
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          )
                              : _currentIndex ==
                              12
                              ? showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder: (BuildContext context) {
                              return Wrap(
                                clipBehavior: Clip.antiAlias,
                                children: [
                                  Container(
                                    height: MediaQuery
                                        .sizeOf(context)
                                        .height * 0.58,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            20)),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      physics: const ScrollPhysics(),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [
                                            const Row(
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .center,
                                              children: [
                                                Text(
                                                  "Share",
                                                  style: TextStyle(fontSize: 15,
                                                      color: Color(0xff212121),
                                                      fontWeight: FontWeight
                                                          .w600),
                                                ),
                                                Spacer(),
                                                Text(
                                                  "4.3K Revibed",
                                                  style: TextStyle(fontSize: 12,
                                                      color: Color(0xff7D8CAC),
                                                      fontWeight: FontWeight
                                                          .w600),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            ListView.builder(
                                              itemCount: iconTextList7.length,
                                              shrinkWrap: true,
                                              itemBuilder: (
                                                  BuildContext context,
                                                  int index) {
                                                return
                                                  Container(
                                                  height: 53,
                                                  padding: const EdgeInsets.all(
                                                      10),
                                                  margin: const EdgeInsets.only(
                                                      bottom: 10),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius
                                                        .circular(9),
                                                    color: const Color(
                                                        0xffF1F4FB),
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .center,
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .start,
                                                    children: [
                                                      Image(image: AssetImage(
                                                          iconTextList7[index]
                                                              .iconRequired
                                                              .toString())),
                                                      const SizedBox(
                                                        width: 15,
                                                      ),
                                                      Text(
                                                        iconTextList7[index]
                                                            .textRequired
                                                            .toString(),
                                                        style: const TextStyle(
                                                            fontSize: 15,
                                                            fontWeight: FontWeight
                                                                .w500,
                                                            color: Color(
                                                                0xff212121)),
                                                      )
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                                padding: const EdgeInsets.all(
                                                    15),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius
                                                        .circular(10),
                                                    color: const Color(
                                                        0xffF1F4FB)),
                                                child: GridView.builder(
                                                  physics: const NeverScrollableScrollPhysics(),
                                                  itemCount: iconTextList8
                                                      .length,
                                                  shrinkWrap: true,
                                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                      childAspectRatio: 20 / 18,
                                                      crossAxisCount: 4,
                                                      mainAxisSpacing: 10,
                                                      crossAxisSpacing: 10),
                                                  itemBuilder: (
                                                      BuildContext context,
                                                      int index) {
                                                    return Column(
                                                      crossAxisAlignment: CrossAxisAlignment
                                                          .center,
                                                      children: [
                                                        Image(
                                                          height: 40,
                                                          width: 40,
                                                          image: AssetImage(
                                                              iconTextList8[index]
                                                                  .iconRequired
                                                                  .toString()),
                                                        ),
                                                        Text(
                                                          iconTextList8[index]
                                                              .textRequired
                                                              .toString(),
                                                          style: const TextStyle(
                                                              fontSize: 12,
                                                              fontWeight: FontWeight
                                                                  .w500,
                                                              color: Color(
                                                                  0xff485470)),
                                                        )
                                                      ],
                                                    );
                                                  },
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          )
                              : _currentIndex == 13
                              ? showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function()) setState) {
                                  return Wrap(
                                    clipBehavior: Clip.antiAlias,
                                    children: [
                                      Container(
                                        height: MediaQuery
                                            .sizeOf(context)
                                            .height * 0.45,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                20)),
                                        padding: const EdgeInsets.all(16.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          physics: const ScrollPhysics(),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            crossAxisAlignment: CrossAxisAlignment
                                                .center,
                                            children: [
                                              const Image(image: AssetImage(
                                                  "Asset/images/check_out/Group 27.png")),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              const Text(
                                                "Order Confirmed",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
                                                    color: Color(0xff120D26)),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              const Text(
                                                "Your order has been confirmed. Your product\nwill be delivered very soon.",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                    color: Color(0xff99A7C7)),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                height: 50,
                                                width: MediaQuery
                                                    .sizeOf(context)
                                                    .width * 1,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .circular(10),
                                                  color: const Color(
                                                      0xffF1F4FB),
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    'Okay',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color(
                                                            0xff7D8CAC),
                                                        fontWeight: FontWeight
                                                            .w700),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          )
                              : _currentIndex == 14
                              ?

                          showModalBottomSheet(
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            backgroundColor: const Color(0xffFFFFFF),
                            context: context,
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                  builder: (BuildContext context,
                                      void Function(void Function()) setState) {
                                    return Container(
                                      height: MediaQuery
                                          .of(context)
                                          .size
                                          .height * 0.83,
                                      child: ListView(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.arrow_back_outlined,
                                                  color: Color(0xff7D8CAC),
                                                ),
                                                const Spacer(),
                                                const ReusableText(
                                                  title: 'Campaigon Details',
                                                  size: 18,
                                                  weight: FontWeight.w600,
                                                  color: Color(0xff434950),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  padding: const EdgeInsets.all(
                                                      5),
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color(0xffF1F4FB),
                                                  ),
                                                  child: const Icon(
                                                    Icons.close,
                                                    color: Color(0xff7D8CAC),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          const Divider(
                                            thickness: 2,
                                            height: 2,
                                            color: Color(0xffC8D1E5),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              children: [
                                                Row(
                                                  children: [
                                                    const ReusableText(
                                                      title: 'Active',
                                                      size: 16,
                                                      weight: FontWeight.w600,
                                                      color: Color(0xff212121),
                                                    ),
                                                    const Spacer(),
                                                    Switch(
                                                      value: _switchValue!,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          _switchValue = value;
                                                        });
                                                      },
                                                      activeColor: const Color(
                                                          0xFFFFC007),
                                                      // Active gradient color
                                                      activeTrackColor: const Color(
                                                          0xFFFF8505),
                                                      // Active gradient color
                                                      inactiveThumbColor: Colors
                                                          .white,
                                                      // Disabled color
                                                      inactiveTrackColor: const Color(
                                                          0xf30000000), // Disabled color
                                                    )
                                                  ],
                                                ),
                                                const Divider(
                                                  thickness: 2,
                                                  height: 2,
                                                  color: Color(0xffC8D1E5),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Column(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment: CrossAxisAlignment
                                                      .start,
                                                  children: [
                                                    ReusableText(
                                                      title: 'Name',
                                                      size: 13,
                                                      weight: FontWeight.w700,
                                                      color: Color(0xff7D8CAC),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    ReusableText(
                                                      title: 'Zelbury New Product',
                                                      size: 16,
                                                      weight: FontWeight.w600,
                                                      color: Color(0xff212121),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Divider(
                                                  thickness: 2,
                                                  height: 2,
                                                  color: Color(0xffC8D1E5),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Column(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment: CrossAxisAlignment
                                                      .start,
                                                  children: [
                                                    ReusableText(
                                                      title: 'Daily Budget',
                                                      size: 13,
                                                      weight: FontWeight.w700,
                                                      color: Color(0xff7D8CAC),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    ReusableText(
                                                      title: '\$20.00',
                                                      size: 16,
                                                      weight: FontWeight.w600,
                                                      color: Color(0xff212121),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Divider(
                                                  thickness: 2,
                                                  height: 2,
                                                  color: Color(0xffC8D1E5),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Column(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment: CrossAxisAlignment
                                                      .start,
                                                  children: [
                                                    ReusableText(
                                                      title: 'Amount Spent',
                                                      size: 13,
                                                      weight: FontWeight.w700,
                                                      color: Color(0xff7D8CAC),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    ReusableText(
                                                      title: "\$484.25",
                                                      size: 16,
                                                      weight: FontWeight.w600,
                                                      color: Color(0xff212121),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Divider(
                                                  thickness: 2,
                                                  height: 2,
                                                  color: Color(0xffC8D1E5),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Column(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment: CrossAxisAlignment
                                                      .start,
                                                  children: [
                                                    ReusableText(
                                                      title: 'Clicks',
                                                      size: 13,
                                                      weight: FontWeight.w700,
                                                      color: Color(0xff7D8CAC),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    ReusableText(
                                                      title: '247 clicks',
                                                      size: 16,
                                                      weight: FontWeight.w600,
                                                      color: Color(0xff212121),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Divider(
                                                  thickness: 2,
                                                  height: 2,
                                                  color: Color(0xffC8D1E5),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Column(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment: CrossAxisAlignment
                                                      .start,
                                                  children: [
                                                    ReusableText(
                                                      title: 'Views',
                                                      size: 13,
                                                      weight: FontWeight.w700,
                                                      color: Color(0xff7D8CAC),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    ReusableText(
                                                      title: '254681',
                                                      size: 16,
                                                      weight: FontWeight.w600,
                                                      color: Color(0xff212121),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Divider(
                                                  thickness: 2,
                                                  height: 2,
                                                  color: Color(0xffC8D1E5),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Column(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment: CrossAxisAlignment
                                                      .start,
                                                  children: [
                                                    ReusableText(
                                                      title: 'CPC',
                                                      size: 13,
                                                      weight: FontWeight.w700,
                                                      color: Color(0xff7D8CAC),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    ReusableText(
                                                      title: '\$0.012',
                                                      size: 16,
                                                      weight: FontWeight.w600,
                                                      color: Color(0xff212121),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Divider(
                                                  thickness: 2,
                                                  height: 2,
                                                  color: Color(0xffC8D1E5),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Column(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment: CrossAxisAlignment
                                                      .start,
                                                  children: [
                                                    ReusableText(
                                                      title: 'End Date',
                                                      size: 13,
                                                      weight: FontWeight.w700,
                                                      color: Color(0xff7D8CAC),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    ReusableText(
                                                      title: '06-07-2023',
                                                      size: 16,
                                                      weight: FontWeight.w600,
                                                      color: Color(0xff212121),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Divider(
                                                  thickness: 2,
                                                  height: 2,
                                                  color: Color(0xffC8D1E5),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
                                                  height: 56,
                                                  padding: const EdgeInsets.all(
                                                      10),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius
                                                          .circular(10),
                                                      border: Border.all(
                                                          color: const Color(
                                                              0xffFF9200))),
                                                  child: const Center(
                                                    child: ReusableText(
                                                      title: 'Edit Campaign',
                                                      size: 16,
                                                      weight: FontWeight.w600,
                                                      color: Color(0xffFF9200),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            },
                          )
                              : _currentIndex == 15
                              ? showModalBottomSheet(
                            isScrollControlled: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            backgroundColor: const Color(0xffFFFFFF),
                            context: context,
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                  builder: (BuildContext context,
                                      void Function(void Function()) setState) {
                                    return Container(
                                      height: MediaQuery
                                          .of(context)
                                          .size
                                          .height * 0.60,
                                      child: ListView(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: Row(
                                              children: [
                                                const Icon(
                                                  Icons.arrow_back_outlined,
                                                  color: Color(0xff000000),
                                                ),
                                                const Spacer(),
                                                const ReusableText(
                                                  title: 'Document Type',
                                                  size: 16,
                                                  weight: FontWeight.w500,
                                                  color: Color(0xff212121),
                                                ),
                                                const Spacer(),
                                                Container(
                                                  padding: const EdgeInsets.all(
                                                      5),
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color(0xffF1F4FB),
                                                  ),
                                                  child: const Icon(
                                                    Icons.close,
                                                    color: Color(0xff7D8CAC),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          const Divider(
                                            thickness: 2,
                                            height: 2,
                                            color: Color(0xffC8D1E5),
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              children: [
                                                const ReusableText(
                                                  title: 'Completion Rate',
                                                  size: 16,
                                                  weight: FontWeight.w700,
                                                  color: Color(0xff212121),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: LinearProgressBar(
                                                        maxSteps: 100,
                                                        minHeight: 10,
                                                        progressType: LinearProgressBar
                                                            .progressTypeLinear,
                                                        // Use Linear progress
                                                        currentStep: 38,
                                                        progressColor: const Color(
                                                            0xffFDC431),
                                                        backgroundColor: const Color(
                                                            0xffF1F4FB),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 30,
                                                    ),
                                                    const ReusableText(
                                                      title: '38 %',
                                                      size: 15,
                                                      weight: FontWeight.w700,
                                                      color: Color(0xff212121),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Divider(
                                            thickness: 6,
                                            height: 6,
                                            color: Color(0xffF8F9FB),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment
                                                  .start,
                                              children: [
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const ReusableText(
                                                  title: 'Estimate Result',
                                                  size: 16,
                                                  weight: FontWeight.w700,
                                                  color: Color(0xff212121),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                TextField(
                                                  decoration: InputDecoration(
                                                    // Prefix icon
                                                    prefixIcon: Container(
                                                      height: 51.8,
                                                      margin: const EdgeInsets
                                                          .only(left: 2),
                                                      width: MediaQuery
                                                          .of(context)
                                                          .size
                                                          .width * 0.65,
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius
                                                              .circular(7),
                                                          color: const Color(
                                                              0xffF8F9FB)),
                                                      child: const Center(
                                                        child: ReusableText(
                                                          title: 'Potential Audience',
                                                          size: 15,
                                                          weight: FontWeight
                                                              .w500,
                                                          color: Color(
                                                              0xff212121),
                                                        ),
                                                      ),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    hintStyle: const TextStyle(
                                                        fontWeight: FontWeight
                                                            .w700,
                                                        fontSize: 15,
                                                        color: Color(
                                                            0xff212121)),
                                                    hintText: '  3.9k - 100k',

                                                    enabledBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(10.0),
                                                      borderSide: const BorderSide(
                                                          color: Color(
                                                              0xffC8D1E5)), // Color when not focused
                                                    ),
                                                    focusedBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(10.0),
                                                      borderSide: const BorderSide(
                                                          color: Color(
                                                              0xffC8D1E5)), // Color when focused
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                TextField(
                                                  decoration: InputDecoration(
                                                    // Prefix icon
                                                    prefixIcon: Container(
                                                      height: 51.8,
                                                      margin: const EdgeInsets
                                                          .only(left: 2),
                                                      width: MediaQuery
                                                          .of(context)
                                                          .size
                                                          .width * 0.50,
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius
                                                              .circular(7),
                                                          color: const Color(
                                                              0xffF8F9FB)),
                                                      child: const Center(
                                                        child: ReusableText(
                                                          title: 'Estimated Reach',
                                                          size: 15,
                                                          weight: FontWeight
                                                              .w500,
                                                          color: Color(
                                                              0xff212121),
                                                        ),
                                                      ),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    hintStyle: const TextStyle(
                                                        fontWeight: FontWeight
                                                            .w700,
                                                        fontSize: 15,
                                                        color: Color(
                                                            0xff212121)),
                                                    hintText: '  2,448 Devices',

                                                    enabledBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(10.0),
                                                      borderSide: const BorderSide(
                                                          color: Color(
                                                              0xffC8D1E5)), // Color when not focused
                                                    ),
                                                    focusedBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(10.0),
                                                      borderSide: const BorderSide(
                                                          color: Color(
                                                              0xffC8D1E5)), // Color when focused
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                TextField(
                                                  decoration: InputDecoration(
                                                    // Prefix icon
                                                    prefixIcon: Container(
                                                      height: 51.8,
                                                      margin: const EdgeInsets
                                                          .only(left: 2),
                                                      width: MediaQuery
                                                          .of(context)
                                                          .size
                                                          .width * 0.50,
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius
                                                              .circular(7),
                                                          color: const Color(
                                                              0xffF8F9FB)),
                                                      child: const Center(
                                                        child: ReusableText(
                                                          title: 'Estimated Views',
                                                          size: 15,
                                                          weight: FontWeight
                                                              .w500,
                                                          color: Color(
                                                              0xff212121),
                                                        ),
                                                      ),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    hintStyle: const TextStyle(
                                                        fontWeight: FontWeight
                                                            .w700,
                                                        fontSize: 15,
                                                        color: Color(
                                                            0xff212121)),
                                                    hintText: '  10,415 views',

                                                    enabledBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(10.0),
                                                      borderSide: const BorderSide(
                                                          color: Color(
                                                              0xffC8D1E5)), // Color when not focused
                                                    ),
                                                    focusedBorder: OutlineInputBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(10.0),
                                                      borderSide: const BorderSide(
                                                          color: Color(
                                                              0xffC8D1E5)), // Color when focused
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  });
                            },
                          )
                              : _currentIndex == 16
                              ? showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function()) setState) {
                                  return Wrap(
                                    clipBehavior: Clip.antiAlias,
                                    children: [
                                      Container(
                                        height: MediaQuery
                                            .sizeOf(context)
                                            .height * 0.62,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                20)),
                                        padding: const EdgeInsets.all(16.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          physics: const ScrollPhysics(),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .center,
                                            children: <Widget>[
                                              const Text(
                                                'Paypal',
                                                style: TextStyle(fontSize: 18,
                                                    fontWeight: FontWeight
                                                        .w600),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                'Enter the Paypal Account Detail here',
                                                style: TextStyle(fontSize: 14,
                                                    color: Color(0xff99A7C7),
                                                    fontWeight: FontWeight
                                                        .w500),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              const Divider(
                                                indent: 5,
                                                endIndent: 5,
                                                thickness: 1,
                                                color: Color(0xffC8D1E5),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Column(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .start,
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  const Text(
                                                    "Card Name",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight
                                                            .w700,
                                                        fontSize: 13,
                                                        color: Color(
                                                            0xff7D8CAC)),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    height: 54,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xffF1F4FB),
                                                        borderRadius: BorderRadius
                                                            .circular(10)),
                                                    child: TextFormField(
                                                      decoration: const InputDecoration(
                                                          border: InputBorder
                                                              .none,
                                                          hintText: '   Home 2',
                                                          hintStyle: TextStyle(
                                                              fontWeight: FontWeight
                                                                  .w600,
                                                              fontSize: 16,
                                                              color: Color(
                                                                  0xff212121))),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Text(
                                                    "Card Number",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight
                                                            .w700,
                                                        fontSize: 13,
                                                        color: Color(
                                                            0xff7D8CAC)),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    height: 54,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xffF1F4FB),
                                                        borderRadius: BorderRadius
                                                            .circular(10)),
                                                    child: TextFormField(
                                                      decoration: const InputDecoration(
                                                          border: InputBorder
                                                              .none,
                                                          hintText: '   2657 5964 6648 6897',
                                                          hintStyle: TextStyle(
                                                              fontWeight: FontWeight
                                                                  .w600,
                                                              fontSize: 16,
                                                              color: Color(
                                                                  0xff212121))),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Column(
                                                        children: [
                                                          const Text(
                                                            "Card Number",
                                                            style: TextStyle(
                                                                fontWeight: FontWeight
                                                                    .w700,
                                                                fontSize: 13,
                                                                color: Color(
                                                                    0xff7D8CAC)),
                                                          ),
                                                          const SizedBox(
                                                            height: 10,
                                                          ),
                                                          Container(
                                                            height: 54,
                                                            width: MediaQuery
                                                                .sizeOf(context)
                                                                .width * 0.42,
                                                            decoration: BoxDecoration(
                                                                color: const Color(
                                                                    0xffF1F4FB),
                                                                borderRadius: BorderRadius
                                                                    .circular(
                                                                    10)),
                                                            child: TextFormField(
                                                              decoration: const InputDecoration(
                                                                  border: InputBorder
                                                                      .none,
                                                                  hintText: '   09/07/12',
                                                                  suffixIcon: Icon(
                                                                      Icons
                                                                          .calendar_month,
                                                                      color: Color(
                                                                          0xffC8D1E5)),
                                                                  hintStyle: TextStyle(
                                                                      fontWeight: FontWeight
                                                                          .w600,
                                                                      fontSize: 16,
                                                                      color: Color(
                                                                          0xff212121))),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Column(
                                                        children: [
                                                          const Text(
                                                            "CVV",
                                                            style: TextStyle(
                                                                fontWeight: FontWeight
                                                                    .w700,
                                                                fontSize: 13,
                                                                color: Color(
                                                                    0xff7D8CAC)),
                                                          ),
                                                          const SizedBox(
                                                            height: 10,
                                                          ),
                                                          Container(
                                                            height: 54,
                                                            width: MediaQuery
                                                                .sizeOf(context)
                                                                .width * 0.42,
                                                            decoration: BoxDecoration(
                                                                color: const Color(
                                                                    0xffF1F4FB),
                                                                borderRadius: BorderRadius
                                                                    .circular(
                                                                    10)),
                                                            child: TextFormField(
                                                              decoration: const InputDecoration(
                                                                  border: InputBorder
                                                                      .none,
                                                                  hintText: '   266',
                                                                  hintStyle: TextStyle(
                                                                      fontWeight: FontWeight
                                                                          .w600,
                                                                      fontSize: 16,
                                                                      color: Color(
                                                                          0xff212121))),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                mainAxisAlignment: MainAxisAlignment
                                                    .spaceAround,
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: MediaQuery
                                                        .sizeOf(context)
                                                        .width * 0.43,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius
                                                          .circular(10),
                                                      color: const Color(
                                                          0xffF1F4FB),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        'Cancel',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xff7D8CAC),
                                                            fontWeight: FontWeight
                                                                .w700),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: MediaQuery
                                                        .sizeOf(context)
                                                        .width * 0.43,
                                                    decoration: BoxDecoration(
                                                      gradient: const LinearGradient(
                                                          colors: [
                                                            Color(0xffFFC107),
                                                            Color(0xffFF8205),
                                                          ]),
                                                      borderRadius: BorderRadius
                                                          .circular(10),
                                                      color: const Color(
                                                          0xffF1F4FB),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        'Pay now',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xffFFFFFF),
                                                            fontWeight: FontWeight
                                                                .w700),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          )
                              : _currentIndex == 17
                              ? showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function()) setState) {
                                  return Wrap(
                                    clipBehavior: Clip.antiAlias,
                                    children: [
                                      Container(
                                        height: MediaQuery
                                            .sizeOf(context)
                                            .height * 0.50,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                20)),
                                        padding: const EdgeInsets.all(16.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          physics: const ScrollPhysics(),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .center,
                                            children: <Widget>[
                                              const Text(
                                                'Paypal',
                                                style: TextStyle(fontSize: 18,
                                                    fontWeight: FontWeight
                                                        .w600),
                                              ),
                                              const Text(
                                                'Enter the Paypal Account Detail here',
                                                style: TextStyle(fontSize: 14,
                                                    color: Color(0xff99A7C7),
                                                    fontWeight: FontWeight
                                                        .w500),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              const Divider(
                                                indent: 5,
                                                endIndent: 5,
                                                thickness: 1,
                                                color: Color(0xffC8D1E5),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                height: 54,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color: const Color(
                                                        0xffF1F4FB),
                                                    borderRadius: BorderRadius
                                                        .circular(10)),
                                                child: TextFormField(
                                                  decoration: const InputDecoration(
                                                      border: InputBorder.none,
                                                      prefixIcon: Icon(
                                                        Icons.mail_outline,
                                                        color: Color(
                                                            0xff99A7C7),
                                                      ),
                                                      hintText: 'Enter your email',
                                                      hintStyle: TextStyle(
                                                          fontWeight: FontWeight
                                                              .w600,
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xff99A7C7))),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                mainAxisAlignment: MainAxisAlignment
                                                    .spaceAround,
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: MediaQuery
                                                        .sizeOf(context)
                                                        .width * 0.43,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius
                                                          .circular(10),
                                                      color: const Color(
                                                          0xffF1F4FB),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        'Cancel',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xff7D8CAC),
                                                            fontWeight: FontWeight
                                                                .w700),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: MediaQuery
                                                        .sizeOf(context)
                                                        .width * 0.43,
                                                    decoration: BoxDecoration(
                                                      gradient: const LinearGradient(
                                                          colors: [
                                                            Color(0xffFFC107),
                                                            Color(0xffFF8205),
                                                          ]),
                                                      borderRadius: BorderRadius
                                                          .circular(10),
                                                      color: const Color(
                                                          0xffF1F4FB),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        'Pay now',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xffFFFFFF),
                                                            fontWeight: FontWeight
                                                                .w700),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          )
                              : _currentIndex == 18
                              ?

                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function()) setState) {
                                  return Wrap(
                                    clipBehavior: Clip.antiAlias,
                                    children: [
                                      Container(
                                        height: MediaQuery
                                            .sizeOf(context)
                                            .height * 0.90,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                20)),
                                        padding: const EdgeInsets.all(16.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          physics: const ScrollPhysics(),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            children: <Widget>[
                                              Row(
                                                children: [
                                                  const Icon(Icons.arrow_back),
                                                  SizedBox(
                                                    width: MediaQuery
                                                        .of(context)
                                                        .size
                                                        .width * 0.3,
                                                  ),
                                                  const Text(
                                                    'Delivery Details',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight: FontWeight
                                                            .w600),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              const Divider(
                                                indent: 5,
                                                endIndent: 5,
                                                thickness: 1,
                                                color: Color(0xffC8D1E5),
                                              ),
                                              const Text(
                                                "Full Name",
                                                style: TextStyle(fontSize: 13,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xff7D8CAC)),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                height: 54,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color: const Color(
                                                        0xffF1F4FB),
                                                    borderRadius: BorderRadius
                                                        .circular(10)),
                                                child: TextFormField(
                                                  decoration: const InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: 'Home 2',
                                                      hintStyle: TextStyle(
                                                          fontWeight: FontWeight
                                                              .w600,
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xff212121))),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                "Phone Number",
                                                style: TextStyle(fontSize: 13,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xff7D8CAC)),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                height: 54,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color: const Color(
                                                        0xffF1F4FB),
                                                    borderRadius: BorderRadius
                                                        .circular(10)),
                                                child: TextFormField(
                                                  decoration: const InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: '+12',
                                                      hintStyle: TextStyle(
                                                          fontWeight: FontWeight
                                                              .w600,
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xff212121))),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                "Email",
                                                style: TextStyle(fontSize: 13,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xff7D8CAC)),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                height: 54,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color: const Color(
                                                        0xffF1F4FB),
                                                    borderRadius: BorderRadius
                                                        .circular(10)),
                                                child: TextFormField(
                                                  decoration: const InputDecoration(
                                                      border: InputBorder.none,
                                                      hintStyle: TextStyle(
                                                          fontWeight: FontWeight
                                                              .w600,
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xff212121))),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                "City",
                                                style: TextStyle(fontSize: 13,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xff7D8CAC)),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                height: 54,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color: const Color(
                                                        0xffF1F4FB),
                                                    borderRadius: BorderRadius
                                                        .circular(10)),
                                                child: TextFormField(
                                                  decoration: const InputDecoration(
                                                      border: InputBorder.none,
                                                      hintStyle: TextStyle(
                                                          fontWeight: FontWeight
                                                              .w600,
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xff212121))),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                "Delivery home Address",
                                                style: TextStyle(fontSize: 13,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xff7D8CAC)),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                height: 54,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color: const Color(
                                                        0xffF1F4FB),
                                                    borderRadius: BorderRadius
                                                        .circular(10)),
                                                child: TextFormField(
                                                  decoration: const InputDecoration(
                                                      border: InputBorder.none,
                                                      hintStyle: TextStyle(
                                                          fontWeight: FontWeight
                                                              .w600,
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xff212121))),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                "Comment",
                                                style: TextStyle(fontSize: 13,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color(0xff7D8CAC)),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color: const Color(
                                                        0xffF1F4FB),
                                                    borderRadius: BorderRadius
                                                        .circular(10)),
                                                child: TextFormField(
                                                  maxLines: 4,
                                                  decoration: const InputDecoration(
                                                      border: InputBorder.none,
                                                      hintStyle: TextStyle(
                                                          fontWeight: FontWeight
                                                              .w600,
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xff212121))),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                mainAxisAlignment: MainAxisAlignment
                                                    .spaceAround,
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: MediaQuery
                                                        .sizeOf(context)
                                                        .width * 0.43,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius
                                                          .circular(10),
                                                      color: const Color(
                                                          0xffF1F4FB),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        'Cancel',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xff7D8CAC),
                                                            fontWeight: FontWeight
                                                                .w700),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: MediaQuery
                                                        .sizeOf(context)
                                                        .width * 0.43,
                                                    decoration: BoxDecoration(
                                                      gradient: const LinearGradient(
                                                          colors: [
                                                            Color(0xffFFC107),
                                                            Color(0xffFF8205),
                                                          ]),
                                                      borderRadius: BorderRadius
                                                          .circular(10),
                                                      color: const Color(
                                                          0xffF1F4FB),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        'Pay now',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xffFFFFFF),
                                                            fontWeight: FontWeight
                                                                .w700),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          )
                              : _currentIndex == 19
                              ? showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function()) setState) {
                                  return Wrap(
                                    clipBehavior: Clip.antiAlias,
                                    children: [
                                      Container(
                                        height: MediaQuery
                                            .sizeOf(context)
                                            .height * 0.55,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                20)),
                                        padding: const EdgeInsets.all(16.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          physics: const ScrollPhysics(),
                                          child: Column(
                                            children: <Widget>[
                                              const Text(
                                                'Select payment method',
                                                style: TextStyle(fontSize: 16,
                                                    color: Color(0xff120D26),
                                                    fontWeight: FontWeight
                                                        .w700),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              const Divider(
                                                indent: 5,
                                                endIndent: 5,
                                                thickness: 1,
                                                color: Color(0xffC8D1E5),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .spaceAround,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        _currentIndex = 0;
                                                        _isVisible = true;
                                                        _isVisible1 = false;
                                                        _isVisible2 = false;
                                                        _isVisible3 = false;
                                                      });
                                                    },
                                                    child: Container(
                                                      height: 107,
                                                      width: MediaQuery
                                                          .sizeOf(context)
                                                          .width * 0.43,
                                                      padding: const EdgeInsets
                                                          .all(10),
                                                      decoration: BoxDecoration(
                                                          color: _currentIndex ==
                                                              0
                                                              ? const Color(
                                                              0xffE9F7FF)
                                                              : const Color(
                                                              0xffF1F4FB),
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                          border: Border.all(
                                                              color: _currentIndex ==
                                                                  0
                                                                  ? const Color(
                                                                  0xff4EB4FF)
                                                                  : Colors
                                                                  .transparent)),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment
                                                            .start,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Visibility(
                                                              visible: _isVisible,
                                                              child: Container(
                                                                height: 20,
                                                                width: 20,
                                                                // margin:EdgeInsets.only(top: 5,right: 5),
                                                                decoration: const BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    color: Color(
                                                                        0xff4EB4FF)),
                                                                child: const Icon(
                                                                  Icons.done,
                                                                  size: 15,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          const Image(
                                                            image: AssetImage(
                                                                "Asset/images/check_out/XMLID 2.png"),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        _currentIndex = 1;
                                                        _isVisible = false;
                                                        _isVisible1 = true;
                                                        _isVisible2 = false;
                                                        _isVisible3 = false;
                                                      });
                                                    },
                                                    child: Container(
                                                      height: 107,
                                                      width: MediaQuery
                                                          .sizeOf(context)
                                                          .width * 0.43,
                                                      padding: const EdgeInsets
                                                          .all(10),
                                                      decoration: BoxDecoration(
                                                          color: _currentIndex ==
                                                              1
                                                              ? const Color(
                                                              0xffE9F7FF)
                                                              : const Color(
                                                              0xffF1F4FB),
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                          border: Border.all(
                                                              color: _currentIndex ==
                                                                  1
                                                                  ? const Color(
                                                                  0xff4EB4FF)
                                                                  : Colors
                                                                  .transparent)),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment
                                                            .start,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Visibility(
                                                              visible: _isVisible1,
                                                              child: Container(
                                                                height: 20,
                                                                width: 20,
                                                                // margin:EdgeInsets.only(top: 5,right: 5),
                                                                decoration: const BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    color: Color(
                                                                        0xff4EB4FF)),
                                                                child: const Icon(
                                                                  Icons.done,
                                                                  size: 15,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 10,
                                                          ),
                                                          const Row(
                                                            mainAxisAlignment: MainAxisAlignment
                                                                .center,
                                                            crossAxisAlignment: CrossAxisAlignment
                                                                .center,
                                                            children: [
                                                              Image(
                                                                image: AssetImage(
                                                                    "Asset/images/check_out/Payment Method.png"),
                                                              ),
                                                              Image(
                                                                image: AssetImage(
                                                                    "Asset/images/check_out/Payment Method (1).png"),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .spaceAround,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        _currentIndex = 2;
                                                        _isVisible2 = true;
                                                        _isVisible3 = false;
                                                        _isVisible = false;
                                                        _isVisible1 = false;
                                                      });
                                                    },
                                                    child: Container(
                                                      height: 107,
                                                      width: MediaQuery
                                                          .sizeOf(context)
                                                          .width * 0.43,
                                                      padding: const EdgeInsets
                                                          .all(10),
                                                      decoration: BoxDecoration(
                                                          color: _currentIndex ==
                                                              2
                                                              ? const Color(
                                                              0xffE9F7FF)
                                                              : const Color(
                                                              0xffF1F4FB),
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                          border: Border.all(
                                                              color: _currentIndex ==
                                                                  2
                                                                  ? const Color(
                                                                  0xff4EB4FF)
                                                                  : Colors
                                                                  .transparent)),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment
                                                            .center,
                                                        crossAxisAlignment: CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Visibility(
                                                              visible: _isVisible2,
                                                              child: Container(
                                                                height: 20,
                                                                width: 20,
                                                                // margin:EdgeInsets.only(top: 5,right: 5),
                                                                decoration: const BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    color: Color(
                                                                        0xff4EB4FF)),
                                                                child: const Icon(
                                                                  Icons.done,
                                                                  size: 15,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          const Image(
                                                            image: AssetImage(
                                                                "Asset/images/check_out/Group 18559.png"),
                                                          ),
                                                          const Text(
                                                            'Google Pay',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(
                                                                    0xff120D26),
                                                                fontWeight: FontWeight
                                                                    .w600),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        _currentIndex = 3;
                                                        _isVisible1 = false;
                                                        _isVisible1 = false;
                                                        _isVisible3 = true;
                                                        _isVisible2 = false;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: MediaQuery
                                                          .sizeOf(context)
                                                          .width * 0.43,
                                                      padding: const EdgeInsets
                                                          .all(10),
                                                      decoration: BoxDecoration(
                                                          color: _currentIndex ==
                                                              3
                                                              ? const Color(
                                                              0xffE9F7FF)
                                                              : const Color(
                                                              0xffF1F4FB),
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                          border: Border.all(
                                                              color: _currentIndex ==
                                                                  3
                                                                  ? const Color(
                                                                  0xff4EB4FF)
                                                                  : Colors
                                                                  .transparent)),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment
                                                            .center,
                                                        crossAxisAlignment: CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: Visibility(
                                                              visible: _isVisible3,
                                                              child: Container(
                                                                height: 20,
                                                                width: 20,
                                                                // margin:EdgeInsets.only(top: 5,right: 5),
                                                                decoration: const BoxDecoration(
                                                                    shape: BoxShape
                                                                        .circle,
                                                                    color: Color(
                                                                        0xff4EB4FF)),
                                                                child: const Icon(
                                                                  Icons.done,
                                                                  size: 15,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 10,
                                                          ),
                                                          const Image(
                                                            image: AssetImage(
                                                                "Asset/images/check_out/Shape.png"),
                                                          ),
                                                          const Text(
                                                            'Apple Pay',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Color(
                                                                    0xff120D26),
                                                                fontWeight: FontWeight
                                                                    .w600),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 25),
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                mainAxisAlignment: MainAxisAlignment
                                                    .spaceAround,
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: MediaQuery
                                                        .sizeOf(context)
                                                        .width * 0.43,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius
                                                          .circular(10),
                                                      color: const Color(
                                                          0xffF1F4FB),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        'Cancel',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xff7D8CAC),
                                                            fontWeight: FontWeight
                                                                .w700),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: MediaQuery
                                                        .sizeOf(context)
                                                        .width * 0.43,
                                                    decoration: BoxDecoration(
                                                      gradient: const LinearGradient(
                                                          colors: [
                                                            Color(0xffFFC107),
                                                            Color(0xffFF8205),
                                                          ]),
                                                      borderRadius: BorderRadius
                                                          .circular(10),
                                                      color: const Color(
                                                          0xffF1F4FB),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        'Pay now',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xffFFFFFF),
                                                            fontWeight: FontWeight
                                                                .w700),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          )
                              : _currentIndex == 20
                              ? showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function()) setState) {
                                  return Wrap(
                                    clipBehavior: Clip.antiAlias,
                                    children: [
                                      Container(
                                        height: MediaQuery
                                            .sizeOf(context)
                                            .height * 0.86,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                20)),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          physics: const ScrollPhysics(),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.all(
                                                    10),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment
                                                      .start,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment
                                                          .center,
                                                      crossAxisAlignment: CrossAxisAlignment
                                                          .center,
                                                      children: [
                                                        Container(
                                                          height: 4,
                                                          width: 70,
                                                          color: const Color(
                                                              0xff99A7C7),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    const Text(
                                                      "Title",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .w700,
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xff120D26)),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                      height: 54,
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                          color: const Color(
                                                              0xffFFFFFF),
                                                          borderRadius: BorderRadius
                                                              .circular(10)),
                                                      child: TextFormField(
                                                        decoration: InputDecoration(
                                                            enabledBorder: OutlineInputBorder(
                                                                borderRadius: BorderRadius
                                                                    .circular(
                                                                    10),
                                                                borderSide: const BorderSide(
                                                                  color: Color(
                                                                      0xffC8D1E5),
                                                                )),
                                                            focusedBorder: OutlineInputBorder(
                                                                borderRadius: BorderRadius
                                                                    .circular(
                                                                    10),
                                                                borderSide: const BorderSide(
                                                                  color: Color(
                                                                      0xffC8D1E5),
                                                                )),
                                                            hintText: '   Enter Here',
                                                            hintStyle: const TextStyle(
                                                                fontWeight: FontWeight
                                                                    .w500,
                                                                fontSize: 15,
                                                                color: Color(
                                                                    0xff7D8CAC))),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    const Text(
                                                      "How much money you would like to receive?",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .w700,
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xff120D26)),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                      height: 54,
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                          color: const Color(
                                                              0xffFFFFFF),
                                                          borderRadius: BorderRadius
                                                              .circular(10)),
                                                      child: TextFormField(
                                                        decoration: InputDecoration(
                                                            suffixIcon: FittedBox(
                                                              child: Row(
                                                                children: [
                                                                  Container(
                                                                    height: 40,
                                                                    width: 2,
                                                                    color: const Color(
                                                                        0xffC8D1E5),
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 5,
                                                                  ),
                                                                  const Text(
                                                                    "Dollar",
                                                                    style: TextStyle(
                                                                        fontWeight: FontWeight
                                                                            .w500,
                                                                        fontSize: 15,
                                                                        color: Color(
                                                                            0xff485470)),
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 5,
                                                                  ),
                                                                  const Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down,
                                                                    color: Color(
                                                                        0xff99A7C7),
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 5,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            enabledBorder: OutlineInputBorder(
                                                                borderRadius: BorderRadius
                                                                    .circular(
                                                                    10),
                                                                borderSide: const BorderSide(
                                                                  color: Color(
                                                                      0xffC8D1E5),
                                                                )),
                                                            focusedBorder: OutlineInputBorder(
                                                                borderRadius: BorderRadius
                                                                    .circular(
                                                                    10),
                                                                borderSide: const BorderSide(
                                                                  color: Color(
                                                                      0xffC8D1E5),
                                                                )),
                                                            hintText: '   Enter Here',
                                                            hintStyle: const TextStyle(
                                                                fontWeight: FontWeight
                                                                    .w500,
                                                                fontSize: 15,
                                                                color: Color(
                                                                    0xff7D8CAC))),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    const Text(
                                                      "Description",
                                                      style: TextStyle(
                                                          fontWeight: FontWeight
                                                              .w700,
                                                          fontSize: 16,
                                                          color: Color(
                                                              0xff120D26)),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                          color: const Color(
                                                              0xffFFFFFF),
                                                          borderRadius: BorderRadius
                                                              .circular(10)),
                                                      child: TextFormField(
                                                        maxLines: 5,
                                                        decoration: InputDecoration(
                                                            enabledBorder: OutlineInputBorder(
                                                                borderRadius: BorderRadius
                                                                    .circular(
                                                                    10),
                                                                borderSide: const BorderSide(
                                                                  color: Color(
                                                                      0xffC8D1E5),
                                                                )),
                                                            focusedBorder: OutlineInputBorder(
                                                                borderRadius: BorderRadius
                                                                    .circular(
                                                                    10),
                                                                borderSide: const BorderSide(
                                                                  color: Color(
                                                                      0xffC8D1E5),
                                                                )),
                                                            hintText: '   Enter Here',
                                                            hintStyle: const TextStyle(
                                                                fontWeight: FontWeight
                                                                    .w500,
                                                                fontSize: 15,
                                                                color: Color(
                                                                    0xff7D8CAC))),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Divider(
                                                height: 3,
                                                thickness: 3,
                                                color: Color(0xffC8D1E5),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(
                                                    10.0),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .start,
                                                  crossAxisAlignment: CrossAxisAlignment
                                                      .start,
                                                  children: [
                                                    ListTile(
                                                        contentPadding: EdgeInsets
                                                            .zero,
                                                        title: const Text(
                                                          "Album Image",
                                                          style: TextStyle(
                                                              fontWeight: FontWeight
                                                                  .w700,
                                                              fontSize: 16,
                                                              color: Color(
                                                                  0xff212121)),
                                                        ),
                                                        subtitle: const Text(
                                                          "You can unlimited images",
                                                          style: TextStyle(
                                                              fontWeight: FontWeight
                                                                  .w400,
                                                              fontSize: 12,
                                                              color: Color(
                                                                  0xff485470)),
                                                        ),
                                                        trailing: DottedBorder(
                                                          color: const Color(
                                                              0xffC8D1E5),
                                                          borderType: BorderType
                                                              .RRect,
                                                          radius: const Radius
                                                              .circular(20),
                                                          child: ClipRRect(
                                                            clipBehavior: Clip
                                                                .antiAlias,
                                                            borderRadius: const BorderRadius
                                                                .all(
                                                                Radius.circular(
                                                                    20)),
                                                            child: Container(
                                                              height: 33,
                                                              width: 100,
                                                              decoration: BoxDecoration(
                                                                  color: const Color(
                                                                      0xffF1F4FB),
                                                                  borderRadius: BorderRadius
                                                                      .circular(
                                                                      20)),
                                                              child: const Row(
                                                                mainAxisAlignment: MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment: CrossAxisAlignment
                                                                    .center,
                                                                children: [
                                                                  Icon(
                                                                    Icons
                                                                        .add_a_photo,
                                                                    color: Color(
                                                                        0xff99A7C7),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  Text(
                                                                    "Upload",
                                                                    style: TextStyle(
                                                                        fontWeight: FontWeight
                                                                            .w600,
                                                                        fontSize: 13,
                                                                        color: Color(
                                                                            0xff485470)),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        )),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    DottedBorder(
                                                      strokeWidth: 2,
                                                      color: const Color(
                                                          0xffC8D1E5),
                                                      borderType: BorderType
                                                          .RRect,
                                                      radius: const Radius
                                                          .circular(1),
                                                      child: ClipRRect(
                                                        clipBehavior: Clip
                                                            .antiAlias,
                                                        borderRadius: const BorderRadius
                                                            .all(
                                                            Radius.circular(1)),
                                                        child: Container(
                                                          height: 163,
                                                          width: MediaQuery
                                                              .sizeOf(context)
                                                              .width * 1,
                                                          decoration: BoxDecoration(
                                                              color: const Color(
                                                                  0xffF1F4FB),
                                                              borderRadius: BorderRadius
                                                                  .circular(1)),
                                                          child: const Column(
                                                            mainAxisAlignment: MainAxisAlignment
                                                                .center,
                                                            crossAxisAlignment: CrossAxisAlignment
                                                                .center,
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment
                                                                    .center,
                                                                crossAxisAlignment: CrossAxisAlignment
                                                                    .center,
                                                                children: [
                                                                  Icon(
                                                                    Icons.photo,
                                                                    color: Color(
                                                                        0xff99A7C7),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  Text(
                                                                    "Upload Image",
                                                                    style: TextStyle(
                                                                        fontWeight: FontWeight
                                                                            .w700,
                                                                        fontSize: 15,
                                                                        color: Color(
                                                                            0xff485470)),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              Text(
                                                                "Select from computer or drag & drop the image",
                                                                style: TextStyle(
                                                                    fontWeight: FontWeight
                                                                        .w500,
                                                                    fontSize: 11,
                                                                    color: Color(
                                                                        0xff485470)),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                mainAxisAlignment: MainAxisAlignment
                                                    .spaceAround,
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: MediaQuery
                                                        .sizeOf(context)
                                                        .width * 0.43,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius
                                                          .circular(10),
                                                      color: const Color(
                                                          0xffF1F4FB),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        'Cancel',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xff7D8CAC),
                                                            fontWeight: FontWeight
                                                                .w700),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: MediaQuery
                                                        .sizeOf(context)
                                                        .width * 0.43,
                                                    decoration: BoxDecoration(
                                                      gradient: const LinearGradient(
                                                          colors: [
                                                            Color(0xffFFC107),
                                                            Color(0xffFF8205),
                                                          ]),
                                                      borderRadius: BorderRadius
                                                          .circular(10),
                                                      color: const Color(
                                                          0xffF1F4FB),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        'Save',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xffFFFFFF),
                                                            fontWeight: FontWeight
                                                                .w700),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          )
                              : _currentIndex == 21
                              ? showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function()) setState) {
                                  return Wrap(
                                    clipBehavior: Clip.antiAlias,
                                    children: [
                                      Container(
                                        height: MediaQuery
                                            .sizeOf(context)
                                            .height * 0.86,
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                20)),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          physics: const ScrollPhysics(),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .center,
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .center,
                                                children: [
                                                  Container(
                                                    height: 4,
                                                    width: 70,
                                                    color: const Color(
                                                        0xff99A7C7),
                                                  )
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                "Title",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
                                                    color: Color(0xff120D26)),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                height: 54,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color: const Color(
                                                        0xffFFFFFF),
                                                    borderRadius: BorderRadius
                                                        .circular(10)),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                      enabledBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                          borderSide: const BorderSide(
                                                            color: Color(
                                                                0xffC8D1E5),
                                                          )),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                          borderSide: const BorderSide(
                                                            color: Color(
                                                                0xffC8D1E5),
                                                          )),
                                                      hintText: '   Enter Here',
                                                      hintStyle: const TextStyle(
                                                          fontWeight: FontWeight
                                                              .w500,
                                                          fontSize: 15,
                                                          color: Color(
                                                              0xff7D8CAC))),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                "Location",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
                                                    color: Color(0xff120D26)),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                height: 54,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color: const Color(
                                                        0xffFFFFFF),
                                                    borderRadius: BorderRadius
                                                        .circular(10)),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                      enabledBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                          borderSide: const BorderSide(
                                                            color: Color(
                                                                0xffC8D1E5),
                                                          )),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                          borderSide: const BorderSide(
                                                            color: Color(
                                                                0xffC8D1E5),
                                                          )),
                                                      hintText: '   Enter Here',
                                                      hintStyle: const TextStyle(
                                                          fontWeight: FontWeight
                                                              .w500,
                                                          fontSize: 15,
                                                          color: Color(
                                                              0xff7D8CAC))),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                "Salary",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
                                                    color: Color(0xff120D26)),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                height: 54,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color: const Color(
                                                        0xffFFFFFF),
                                                    borderRadius: BorderRadius
                                                        .circular(10)),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                      suffixIcon: FittedBox(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              height: 40,
                                                              width: 2,
                                                              color: const Color(
                                                                  0xffC8D1E5),
                                                            ),
                                                            const SizedBox(
                                                              width: 5,
                                                            ),
                                                            const Text(
                                                              "per month",
                                                              style: TextStyle(
                                                                  fontWeight: FontWeight
                                                                      .w500,
                                                                  fontSize: 15,
                                                                  color: Color(
                                                                      0xff485470)),
                                                            ),
                                                            const SizedBox(
                                                              width: 5,
                                                            ),
                                                            const Icon(
                                                              Icons
                                                                  .keyboard_arrow_down,
                                                              color: Color(
                                                                  0xff99A7C7),
                                                            ),
                                                            const SizedBox(
                                                              width: 5,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      enabledBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                          borderSide: const BorderSide(
                                                            color: Color(
                                                                0xffC8D1E5),
                                                          )),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                          borderSide: const BorderSide(
                                                            color: Color(
                                                                0xffC8D1E5),
                                                          )),
                                                      hintText: '   Enter Here',
                                                      hintStyle: const TextStyle(
                                                          fontWeight: FontWeight
                                                              .w500,
                                                          fontSize: 15,
                                                          color: Color(
                                                              0xff7D8CAC))),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                "Gender",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
                                                    color: Color(0xff120D26)),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  Container(
                                                    padding: const EdgeInsets
                                                        .only(top: 7,
                                                        right: 14,
                                                        bottom: 7,
                                                        left: 14),
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xffF1F4FB),
                                                        borderRadius: BorderRadius
                                                            .circular(21)),
                                                    child: const Center(
                                                      child: Text(
                                                        "Both / Any",
                                                        style: TextStyle(
                                                            fontWeight: FontWeight
                                                                .w500,
                                                            fontSize: 14,
                                                            color: Color(
                                                                0xff485470)),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        _currentIndex = 0;
                                                      });
                                                    },
                                                    child: Container(
                                                      padding: const EdgeInsets
                                                          .only(top: 7,
                                                          right: 14,
                                                          bottom: 7,
                                                          left: 14),
                                                      decoration: BoxDecoration(
                                                          color: _currentIndex ==
                                                              0
                                                              ? const Color(
                                                              0xffFFFFFF)
                                                              : const Color(
                                                              0xffF1F4FB),
                                                          borderRadius: BorderRadius
                                                              .circular(21),
                                                          border: Border.all(
                                                            color: _currentIndex ==
                                                                0
                                                                ? const Color(
                                                                0xffFF9200)
                                                                : Colors
                                                                .transparent,
                                                          )),
                                                      child: Center(
                                                        child: Text(
                                                          "male",
                                                          style: TextStyle(
                                                              fontWeight: FontWeight
                                                                  .w500,
                                                              fontSize: 14,
                                                              color: _currentIndex ==
                                                                  0
                                                                  ? const Color(
                                                                  0xffFF9200)
                                                                  : const Color(
                                                                  0xff485470)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        _currentIndex = 1;
                                                      });
                                                    },
                                                    child: Container(
                                                      padding: const EdgeInsets
                                                          .only(top: 7,
                                                          right: 14,
                                                          bottom: 7,
                                                          left: 14),
                                                      decoration: BoxDecoration(
                                                          color: _currentIndex ==
                                                              1
                                                              ? const Color(
                                                              0xffFFFFFF)
                                                              : const Color(
                                                              0xffF1F4FB),
                                                          borderRadius: BorderRadius
                                                              .circular(21),
                                                          border: Border.all(
                                                            color: _currentIndex ==
                                                                1
                                                                ? const Color(
                                                                0xffFF9200)
                                                                : Colors
                                                                .transparent,
                                                          )),
                                                      child: Center(
                                                        child: Text(
                                                          "female",
                                                          style: TextStyle(
                                                              fontWeight: FontWeight
                                                                  .w500,
                                                              fontSize: 14,
                                                              color: _currentIndex ==
                                                                  1
                                                                  ? const Color(
                                                                  0xffFF9200)
                                                                  : const Color(
                                                                  0xff485470)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                "Job Type",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
                                                    color: Color(0xff120D26)),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                children: [
                                                  Container(
                                                    padding: const EdgeInsets
                                                        .only(top: 7,
                                                        right: 14,
                                                        bottom: 7,
                                                        left: 14),
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xffF1F4FB),
                                                        borderRadius: BorderRadius
                                                            .circular(21)),
                                                    child: const Center(
                                                      child: Text(
                                                        "Part Time",
                                                        style: TextStyle(
                                                            fontWeight: FontWeight
                                                                .w500,
                                                            fontSize: 14,
                                                            color: Color(
                                                                0xff485470)),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        _currentIndex1 = 0;
                                                      });
                                                    },
                                                    child: Container(
                                                      padding: const EdgeInsets
                                                          .only(top: 7,
                                                          right: 14,
                                                          bottom: 7,
                                                          left: 14),
                                                      decoration: BoxDecoration(
                                                          color: _currentIndex1 ==
                                                              0
                                                              ? const Color(
                                                              0xffFFFFFF)
                                                              : const Color(
                                                              0xffF1F4FB),
                                                          borderRadius: BorderRadius
                                                              .circular(21),
                                                          border: Border.all(
                                                            color: _currentIndex1 ==
                                                                0
                                                                ? const Color(
                                                                0xffFF9200)
                                                                : Colors
                                                                .transparent,
                                                          )),
                                                      child: Center(
                                                        child: Text(
                                                          "Full-Time",
                                                          style: TextStyle(
                                                              fontWeight: FontWeight
                                                                  .w500,
                                                              fontSize: 14,
                                                              color: _currentIndex1 ==
                                                                  0
                                                                  ? const Color(
                                                                  0xffFF9200)
                                                                  : const Color(
                                                                  0xff485470)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        _currentIndex1 = 1;
                                                      });
                                                    },
                                                    child: Container(
                                                      padding: const EdgeInsets
                                                          .only(top: 7,
                                                          right: 14,
                                                          bottom: 7,
                                                          left: 14),
                                                      decoration: BoxDecoration(
                                                          color: _currentIndex1 ==
                                                              1
                                                              ? const Color(
                                                              0xffFFFFFF)
                                                              : const Color(
                                                              0xffF1F4FB),
                                                          borderRadius: BorderRadius
                                                              .circular(21),
                                                          border: Border.all(
                                                            color: _currentIndex1 ==
                                                                1
                                                                ? const Color(
                                                                0xffFF9200)
                                                                : Colors
                                                                .transparent,
                                                          )),
                                                      child: Center(
                                                        child: Text(
                                                          "Freelance",
                                                          style: TextStyle(
                                                              fontWeight: FontWeight
                                                                  .w500,
                                                              fontSize: 14,
                                                              color: _currentIndex1 ==
                                                                  1
                                                                  ? const Color(
                                                                  0xffFF9200)
                                                                  : const Color(
                                                                  0xff485470)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                "Openings",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
                                                    color: Color(0xff120D26)),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                height: 54,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color: const Color(
                                                        0xffFFFFFF),
                                                    borderRadius: BorderRadius
                                                        .circular(10)),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                      enabledBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                          borderSide: const BorderSide(
                                                            color: Color(
                                                                0xffC8D1E5),
                                                          )),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                          borderSide: const BorderSide(
                                                            color: Color(
                                                                0xffC8D1E5),
                                                          )),
                                                      hintText: '   02',
                                                      hintStyle: const TextStyle(
                                                          fontWeight: FontWeight
                                                              .w500,
                                                          fontSize: 15,
                                                          color: Color(
                                                              0xff7D8CAC))),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Text(
                                                "Description",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 16,
                                                    color: Color(0xff120D26)),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color: const Color(
                                                        0xffFFFFFF),
                                                    borderRadius: BorderRadius
                                                        .circular(10)),
                                                child: TextFormField(
                                                  maxLines: 5,
                                                  decoration: InputDecoration(
                                                      enabledBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                          borderSide: const BorderSide(
                                                            color: Color(
                                                                0xffC8D1E5),
                                                          )),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                          borderSide: const BorderSide(
                                                            color: Color(
                                                                0xffC8D1E5),
                                                          )),
                                                      hintText: '   Enter Here',
                                                      hintStyle: const TextStyle(
                                                          fontWeight: FontWeight
                                                              .w500,
                                                          fontSize: 15,
                                                          color: Color(
                                                              0xff7D8CAC))),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .start,
                                                mainAxisAlignment: MainAxisAlignment
                                                    .spaceAround,
                                                children: [
                                                  Container(
                                                    height: 50,
                                                    width: MediaQuery
                                                        .sizeOf(context)
                                                        .width * 0.43,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius
                                                          .circular(10),
                                                      color: const Color(
                                                          0xffF1F4FB),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        'Cancel',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xff7D8CAC),
                                                            fontWeight: FontWeight
                                                                .w700),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: MediaQuery
                                                        .sizeOf(context)
                                                        .width * 0.43,
                                                    decoration: BoxDecoration(
                                                      gradient: const LinearGradient(
                                                          colors: [
                                                            Color(0xffFFC107),
                                                            Color(0xffFF8205),
                                                          ]),
                                                      borderRadius: BorderRadius
                                                          .circular(10),
                                                      color: const Color(
                                                          0xffF1F4FB),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        'Save',
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            color: Color(
                                                                0xffFFFFFF),
                                                            fontWeight: FontWeight
                                                                .w700),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          )
                              : _currentIndex == 22 ?
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function()) setState) {
                                  return Wrap(
                                    clipBehavior: Clip.antiAlias,
                                    children: [
                                      Container(
                                        height: MediaQuery
                                            .sizeOf(context)
                                            .height * 0.86,
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                20)),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          physics: const ScrollPhysics(),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            children: <Widget>[

                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [

                                                  const Spacer(),
                                                  const ReusableText(
                                                    title: 'Add Music',
                                                    size: 18,
                                                    weight: FontWeight.w600,
                                                    color: Color(0xff000000),
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    padding: const EdgeInsets
                                                        .all(5),
                                                    decoration: const BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffF1F4FB),
                                                    ),
                                                    child: const Icon(
                                                      Icons.close,
                                                      color: Color(0xff7D8CAC),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                height: 54,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    color: const Color(
                                                        0xffFFFFFF),
                                                    borderRadius: BorderRadius
                                                        .circular(20)),
                                                child: TextFormField(
                                                  decoration: InputDecoration(
                                                      prefixIcon: const Icon(
                                                          Icons.search,
                                                          color: Color(
                                                              0xffC8D1E5)),
                                                      enabledBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius
                                                              .circular(20),
                                                          borderSide: BorderSide
                                                              .none),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius
                                                              .circular(20),
                                                          borderSide: BorderSide
                                                              .none),
                                                      hintText: 'Search',
                                                      hintStyle: const TextStyle(
                                                          fontWeight: FontWeight
                                                              .w500,
                                                          fontSize: 15,
                                                          color: Color(
                                                              0xff7D8CAC))),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              ListView.builder(
                                                shrinkWrap: true,
                                                physics: const NeverScrollableScrollPhysics(),
                                                itemCount: musicList.length,
                                                itemBuilder: (
                                                    BuildContext context,
                                                    int index) {
                                                  return Column(
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      ListTile(
                                                        contentPadding: EdgeInsets
                                                            .zero,
                                                        leading: Image(
                                                          image: AssetImage(
                                                              musicList[index]
                                                                  .toString()),),
                                                        title: const ReusableText(
                                                          title: 'Despacito',
                                                          size: 15,
                                                          weight: FontWeight
                                                              .w600,
                                                          color: Color(
                                                              0xff212121),
                                                        ),
                                                        subtitle: const ReusableText(
                                                          title: 'Luis Fonsi x Justin Bieber',
                                                          size: 13,
                                                          weight: FontWeight
                                                              .w500,
                                                          color: Color(
                                                              0xff7D8CAC),
                                                        ),
                                                        trailing: Container(
                                                          padding: const EdgeInsets
                                                              .all(5),
                                                          decoration: const BoxDecoration(
                                                            shape: BoxShape
                                                                .circle,
                                                            color: Color(
                                                                0xff7D8CAC),
                                                          ),
                                                          child: const Icon(
                                                            Icons.play_arrow,
                                                            color: Color(
                                                                0xffFFFFFF),
                                                          ),
                                                        ),
                                                      ),
                                                      const Divider(thickness: 2,
                                                        color: Color(
                                                            0xffE3E8F2),
                                                        height: 2,)
                                                    ],
                                                  );
                                                },


                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ) : _currentIndex == 23 ?
                          showModalBottomSheet(
                            isScrollControlled:
                            true,
                            context:
                            context,
                            shape:
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder:
                                (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function()) setState) {
                                  return Wrap(
                                    clipBehavior: Clip.antiAlias,
                                    children: [
                                      Container(
                                        height: MediaQuery
                                            .sizeOf(context)
                                            .height * 0.60,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                20)),
                                        padding: const EdgeInsets.all(16.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          physics: const ScrollPhysics(),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            children: [
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .center,
                                                children: [
                                                  const Spacer(),
                                                  const Text(
                                                    "Gallery",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Color(
                                                            0xff212121),
                                                        fontWeight: FontWeight
                                                            .w700),
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    height: 35,
                                                    width: 35,
                                                    decoration: const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Color(
                                                            0xffC8D1E5)),
                                                    child: const Center(
                                                        child: Icon(
                                                          Icons.close,
                                                          color: Colors.white,
                                                        )),
                                                  ),
                                                ],
                                              ),

                                              const SizedBox(
                                                height: 10,
                                              ),
                                              GridView.builder(
                                                itemCount: galleryImages.length,
                                                shrinkWrap: true,
                                                physics: const NeverScrollableScrollPhysics(),
                                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 3,
                                                    mainAxisSpacing: 10,
                                                    crossAxisSpacing: 10),
                                                itemBuilder: (
                                                    BuildContext context,
                                                    int index) {
                                                  return Image(
                                                      image: AssetImage(
                                                          galleryImages[index]
                                                              .toString()));
                                                },
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ) :
                          _currentIndex == 24
                              ?
                          showModalBottomSheet(
                            isScrollControlled:
                            true,
                            context:
                            context,
                            shape:
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder:
                                (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function()) setState) {
                                  return Wrap(
                                    clipBehavior: Clip.antiAlias,
                                    children: [
                                      Container(
                                        height: MediaQuery
                                            .sizeOf(context)
                                            .height * 0.60,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                20)),
                                        padding: const EdgeInsets.all(16.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          physics: const ScrollPhysics(),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            children: [
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .center,
                                                children: [
                                                  const Spacer(),
                                                  const Text(
                                                    "Stickers",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Color(
                                                            0xff212121),
                                                        fontWeight: FontWeight
                                                            .w700),
                                                  ),
                                                  const Spacer(),
                                                  Container(
                                                    height: 35,
                                                    width: 35,
                                                    decoration: const BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Color(
                                                            0xffC8D1E5)),
                                                    child: const Center(
                                                        child: Icon(
                                                          Icons.close,
                                                          color: Colors.white,
                                                        )),
                                                  ),
                                                ],
                                              ),

                                              const SizedBox(
                                                height: 10,
                                              ),
                                              GridView.builder(
                                                itemCount: stickers.length,
                                                shrinkWrap: true,
                                                physics: const NeverScrollableScrollPhysics(),
                                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 3,
                                                    mainAxisSpacing: 10,
                                                    crossAxisSpacing: 10),
                                                itemBuilder: (
                                                    BuildContext context,
                                                    int index) {
                                                  return Image(
                                                      image: AssetImage(
                                                          stickers[index]
                                                              .toString()));
                                                },
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ):
                          _currentIndex == 25
                              ?
                          showModalBottomSheet(
                            isScrollControlled:
                            true,
                            context:
                            context,
                            shape:
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder:
                                (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function()) setState) {
                                  return Wrap(
                                    clipBehavior: Clip.antiAlias,
                                    children: [
                                      Container(
                                        height: MediaQuery
                                            .sizeOf(context)
                                            .height * 0.30,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                20)),
                                        padding: const EdgeInsets.all(16.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          physics: const ScrollPhysics(),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .center,
                                            children: [
                                              const Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .center,
                                                children: [
                                                  Spacer(),
                                                  Text(
                                                    "Save to",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Color(
                                                            0xff212121),
                                                        fontWeight: FontWeight
                                                            .w700),
                                                  ),
                                                  Spacer(),

                                                ],
                                              ),

                                              const SizedBox(
                                                height: 10,
                                              ),
const ReusableText(title: 'Create your first playlist to save the video',size: 14,color: Color(0xff485470),weight: FontWeight.w600,)
                                             ,
                                             const SizedBox(height:10),
                                  Container(
                                  height: 53,
                                  padding: const EdgeInsets.all(
                                  10),
                                  margin: const EdgeInsets.only(
                                  bottom: 10),
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius
                                      .circular(9),
                                  color: const Color(
                                  0xffF1F4FB),
                                  ),
                                  child: const Row(
                                  crossAxisAlignment: CrossAxisAlignment
                                      .center,
                                  mainAxisAlignment: MainAxisAlignment
                                      .center,
                                  children: [
                                  Image(
                                      color:Color(0xff99A7C7),
                                      image: AssetImage(
                                 'Asset/icons/order/Group 1000002189.png')

                                  ),
                                  SizedBox(
                                  width: 15,
                                  ),
                                  Text(
                                 'Create new playlist',
                                  style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight
                                      .w500,
                                  color: Color(
                                  0xff212121)),
                                  )
                                  ],
                                  ),
                                  ),
                                             const SizedBox(height:10) ,

                                              Container(
                                                height: 50,
                                                width: MediaQuery
                                                    .sizeOf(context)
                                                    .width * 1,
                                                decoration: BoxDecoration(
                                                  gradient: const LinearGradient(
                                                      colors: [
                                                        Color(0xffFFC107),
                                                        Color(0xffFF8205),
                                                      ]),
                                                  borderRadius: BorderRadius
                                                      .circular(10),
                                                  color: const Color(
                                                      0xffF1F4FB),
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    'Save',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color(
                                                            0xffFFFFFF),
                                                        fontWeight: FontWeight
                                                            .w700),
                                                  ),
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ):
                          _currentIndex == 26
                              ?
                          showModalBottomSheet(
                            isScrollControlled:
                            true,
                            context:
                            context,
                            shape:
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    topLeft: Radius.circular(15))),
                            builder:
                                (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    void Function(void Function()) setState) {
                                  return Wrap(
                                    clipBehavior: Clip.antiAlias,
                                    children: [
                                      Container(
                                        height: MediaQuery
                                            .sizeOf(context)
                                            .height * 0.48,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                20)),
                                        padding: const EdgeInsets.all(16.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          physics: const ScrollPhysics(),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .center,
                                            children: [
                                              const Row(
                                                crossAxisAlignment: CrossAxisAlignment
                                                    .center,
                                                children: [
                                                  Spacer(),
                                                  Text(
                                                    "Save to",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Color(
                                                            0xff212121),
                                                        fontWeight: FontWeight
                                                            .w700),
                                                  ),
                                                  Spacer(),

                                                ],
                                              ),

                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const ReusableText(title: 'Create your first playlist to save the video',size: 14,color: Color(0xff485470),weight: FontWeight.w600,)
                                              ,
                                              const SizedBox(height:10),
                                              Container(
                                                height: 53,
                                                padding: const EdgeInsets.all(
                                                    10),
                                                margin: const EdgeInsets.only(
                                                    bottom: 10),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .circular(9),
                                                  color: const Color(
                                                      0xffF1F4FB),
                                                ),
                                                child: const Row(
                                                  crossAxisAlignment: CrossAxisAlignment
                                                      .center,
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .center,
                                                  children: [
                                                    Image(
                                                        color:Color(0xff99A7C7),
                                                        image: AssetImage(
                                                            'Asset/icons/order/Group 1000002189.png')

                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Text(
                                                      'Create new playlist',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight
                                                              .w500,
                                                          color: Color(
                                                              0xff212121)),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height:10) ,
                                              Container(
                                                height: 53,
                                                padding: const EdgeInsets.all(
                                                    10),
                                                margin: const EdgeInsets.only(
                                                    bottom: 10),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .circular(9),
                                                  color: const Color(
                                                      0xffF1F4FB),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment
                                                      .center,
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .start,
                                                  children: [
                                                GestureDetector(
                                                  onTap:(){
                                                  setState((){
                                                    _isChecked=!_isChecked;
                                                  });
                                              },
                                                  child: Container(
                                                    height:20,width:20,
                                                    decoration: BoxDecoration(
                                                      shape:BoxShape.rectangle,
                                                        border:Border.all(color:_isChecked?const Color(0xffFFFFFF):const Color(0xff99A7C7)),
                                                      color: _isChecked?const Color(0xffFF9200):const Color(0xffFFFFFF)
                                                    ),
                                                    child: _isChecked?const Icon(Icons.done,color: Colors.white,size:16):const SizedBox(),
                                                  ),
                                                ),
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    const Text(
                                                      'Watch Later',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight
                                                              .w500,
                                                          color: Color(
                                                              0xff212121)),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height:10),
                                              Container(
                                                height: 53,
                                                padding: const EdgeInsets.all(
                                                    10),
                                                margin: const EdgeInsets.only(
                                                    bottom: 10),
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius
                                                      .circular(9),
                                                  color: const Color(
                                                      0xffF1F4FB),
                                                ),
                                                child: Row(
                                                  crossAxisAlignment: CrossAxisAlignment
                                                      .center,
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .start,
                                                  children: [
                                                    GestureDetector(
                                                      onTap:(){
                                                        setState((){
                                                          _isChecked1=!_isChecked1;
                                                        });
                                                      },
                                                      child: Container(
                                                        height:20,width:20,
                                                        decoration: BoxDecoration(
                                                            shape:BoxShape.rectangle,
                                                            border:Border.all(color:_isChecked?const Color(0xffFFFFFF):const Color(0xff99A7C7)),
                                                            color: _isChecked1?const Color(0xffFF9200):const Color(0xffFFFFFF)
                                                        ),
                                                        child: _isChecked1?const Icon(Icons.done,size:16,color: Colors.white,):const SizedBox(),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 15,
                                                    ),
                                                    const Text(
                                                      'My Video',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight
                                                              .w500,
                                                          color: Color(
                                                              0xff212121)),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height:30),
                                              Container(
                                                height: 50,
                                                width: MediaQuery
                                                    .sizeOf(context)
                                                    .width * 1,
                                                decoration: BoxDecoration(
                                                  gradient: const LinearGradient(
                                                      colors: [
                                                        Color(0xffFFC107),
                                                        Color(0xffFF8205),
                                                      ]),
                                                  borderRadius: BorderRadius
                                                      .circular(10),
                                                  color: const Color(
                                                      0xffF1F4FB),
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    'Save',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color(
                                                            0xffFFFFFF),
                                                        fontWeight: FontWeight
                                                            .w700),
                                                  ),
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ):
                          _currentIndex == 27
                              ?
                          showModalBottomSheet(
                            isScrollControlled:
                            true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight:
                                    Radius.circular(
                                        15),
                                    topLeft: Radius
                                        .circular(
                                        15))),
                            builder:
                                (BuildContext
                            context) {
                              return Wrap(
                                clipBehavior:
                                Clip.antiAlias,
                                children: [
                                  Container(
                                    height: MediaQuery
                                        .sizeOf(context)
                                        .height *
                                        0.60,
                                    decoration:
                                    BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            20)),
                                    child:
                                    SingleChildScrollView(
                                      scrollDirection:
                                      Axis.vertical,
                                      physics:
                                      const ScrollPhysics(),
                                      child:
                                      Padding(
                                        padding: const EdgeInsets
                                            .all(10),
                                        child:
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            const Center(
                                              child:
                                              Text(
                                                'Build Your Live Room',
                                                style: TextStyle(fontSize: 18,
                                                    color: Color(0xff212121),
                                                    fontWeight: FontWeight
                                                        .w800),
                                              ),
                                            ),
                                            const SizedBox(
                                              height:
                                              10,
                                            ),
                                            const Divider(
                                              thickness:
                                              2,
                                              height:
                                              2,
                                              color:
                                              Color(0xffC8D1E5),
                                            ),
                                            const SizedBox(
                                              height:
                                              10,
                                            ),
                                            ListView.builder(
                                              itemCount: iconTextList9.length,
                                              shrinkWrap: true,
                                              physics:NeverScrollableScrollPhysics(),
                                              itemBuilder: (
                                                  BuildContext context,
                                                  int index) {
                                                return Container(
                                                  padding: const EdgeInsets .symmetric(horizontal: 10,vertical: 7),
                                                  margin: const EdgeInsets.only(
                                                      bottom: 10),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius
                                                        .circular(9),
                                                    color: const Color(
                                                        0xffF1F4FB),
                                                  ),
                                                  child:
                                                  Row(

                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .center,
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .start,
                                                    children: [
                                                      Container(
                                                       padding:EdgeInsets.all(10),
                                                        decoration:BoxDecoration(
                                                          shape:BoxShape.circle,
                                                          color:Color(0xffFFFFFF)
                                                        ),
                                                        child: Image(
                                                            color:Color(0xffFF9200),
                                                            image: AssetImage(
                                                            iconTextList9[index]
                                                                .iconRequired
                                                                .toString())),
                                                      ),
                                                      const SizedBox(
                                                        width: 15,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text(
                                                            iconTextList9[index]
                                                                .textRequired
                                                                .toString(),
                                                            style: const TextStyle(
                                                                fontSize: 15,
                                                                fontWeight: FontWeight
                                                                    .w500,
                                                                color: Color(
                                                                    0xff212121)),
                                                          ),
                                                          SizedBox(height:3),
                                                          Text(
                                                            liveSubtext[index]
                                                                .toString(),
                                                            style: const TextStyle(
                                                                fontSize: 14,
                                                                fontWeight: FontWeight
                                                                    .w500,
                                                                color: Color(
                                                                    0xff485470)),
                                                          ),
                                                        ],
                                                      ),
                                                      Spacer(),
                                                      Icon(Icons.arrow_forward_ios_sharp,color:Color(0xff99A7C7))
                                                    ],
                                                  ),
                                                );
                                              },
                                            )
                                            ,
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceAround,
                                              children: [
                                                Container(
                                                  height: 50,
                                                  width: MediaQuery
                                                      .sizeOf(
                                                      context)
                                                      .width *
                                                      0.46,
                                                  decoration:
                                                  BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        10),
                                                    color: const Color(
                                                        0xffF1F4FB),
                                                  ),
                                                  child:
                                                  const Center(
                                                    child: Text(
                                                      'Cancel',
                                                      style: TextStyle(
                                                          fontSize:
                                                          16,
                                                          color: Color(
                                                              0xff7D8CAC),
                                                          fontWeight:
                                                          FontWeight
                                                              .w700),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 50,
                                                  width: MediaQuery
                                                      .sizeOf(
                                                      context)
                                                      .width *
                                                      0.46,
                                                  decoration:
                                                  BoxDecoration(
                                                    gradient:
                                                    const LinearGradient(
                                                        colors: [
                                                          Color(
                                                              0xffFFC107),
                                                          Color(
                                                              0xffFF8205),
                                                        ]),
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        10),
                                                    color: const Color(
                                                        0xffF1F4FB),
                                                  ),
                                                  child:
                                                  const Center(
                                                    child: Text(
                                                      'Save',
                                                      style: TextStyle(
                                                          fontSize:
                                                          16,
                                                          color: Color(
                                                              0xffFFFFFF),
                                                          fontWeight:
                                                          FontWeight
                                                              .w700),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ):
                          _currentIndex == 28
                              ?
                          showModalBottomSheet(
                            isScrollControlled:
                            true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight:
                                    Radius.circular(
                                        15),
                                    topLeft: Radius
                                        .circular(
                                        15))),
                            builder:
                                (BuildContext
                            context) {
                              return Wrap(
                                clipBehavior:
                                Clip.antiAlias,
                                children: [
                                  Container(
                                    height: MediaQuery
                                        .sizeOf(context)
                                        .height *
                                        0.50,
                                    decoration:
                                    BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            20)),
                                    child:
                                    SingleChildScrollView(
                                      scrollDirection:
                                      Axis.vertical,
                                      physics:
                                      const ScrollPhysics(),
                                      child:
                                      Padding(
                                        padding: const EdgeInsets
                                            .all(10),
                                        child:
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.arrow_back,color:Color(0xff212121)),
                                                Spacer(),
                                                Text(
                                                  'Room Activity',
                                                  style: TextStyle(fontSize: 18,
                                                      color: Color(0xff212121),
                                                      fontWeight: FontWeight
                                                          .w800),
                                                ),
                                                Spacer(),
                                              ],
                                            ),
                                            const SizedBox(
                                              height:
                                              10,
                                            ),
                                            const Divider(
                                              thickness:
                                              2,
                                              height:
                                              2,
                                              color:
                                              Color(0xffC8D1E5),
                                            ),
                                            const SizedBox(
                                              height:
                                              10,
                                            ),
                                            ListView.builder(
                                              itemCount: iconTextList10.length,
                                              shrinkWrap: true,
                                              physics:NeverScrollableScrollPhysics(),
                                              itemBuilder: (
                                                  BuildContext context,
                                                  int index) {
                                                return Container(
                                                  padding: const EdgeInsets .symmetric(horizontal: 10,vertical: 7),
                                                  margin: const EdgeInsets.only(
                                                      bottom: 10),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius
                                                        .circular(9),
                                                    color: const Color(
                                                        0xffF1F4FB),
                                                  ),
                                                  child:
                                                  Row(

                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .center,
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .start,
                                                    children: [
                                                      Container(
                                                        padding:EdgeInsets.all(10),
                                                        decoration:BoxDecoration(
                                                            shape:BoxShape.circle,
                                                            color:Color(0xffFFFFFF)
                                                        ),
                                                        child: Image(

                                                            image: AssetImage(
                                                                iconTextList10[index]
                                                                    .iconRequired
                                                                    .toString())),
                                                      ),
                                                      const SizedBox(
                                                        width: 15,
                                                      ),
                                                      Text(
                                                        iconTextList10[index]
                                                            .textRequired
                                                            .toString(),
                                                        style: const TextStyle(
                                                            fontSize: 15,
                                                            fontWeight: FontWeight
                                                                .w500,
                                                            color: Color(
                                                                0xff212121)),
                                                      ),
                                                 ],
                                                  ),
                                                );
                                              },
                                            )
                                            ,
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: 50,
                                              width: MediaQuery
                                                  .sizeOf(
                                                  context)
                                                  .width *
                                                  1,
                                              decoration:
                                              BoxDecoration(
                                                border:Border.all(color:Color(0xffFF9200)),
                                                borderRadius:
                                                BorderRadius
                                                    .circular(
                                                    10),
                                                color: const Color(
                                                    0xffFFFFFF),
                                              ),
                                              child:
                                              const Center(
                                                child: Text(
                                                  'Done',
                                                  style: TextStyle(
                                                      fontSize:
                                                      16,
                                                      color: Color(
                                                          0xffFF9200),
                                                      fontWeight:
                                                      FontWeight
                                                          .w700),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ):
                          _currentIndex == 29
                              ?
                          showModalBottomSheet(
                            isScrollControlled:
                            true,
                            context: context,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight:
                                    Radius.circular(
                                        15),
                                    topLeft: Radius
                                        .circular(
                                        15))),
                            builder:
                                (BuildContext
                            context) {
                              return Wrap(
                                clipBehavior:
                                Clip.antiAlias,
                                children: [
                                  Container(
                                    height: MediaQuery
                                        .sizeOf(context)
                                        .height *
                                        0.60,
                                    decoration:
                                    BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            20)),
                                    child:
                                    SingleChildScrollView(
                                      scrollDirection:
                                      Axis.vertical,
                                      physics:
                                      const ScrollPhysics(),
                                      child:
                                      Padding(
                                        padding: const EdgeInsets
                                            .all(10),
                                        child:
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.arrow_back,color:Color(0xff212121)),
                                                Spacer(),
                                                Text(
                                                  'Custom Friends',
                                                  style: TextStyle(fontSize: 18,
                                                      color: Color(0xff212121),
                                                      fontWeight: FontWeight
                                                          .w800),
                                                ),
                                                Spacer(),
                                              ],
                                            ),
                                            const SizedBox(
                                              height:
                                              10,
                                            ),
                                            const Divider(
                                              thickness:
                                              2,
                                              height:
                                              2,
                                              color:
                                              Color(0xffC8D1E5),
                                            ),
                                            const SizedBox(
                                              height:
                                              10,
                                            ),

                                            Container(
                                              padding: const EdgeInsets .symmetric(horizontal: 10,vertical: 7),
                                              margin: const EdgeInsets.only(
                                                  bottom: 10),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius
                                                    .circular(9),
                                                color: const Color(
                                                    0xffF1F4FB),
                                              ),
                                              child: Row(

                                                crossAxisAlignment: CrossAxisAlignment
                                                    .center,
                                                mainAxisAlignment: MainAxisAlignment
                                                    .start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Start Date',
                                                        style: const TextStyle(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight
                                                                .w500,
                                                            color: Color(
                                                                0xff485470)),
                                                      ),
                                                      SizedBox(height:3),
                                                      Text(
                                                        '19 Feb, 2023',
                                                        style: const TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight
                                                                .w600,
                                                            color: Color(
                                                                0xff212121)),
                                                      ),
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Icon(Icons.calendar_month,color:Color(0xff99A7C7))
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets .symmetric(horizontal: 10,vertical: 7),
                                              margin: const EdgeInsets.only(
                                                  bottom: 10),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius
                                                    .circular(9),
                                                color: const Color(
                                                    0xffF1F4FB),
                                              ),
                                              child: Row(

                                                crossAxisAlignment: CrossAxisAlignment
                                                    .center,
                                                mainAxisAlignment: MainAxisAlignment
                                                    .start,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Start Time',
                                                        style: const TextStyle(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight
                                                                .w500,
                                                            color: Color(
                                                                0xff485470)),
                                                      ),
                                                      SizedBox(height:3),
                                                      Text(
                                                        '06:35 AM',
                                                        style: const TextStyle(
                                                            fontSize: 16,
                                                            fontWeight: FontWeight
                                                                .w600,
                                                            color: Color(
                                                                0xff212121)),
                                                      ),
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Icon(Icons.watch_later,color:Color(0xff99A7C7))
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: 50,
                                              width: MediaQuery
                                                  .sizeOf(
                                                  context)
                                                  .width *
                                                  1,
                                              decoration:
                                              BoxDecoration(
                                                border:Border.all(color:Color(0xffFF9200)),
                                                borderRadius:
                                                BorderRadius
                                                    .circular(
                                                    10),
                                                color: const Color(
                                                    0xffFFFFFF),
                                              ),
                                              child:
                                              const Center(
                                                child: Text(
                                                  'Done',
                                                  style: TextStyle(
                                                      fontSize:
                                                      16,
                                                      color: Color(
                                                          0xffFF9200),
                                                      fontWeight:
                                                      FontWeight
                                                          .w700),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          )

                              : const SizedBox();
                        });
                      },
                      child: Container(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: const Color(0xffFF9200))),
                        child: Center(
                          child: ReusableText(
                            title: bottomSheetName[index].toString(),
                            size: 16,
                            weight: FontWeight.w600,
                            color: const Color(0xffFF9200),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
    );
  }
}
