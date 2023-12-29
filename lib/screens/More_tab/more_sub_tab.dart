

import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/More_tab/all_bottomsheets/bottom_sheets_screen.dart';
import 'package:vibe_tag/screens/add_product/add_product.dart';
import 'package:vibe_tag/screens/add_product/add_product_basic.dart';
import 'package:vibe_tag/screens/appling_for_job/job_apply.dart';
import 'package:vibe_tag/screens/champion/champion_mobile.dart';
import 'package:vibe_tag/screens/champion_new/new_champion.dart';
import 'package:vibe_tag/screens/chat/chat_movement.dart';
import 'package:vibe_tag/screens/chat_update/bottom_navigation%20bar.dart';
import 'package:vibe_tag/screens/comming_soon_screen/comming_soon.dart';
import 'package:vibe_tag/screens/forum_design/form_general.dart';
import 'package:vibe_tag/screens/funding/funding_screen.dart';
import 'package:vibe_tag/screens/help/help_center.dart';
import 'package:vibe_tag/screens/history/history_screen.dart';
import 'package:vibe_tag/screens/kid_landscap/Kid_home_l.dart';
import 'package:vibe_tag/screens/movie/movie_screen.dart';
import 'package:vibe_tag/screens/nudge/nudge_scren.dart';
import 'package:vibe_tag/screens/order_email/order_cancel.dart';
import 'package:vibe_tag/screens/order_email/order_process.dart';
import 'package:vibe_tag/screens/setting/setting_screen.dart';
import 'package:vibe_tag/screens/stream_screens/Metting/stream_meetting_screen.dart';
import 'package:vibe_tag/screens/stream_screens/stream_chat.dart';
import 'package:vibe_tag/screens/stream_screens/stream_use_camera.dart';
import 'package:vibe_tag/screens/subscription_plan/subscription_plan.dart';

import '../forum_design/forum_browser.dart';
import '../game_screen/game_screen_one.dart';
import '../order_email/happy_birthday.dart';
import '../order_email/oder_deliver_email.dart';
import '../register/reusabletext.dart';
import '../setting/setting_main_page.dart';
import '../stream_screens/call_screen.dart';
import '../verification/request_document_type.dart';

class MoreSubTab extends StatefulWidget {
  const MoreSubTab({super.key});

  @override
  State<MoreSubTab> createState() => _MoreSubTabState();
}

class _MoreSubTabState extends State<MoreSubTab> {

  final List allTabsForMore=[
    'Applying For Job',
    'Champion',
    'Champion New',
    'Movement',
    'Chat Updated',
    'Coming Soon',
    'Funding',
    'Games',
    'Help',
    'History',
    'Kids',
    'Nudge',
    'Settings',
    'Subscription Plan',
    'All Bottom Sheets',
    'Add product',
    'Forum Screen',
    'Movie Screen',
    'Stream Chat Screen',
    'Stream Meeting Screen',
    'Allow Camera And Micro Phone',
    'Verification',
    'Happy Birthday',
    'Order delivered mail',
    'Order Cancel',
    'Order Process',
  ];



  final List pageToBeNavigated = [
    const ApplyingForJob(),
    const ChampionMobile(),
    const ChampionNew(),
    const ChatMovement(),
     MyHomePageChatUpdate(),
    const CommingSoon(),
    const FundingScreen(),
    const GameScreenOne(),
    const HelpCenter(),
    const HistoryScreen(),
    const KidsScreenL(),
    const NudgeScreen(),
    const SettingMainPage(),
    const SubcriptionPlan(),
   const BottomSheetsScreen(),
    const AddProductBasic(),
    const FormGeneral(),
    const MovieScreen(),
    const StreamChatScreen(),
    const MeetingScreen(),
    const StreamUseCamera(),
    const RequestDocument(),
    const HappyBirthday(),
    const OrderDeliveredEmail(),
    const OrderCancel(),
    const OrderProcess()

  ];


  navigateToPage(int index) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return pageToBeNavigated[index];
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
    return SafeArea(
      child: Scaffold(
        body: Padding(
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
                          allTabsForMore.length,
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
                              child: ReusableText(
                                title: allTabsForMore[index].toString(),
                                size: 15,
                                weight: FontWeight.w600,
                                color: _currentIndex == index
                                    ? const Color(0xff212121)
                                    : const Color(0xff485470),
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
        ),
      ),
    );
  }
}
