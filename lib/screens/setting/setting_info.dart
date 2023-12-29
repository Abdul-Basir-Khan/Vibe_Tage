import 'package:flutter/material.dart';

import '../register/reusabletext.dart';

class SettingInfoScreen extends StatefulWidget {
  const SettingInfoScreen({super.key});

  @override
  State<SettingInfoScreen> createState() => _SettingInfoScreenState();
}

class _SettingInfoScreenState extends State<SettingInfoScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Color(0xff212121),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const ReusableText(
          title: 'Notification',
          size: 16,
          weight: FontWeight.w700,
          color: Color(0xff363D4C),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            width: MediaQuery.sizeOf(context).width * 0.15,
            height: MediaQuery.sizeOf(context).height * 0.05,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
              gradient: const LinearGradient(
                  colors: [Color(0xffFFC107), Color(0xffFF9200)]),
            ),
            child: const Center(
              child: ReusableText(
                title: 'Save',
                size: 14,
                weight: FontWeight.w700,
                color: Color(0xffFFFFFF),
              ),
            ),
          )
        ],
      ),
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(
              thickness: 2,
              height: 2,
              color: Color(0xffF1F4FB),
            ),
            const SizedBox(
              height: 10,
            ),
            const ReusableText(
              title:
                  'Please choose which information you\nwould like to download',
              size: 18,
              weight: FontWeight.w700,
              color: Color(0xff485470),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                  child: Container(
                    height: 126,
                    width: MediaQuery.sizeOf(context).width * 0.46,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: _currentIndex == 0
                              ? const Color(0xffFF9200)
                              : const Color(0xffE6EAF3)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentIndex == 0
                                  ? const Color(0xf13FF9200)
                                  : const Color(0xffF1F4FB)),
                          child: Center(
                            child: Icon(
                              Icons.error,
                              color: _currentIndex == 0
                                  ? const Color(0xffFF9200)
                                  : const Color(0xff99A7C7),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ReusableText(
                          title: 'My Information',
                          size: 15,
                          weight: FontWeight.w600,
                          color: _currentIndex == 0
                              ? const Color(0xffFF9200)
                              : const Color(0xff485470),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  child: Container(
                    height: 126,
                    width: MediaQuery.sizeOf(context).width * 0.46,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: _currentIndex == 1
                              ? const Color(0xffFF9200)
                              : const Color(0xffE6EAF3)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentIndex == 1
                                  ? const Color(0xf13FF9200)
                                  : const Color(0xffF1F4FB)),
                          child: Center(
                            child: Image(
                              color: _currentIndex == 1
                                  ? const Color(0xffFF9200)
                                  : const Color(0xff99A7C7),
                              image: const AssetImage(
                                  "Asset/icons/settings/Iconly Bold Paper.png"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ReusableText(
                          title: 'My Posts',
                          size: 15,
                          weight: FontWeight.w600,
                          color: _currentIndex == 1
                              ? const Color(0xffFF9200)
                              : const Color(0xff485470),
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
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  child: Container(
                    height: 126,
                    width: MediaQuery.sizeOf(context).width * 0.46,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: _currentIndex == 2
                              ? const Color(0xffFF9200)
                              : const Color(0xffE6EAF3)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentIndex == 2
                                  ? const Color(0xf13FF9200)
                                  : const Color(0xffF1F4FB)),
                          child: Center(
                            child: Image(
                              color: _currentIndex == 2
                                  ? const Color(0xffFF9200)
                                  : const Color(0xff99A7C7),
                              image: const AssetImage(
                                  "Asset/icons/settings/Group 1000003283.png"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ReusableText(
                          title: 'My Pages',
                          size: 15,
                          weight: FontWeight.w600,
                          color: _currentIndex == 2
                              ? const Color(0xffFF9200)
                              : const Color(0xff485470),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      _currentIndex = 3;
                    });
                  },
                  child: Container(
                    height: 126,
                    width: MediaQuery.sizeOf(context).width * 0.46,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: _currentIndex == 3
                              ? const Color(0xffFF9200)
                              : const Color(0xffE6EAF3)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentIndex == 3
                                  ? const Color(0xf13FF9200)
                                  : const Color(0xffF1F4FB)),
                          child: Center(
                            child: Icon(
                              Icons.groups,
                              color: _currentIndex == 3
                                  ? const Color(0xffFF9200)
                                  : const Color(0xff99A7C7),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ReusableText(
                          title: 'My Groups',
                          size: 15,
                          weight: FontWeight.w600,
                          color: _currentIndex == 3
                              ? const Color(0xffFF9200)
                              : const Color(0xff485470),
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
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _currentIndex = 4;
                    });
                  },
                  child: Container(
                    height: 126,
                    width: MediaQuery.sizeOf(context).width * 0.46,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: _currentIndex == 4
                              ? const Color(0xffFF9200)
                              : const Color(0xffE6EAF3)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentIndex == 4
                                  ? const Color(0xf13FF9200)
                                  : const Color(0xffF1F4FB)),
                          child: Center(
                            child: Icon(
                              Icons.people,
                              color: _currentIndex == 4
                                  ? const Color(0xffFF9200)
                                  : const Color(0xff99A7C7),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ReusableText(
                          title: 'My Followings',
                          size: 15,
                          weight: FontWeight.w600,
                          color: _currentIndex == 4
                              ? const Color(0xffFF9200)
                              : const Color(0xff485470),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      _currentIndex = 5;
                    });
                  },
                  child: Container(
                    height: 126,
                    width: MediaQuery.sizeOf(context).width * 0.46,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: _currentIndex == 5
                              ? const Color(0xffFF9200)
                              : const Color(0xffE6EAF3)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentIndex == 5
                                  ? const Color(0xf13FF9200)
                                  : const Color(0xffF1F4FB)),
                          child: Center(
                            child: Image(
                              color: _currentIndex == 5
                                  ? const Color(0xffFF9200)
                                  : const Color(0xff99A7C7),
                              image: const AssetImage(
                                  "Asset/icons/settings/Add User.png"),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ReusableText(
                          title: 'My Followers',
                          size: 15,
                          weight: FontWeight.w600,
                          color: _currentIndex == 5
                              ? const Color(0xffFF9200)
                              : const Color(0xff485470),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 38,
                padding: const EdgeInsets.all(10),
                width: MediaQuery.sizeOf(context).width * 0.60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(colors: [
                      Color(0xffFFC107),
                      Color(0xffFF9200),
                    ])),
                child: const Center(
                  child: ReusableText(
                    title: 'Generate File',
                    size: 14,
                    weight: FontWeight.w500,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
