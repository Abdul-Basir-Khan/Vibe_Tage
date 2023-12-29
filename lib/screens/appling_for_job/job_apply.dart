import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ApplyingForJob extends StatefulWidget {
  const ApplyingForJob({super.key});

  @override
  State<ApplyingForJob> createState() => _ApplyingForJobState();
}

class _ApplyingForJobState extends State<ApplyingForJob> {
  final List<String> tabText = [
    'Job Type',
    'Companies',
    'Salary',
    'Gender',
  ];

  final List<ImageTextModel> imgAndText = [
    ImageTextModel(
        imgPath: 'Asset/images/job_apply/Rectangle 75.png',
        companyName: 'Microsoft'),
    ImageTextModel(
        imgPath: 'Asset/images/job_apply/Rectangle 75 (1).png',
        companyName: 'Samsung'),
    ImageTextModel(
        imgPath: 'Asset/images/job_apply/Rectangle 75 (2).png',
        companyName: 'Microsoft'),
    ImageTextModel(
        imgPath: 'Asset/images/job_apply/Rectangle 75 (3).png',
        companyName: 'Samsung'),
    ImageTextModel(
        imgPath: 'Asset/images/job_apply/Rectangle 75 (4).png',
        companyName: 'Microsoft'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffF1F4FB),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const ScrollPhysics(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      tabText.length,
                          (index) =>
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            height: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              color: const Color(0xffFFFFFF),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  tabText[index].toString(),
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff303C45),
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: Color(0xff99A7C7),
                                ),
                              ],
                            ),
                          ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: imgAndText.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            leading: Image(
                              image:
                              AssetImage(imgAndText[index].imgPath.toString()),
                            ),
                            title: Text(
                              imgAndText[index].companyName.toString(),
                              style: const TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w700),
                            ),
                            subtitle: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color(0xffC8D1E5),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'New York, USA',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Color(0xff485470),
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Looking for Product Designer',
                            style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          RichText(
                              text: const TextSpan(
                                  text:
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s...',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xff485470)),
                                  children: [
                                    TextSpan(
                                        text: ' Read more',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff212121),
                                        ))
                                  ])),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                child: Container(
                                  height: 70,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffF8F9FB),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Text('Gender',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff485470),
                                          )),
                                      Text('Male only',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff212121),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 70,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: const Color(0xffF8F9FB),
                                    borderRadius: BorderRadius.circular(6)),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Type',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff485470),
                                        )),
                                    Text('Part-Time',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff212121),
                                        )),
                                  ],
                                ),
                              ),
                              Container(
                                height: 70,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: const Color(0xffF8F9FB),
                                    borderRadius: BorderRadius.circular(6)),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Openings',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff485470),
                                        )),
                                    Text('02 Seats',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff212121),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Divider(
                            thickness: 2,
                            height: 2,
                            color: Color(0xffC8D1E5),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              RichText(
                                  text: const TextSpan(
                                      text: '\$1500',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 25,
                                          color: Color(0xff000000)),
                                      children: [
                                        TextSpan(
                                            text: '/month',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff485470),
                                            ))
                                      ])),
                              const Spacer(),
                              GestureDetector(

                                child: Container(
                                  height: 52,
                                  width: MediaQuery
                                      .sizeOf(context)
                                      .width * 0.43,
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(colors: [
                                      Color(0xffFFC107),
                                      Color(0xffFF8205),
                                    ]),
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xffF1F4FB),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Apply Now',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xffFFFFFF),
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}

class ImageTextModel {
  String? imgPath;
  String? companyName;

  ImageTextModel({this.imgPath, this.companyName});
}
