import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/stream_screens/company_task/attendance_tab.dart';

import '../../register/reusabletext.dart';
import 'compant_task_tab.dart';

class StreamCompanyTask extends StatefulWidget {
  const StreamCompanyTask({super.key});

  @override
  State<StreamCompanyTask> createState() => _StreamCompanyTaskState();
}

class _StreamCompanyTaskState extends State<StreamCompanyTask> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffF1F4FB),


          appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8),
          height: 40,
          width: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffF1F4FB),
          ),
          child: const Icon(
            Icons.menu,
            color: Color(0xff7D8CAC),
          ),
        ),
        centerTitle: true,
        title: const Image(
          image: AssetImage("Asset/images/stream/Group 1000005016.png"),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              radius: 30,
              backgroundImage:
                  AssetImage("Asset/images/stream/Ellipse 940.png"),
            ),
          )
        ],
      ),
      body:

      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                ReusableText(
                  title: 'Vibetag Company',
                  size: 19,
                  weight: FontWeight.w700,
                  color: Color(0xff212121),
                ),
                SizedBox(
                  height: 14,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child:

                      Container(
                        height: 46,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(color: const Color(0xffC8D1E5)),
                            color: Colors.white),
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ReusableText(
                              title: 'My Task',
                              size: 14,
                              weight: FontWeight.w500,
                              color: Color(0xff212121),
                            ),
                            Spacer(),
                            Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Color(0xff99A7C7),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 46,
                      width: 110,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: const Color(0xff485470),
                      ),
                      child: const Center(
                        child: ReusableText(
                          title: 'Create',
                          size: 16,
                          weight: FontWeight.w600,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                children: [
                  SizedBox(
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
                          width: MediaQuery.sizeOf(context).width * 0.50,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ReusableText(
                                title: 'Task',
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
                          width: MediaQuery.sizeOf(context).width * 0.50,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ReusableText(
                                title: 'Attendance',
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
                    ],
                  ),
                  _currentIndex == 0 ? const Expanded(child: CompanyTaskTab()) :  const Expanded(child: AttendanceTab())
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
