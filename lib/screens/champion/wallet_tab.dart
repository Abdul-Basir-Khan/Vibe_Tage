import 'package:flutter/material.dart';
import '../register/reusabletext.dart';

class WalletTab extends StatefulWidget {
  const WalletTab({Key? key}) : super(key: key);

  @override
  State<WalletTab> createState() => _WalletTabState();
}

class _WalletTabState extends State<WalletTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  color: const Color(0xff263577),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ReusableText(
                      title: 'Current Balance',
                      size: 16,
                      weight: FontWeight.w400,
                      color: Color(0xffFFFFFF),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const ReusableText(
                      title: '\$4,874,5400',
                      size: 24,
                      weight: FontWeight.w600,
                      color: Color(0xffFFFFFF),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.43,
                          height: 46,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffFFFFFF),
                          ),
                          child: const Center(
                            child: ReusableText(
                              title: 'Send Money',
                              size: 15,
                              weight: FontWeight.w600,
                              color: Color(0xff263577),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 46,
                          width: MediaQuery.sizeOf(context).width * 0.43,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: const Color(0xffFFFFFF)),
                            color: Colors.transparent,
                          ),
                          child: const Center(
                            child: ReusableText(
                              title: 'Top Up',
                              size: 15,
                              weight: FontWeight.w600,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                      color: const Color(0xffF1F4FB),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          title: 'Total Spent',
                          size: 12,
                          weight: FontWeight.w400,
                          color: Color(0xff263577),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ReusableText(
                          title: '\$997,124',
                          size: 15,
                          weight: FontWeight.w600,
                          color: Color(0xff263577),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                      color: const Color(0xffF1F4FB),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReusableText(
                          title: 'Total Income',
                          size: 12,
                          weight: FontWeight.w400,
                          color: Color(0xff263577),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ReusableText(
                          title: '\$2,57,578,000',
                          size: 15,
                          weight: FontWeight.w600,
                          color: Color(0xff263577),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  color: const Color(0xffF1F4FB),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      title: 'Total Spent on Campaigns',
                      size: 14,
                      weight: FontWeight.w400,
                      color: Color(0xff263577),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ReusableText(
                      title: '\$24,774.00',
                      size: 15,
                      weight: FontWeight.w600,
                      color: Color(0xff263577),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  color: const Color(0xffF1F4FB),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                      title: 'Total Spent on Buying Products',
                      size: 14,
                      weight: FontWeight.w400,
                      color: Color(0xff263577),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    ReusableText(
                      title: '\$2,359.00',
                      size: 15,
                      weight: FontWeight.w600,
                      color: Color(0xff263577),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Color(0xffF1F4FB)),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.58,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          ReusableText(
                            title: '#544848',
                            size: 14,
                            weight: FontWeight.w500,
                            color: Color(0xff485470),
                          ),
                          Spacer(),
                          Icon(
                            Icons.more_vert,
                            color: Color(0xffC8D1E5),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            title: 'Product Sale',
                            size: 16,
                            weight: FontWeight.w600,
                            color: Color(0xff212121),
                          ),
                          Spacer(),
                          ReusableText(
                            title: '\$34.00',
                            size: 16,
                            weight: FontWeight.w600,
                            color: Color(0xff212121),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ReusableText(
                        title: ' luckas_r12',
                        size: 12,
                        weight: FontWeight.w500,
                        color: Color(0xff7D8CAC),
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
                      Row(
                        children: [
                          const ReusableText(
                            title: '23 May, 2023',
                            size: 12,
                            weight: FontWeight.w500,
                            color: Color(0xff7D8CAC),
                          ),
                          const Spacer(),
                          Container(
                            width: 87,
                            height: 24,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              color: const Color(0xff27CEA6),
                            ),
                            child: const Center(
                              child: ReusableText(
                                title: 'Received',
                                size: 12,
                                weight: FontWeight.w600,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          ReusableText(
                            title: '#544848',
                            size: 14,
                            weight: FontWeight.w500,
                            color: Color(0xff485470),
                          ),
                          Spacer(),
                          Icon(
                            Icons.more_vert,
                            color: Color(0xffC8D1E5),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            title: 'Product Sale',
                            size: 16,
                            weight: FontWeight.w600,
                            color: Color(0xff212121),
                          ),
                          Spacer(),
                          ReusableText(
                            title: '\$34.00',
                            size: 16,
                            weight: FontWeight.w600,
                            color: Color(0xff212121),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ReusableText(
                        title: ' luckas_r12',
                        size: 12,
                        weight: FontWeight.w500,
                        color: Color(0xff7D8CAC),
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
                      Row(
                        children: [
                          const ReusableText(
                            title: '23 May, 2023',
                            size: 12,
                            weight: FontWeight.w500,
                            color: Color(0xff7D8CAC),
                          ),
                          const Spacer(),
                          Container(
                            width: 87,
                            height: 24,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              color: const Color(0xffCE5347),
                            ),
                            child: const Center(
                              child: ReusableText(
                                title: 'Send',
                                size: 12,
                                weight: FontWeight.w600,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          ReusableText(
                            title: '#544848',
                            size: 14,
                            weight: FontWeight.w500,
                            color: Color(0xff485470),
                          ),
                          Spacer(),
                          Icon(
                            Icons.more_vert,
                            color: Color(0xffC8D1E5),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(
                            title: 'Product Sale',
                            size: 16,
                            weight: FontWeight.w600,
                            color: Color(0xff212121),
                          ),
                          Spacer(),
                          ReusableText(
                            title: '\$34.00',
                            size: 16,
                            weight: FontWeight.w600,
                            color: Color(0xff212121),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const ReusableText(
                        title: ' luckas_r12',
                        size: 12,
                        weight: FontWeight.w500,
                        color: Color(0xff7D8CAC),
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
                      Row(
                        children: [
                          const ReusableText(
                            title: '23 May, 2023',
                            size: 12,
                            weight: FontWeight.w500,
                            color: Color(0xff7D8CAC),
                          ),
                          const Spacer(),
                          Container(
                            width: 87,
                            height: 24,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              color: const Color(0xff27CEA6),
                            ),
                            child: const Center(
                              child: ReusableText(
                                title: 'Received',
                                size: 12,
                                weight: FontWeight.w600,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
