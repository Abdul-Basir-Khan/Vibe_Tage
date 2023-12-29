import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/register/tabs/email_tab.dart';
import 'package:vibe_tag/screens/register/tabs/phone_number_tab.dart';

import '../reusabletext.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final List<String> tabText = [
    'Email',
    'Phone Number',

  ];
  final List pages = [
  EmailTab(),
 PhoneNumberTab(),
  ];

  int _currentIndex = 0;




  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xffF1F4FB),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
      children: [
        SizedBox(height: 10,),
        Center(child: const ReusableText(title: 'Welcome Back !',weight: FontWeight.w700,size: 22,color: Color(0xff120D26),)),
        SizedBox(height: 10,),
        Center(child: const ReusableText(title: 'Discover a modern social networking and explore',weight: FontWeight.w500,size: 14,color: Color(0xff7D8CAC),)),
        SizedBox(height: 20,),
        Container(
          width: MediaQuery.sizeOf(context).width*1,
          height: MediaQuery.sizeOf(context).height,

          color: Color(0xffFFFFFF),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height: 10,),
               Column(
                 children: [
                   Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                     ...List.generate(
                         tabText.length,
                             (index) => GestureDetector(
                           onTap: () {
                             setState(() {
                               _currentIndex = index;
                             });
                           },
                           child: Container(
                             width: MediaQuery.sizeOf(context).width * 0.49,
                             child: Center(
                               child: Text(
                                 tabText[index].toString(),
                                 style: TextStyle(
                                     fontSize: 14,
                                     color: _currentIndex == index
                                         ? const Color(0xffFF9200)
                                         : const Color(0xff485470),
                                     fontWeight: FontWeight.w600),
                               ),
                             ),
                           ),
                         )),
                   ]),
                   const SizedBox(height: 10),
                   Container(
                     height: 2,
                     color: const Color(0xffC8D1E5),
                     child: Row(
                       children: List.generate(
                           tabText.length,
                               (index) => Container(
                             width: MediaQuery.sizeOf(context).width * 0.5,
                             color: _currentIndex == index
                                 ? const Color(0xffFF9200)
                                 : const Color(0xffC8D1E5),
                           )),
                     ),
                   )
                 ],
               ),
               const SizedBox(
                 height: 20,
               ),
               pages[_currentIndex],
             ],
           )

            ],
          ),
        )


      ],
    ),));
  }
}
