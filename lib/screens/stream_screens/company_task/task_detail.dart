import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/stream_screens/company_task/files_tab.dart';
import 'package:vibe_tag/screens/stream_screens/company_task/info_tab.dart';
import 'package:vibe_tag/screens/stream_screens/company_task/update_tab.dart';

import '../../register/reusabletext.dart';

class TaskDetailScreen extends StatefulWidget {
  const TaskDetailScreen({super.key});

  @override
  State<TaskDetailScreen> createState() => _TaskDetailScreenState();
}

class _TaskDetailScreenState extends State<TaskDetailScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffF1F4FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:  IconButton(
         icon: Icon( Icons.arrow_back_outlined,
           color: Color(0xff212121),),
          onPressed: (){
           Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const ReusableText(
          title: 'Task Details',
          size: 16,
          weight: FontWeight.w600,
          color: Color(0xff212121),
        ),
        actions: [
          const Icon(
            Icons.more_vert,
            color: Color(0xff7D8CAC),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                ReusableText(
                  title: 'New Banner (1000 x 400)',
                  size: 19,
                  weight: FontWeight.w700,
                  color: Color(0xff212121),
                ),
                SizedBox(
                  height: 14,
                ),
                ReusableText(
                  title: 'From: Vibetag Company',
                  size: 12,
                  weight: FontWeight.w500,
                  color: Color(0xff212121),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
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
                          width: MediaQuery.sizeOf(context).width * 0.33,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ReusableText(
                                title: 'Info',
                                size: 15,
                                weight: FontWeight.w600,
                                color: _currentIndex == 0
                                    ? const Color(0xff485470)
                                    : const Color(0xff7D8CAC),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Divider(
                                thickness: 2,
                                height: 2,
                                color: _currentIndex == 0
                                    ? const Color(0xff485470)
                                    : const Color(0xffF1F4FB),
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
                          width: MediaQuery.sizeOf(context).width * 0.33,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ReusableText(
                                title: 'Files',
                                size: 15,
                                weight: FontWeight.w600,
                                color: _currentIndex == 1
                                    ? const Color(0xff485470)
                                    : const Color(0xff7D8CAC),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Divider(
                                thickness: 2,
                                height: 2,
                                color: _currentIndex == 1
                                    ? const Color(0xff485470)
                                    : const Color(0xffF1F4FB),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _currentIndex = 2;
                          });
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.34,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ReusableText(
                                title: 'Updates',
                                size: 15,
                                weight: FontWeight.w600,
                                color: _currentIndex == 2
                                    ? const Color(0xff485470)
                                    : const Color(0xff7D8CAC),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Divider(
                                thickness: 2,
                                height: 2,
                                color: _currentIndex == 2
                                    ? const Color(0xff485470)
                                    : const Color(0xffF1F4FB),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  _currentIndex == 0
                      ? const Expanded(child: InfoTab())
                      : _currentIndex == 1
                          ? const Expanded(child: FilesTab())
                          : _currentIndex == 2
                              ? const Expanded(child:UpdateTab())
                              : Container()
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
