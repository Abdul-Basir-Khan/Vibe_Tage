import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

import '../../Model/icon_and_text_model.dart';

class FundingTab extends StatefulWidget {
  const FundingTab({super.key});

  @override
  State<FundingTab> createState() => _FundingTabState();
}

class _FundingTabState extends State<FundingTab> {
  final List<String> fundingPic = [
    'Asset/images/funding/Rectangle 23852.png',
    'Asset/images/funding/Rectangle 23852.png',
    'Asset/images/funding/Rectangle 23852.png',
    'Asset/images/funding/Rectangle 23852.png',
    'Asset/images/funding/Rectangle 23852.png',
    'Asset/images/funding/Rectangle 23852.png',
    'Asset/images/funding/Rectangle 23852.png',
  ];







  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: fundingPic.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    leading: const InkWell(

                      child: Image(
                        image: AssetImage(
                            "Asset/images/job_apply/Rectangle 75.png"),
                      ),
                    ),
                    title: GestureDetector(

                      child: const Text(
                        "Microsoft",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff212121),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    subtitle: GestureDetector(

                      child: const Text(
                        '1 day ago',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff485470),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    trailing: IconButton(

                        icon:
                    const Icon(  Icons.more_horiz,
                      color: Color(0xff99A7C7),), onPressed: () {  },
                    ),
                  ),
                  Image(
                      fit: BoxFit.cover,
                      image: AssetImage(fundingPic[index].toString())),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "I am looking for some help",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff212121),
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        RichText(
                            text: const TextSpan(
                                text:
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting indus...',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xff485470)),
                                children: [
                              TextSpan(
                                  text: ' Read more',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff212121),
                                  ))
                            ])),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 2,
                          color: Color(0xffC8D1E5),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                            text: const TextSpan(
                                text: '\$3,000 ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xff212121)),
                                children: [
                              TextSpan(
                                  text: ' /\$2,000',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff7D8CAC),
                                  ))
                            ])),
                        const SizedBox(
                          height: 10,
                        ),
                        LinearProgressBar(
                          maxSteps: 9,
                          minHeight: 10,
                          progressType: LinearProgressBar.progressTypeLinear,
                          currentStep: 5,
                          progressColor: const Color(0xffFF9200),
                          backgroundColor: const Color(0xffF1F4FB),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(

                          child: Container(
                            height: 50,
                            width: MediaQuery.sizeOf(context).width,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: const Color(0xffFF9200)),
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xffFFFFFF),
                            ),
                            child: const Center(
                              child: Text(
                                'Donate',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xffFF9200),
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
