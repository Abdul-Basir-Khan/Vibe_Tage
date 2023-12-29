import 'package:flutter/material.dart';
import '../register/reusabletext.dart';

class CampaignTab extends StatefulWidget {
  const CampaignTab({Key? key}) : super(key: key);

  @override
  State<CampaignTab> createState() => _CampaignTabState();
}

class _CampaignTabState extends State<CampaignTab> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return ListView(physics: const ScrollPhysics(), children: [
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Color(0xff99A7C7)),
                  hintText: 'Search question or articles',
                  prefixIcon: const Image(
                    image: AssetImage("Asset/icons/chat_update/Search-4.png"),
                  ),
                  // Prefix icon
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                        color: Color(0xffC8D1E5)), // Color when not focused
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                        color: Color(0xffC8D1E5)), // Color when focused
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              width: 127,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: const Color(0xffC8D1E5))),
              child: const Row(
                children: [
                  ReusableText(
                    title: 'All',
                    size: 16,
                    weight: FontWeight.w500,
                    color: Color(0xff485470),
                  ),
                  Spacer(),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    size: 40,
                    color: Color(0xffC8D1E5),
                  )
                ],
              ),
            )
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      ReusableText(
                        title: 'Zelbury New Product',
                        size: 16,
                        weight: FontWeight.w600,
                        color: Color(0xff212121),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              title: 'Daily',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color(0xff7D8CAC),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ReusableText(
                              title: '\$20.00',
                              size: 14,
                              weight: FontWeight.w600,
                              color: Color(0xff212121),
                            ),
                          ],
                        ),
                        Container(
                            height: 45,
                            child: const VerticalDivider(
                              thickness: 2,
                              width: 2,
                              color: Color(0xffC8D1E5),
                            )),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              title: 'Clicks',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color(0xff7D8CAC),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ReusableText(
                              title: '247',
                              size: 14,
                              weight: FontWeight.w600,
                              color: Color(0xff212121),
                            ),
                          ],
                        ),
                        Container(
                            height: 45,
                            child: const VerticalDivider(
                              thickness: 2,
                              width: 2,
                              color: Color(0xffC8D1E5),
                            )),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              title: 'Views',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color(0xff7D8CAC),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ReusableText(
                              title: '56415',
                              size: 14,
                              weight: FontWeight.w600,
                              color: Color(0xff212121),
                            ),
                          ],
                        ),
                      ],
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
                    height: 5,
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
                        width: 71,
                        height: 24,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: const Color(0xff2998FF),
                        ),
                        child: const Center(
                          child: ReusableText(
                            title: 'Active',
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
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      ReusableText(
                        title: 'Zelbury New Product',
                        size: 16,
                        weight: FontWeight.w600,
                        color: Color(0xff212121),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              title: 'Daily',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color(0xff7D8CAC),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ReusableText(
                              title: '\$20.00',
                              size: 14,
                              weight: FontWeight.w600,
                              color: Color(0xff212121),
                            ),
                          ],
                        ),
                        Container(
                            height: 45,
                            child: const VerticalDivider(
                              thickness: 2,
                              width: 2,
                              color: Color(0xffC8D1E5),
                            )),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              title: 'Clicks',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color(0xff7D8CAC),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ReusableText(
                              title: '247',
                              size: 14,
                              weight: FontWeight.w600,
                              color: Color(0xff212121),
                            ),
                          ],
                        ),
                        Container(
                            height: 45,
                            child: const VerticalDivider(
                              thickness: 2,
                              width: 2,
                              color: Color(0xffC8D1E5),
                            )),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              title: 'Views',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color(0xff7D8CAC),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ReusableText(
                              title: '56415',
                              size: 14,
                              weight: FontWeight.w600,
                              color: Color(0xff212121),
                            ),
                          ],
                        ),
                      ],
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
                    height: 5,
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
                        width: 71,
                        height: 24,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: const Color(0xff2998FF),
                        ),
                        child: const Center(
                          child: ReusableText(
                            title: 'Active',
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
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      ReusableText(
                        title: 'Zelbury New Product',
                        size: 16,
                        weight: FontWeight.w600,
                        color: Color(0xff212121),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              title: 'Daily',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color(0xff7D8CAC),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ReusableText(
                              title: '\$20.00',
                              size: 14,
                              weight: FontWeight.w600,
                              color: Color(0xff212121),
                            ),
                          ],
                        ),
                        Container(
                            height: 45,
                            child: const VerticalDivider(
                              thickness: 2,
                              width: 2,
                              color: Color(0xffC8D1E5),
                            )),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              title: 'Clicks',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color(0xff7D8CAC),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ReusableText(
                              title: '247',
                              size: 14,
                              weight: FontWeight.w600,
                              color: Color(0xff212121),
                            ),
                          ],
                        ),
                        Container(
                            height: 45,
                            child: const VerticalDivider(
                              thickness: 2,
                              width: 2,
                              color: Color(0xffC8D1E5),
                            )),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              title: 'Views',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color(0xff7D8CAC),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ReusableText(
                              title: '56415',
                              size: 14,
                              weight: FontWeight.w600,
                              color: Color(0xff212121),
                            ),
                          ],
                        ),
                      ],
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
                    height: 5,
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
                        width: 71,
                        height: 24,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: const Color(0xff99A7C7),
                        ),
                        child: const Center(
                          child: ReusableText(
                            title: 'Disabled',
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
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      ReusableText(
                        title: 'Zelbury New Product',
                        size: 16,
                        weight: FontWeight.w600,
                        color: Color(0xff212121),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              title: 'Daily',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color(0xff7D8CAC),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ReusableText(
                              title: '\$20.00',
                              size: 14,
                              weight: FontWeight.w600,
                              color: Color(0xff212121),
                            ),
                          ],
                        ),
                        Container(
                            height: 45,
                            child: const VerticalDivider(
                              thickness: 2,
                              width: 2,
                              color: Color(0xffC8D1E5),
                            )),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              title: 'Clicks',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color(0xff7D8CAC),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ReusableText(
                              title: '247',
                              size: 14,
                              weight: FontWeight.w600,
                              color: Color(0xff212121),
                            ),
                          ],
                        ),
                        Container(
                            height: 45,
                            child: const VerticalDivider(
                              thickness: 2,
                              width: 2,
                              color: Color(0xffC8D1E5),
                            )),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              title: 'Views',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color(0xff7D8CAC),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ReusableText(
                              title: '56415',
                              size: 14,
                              weight: FontWeight.w600,
                              color: Color(0xff212121),
                            ),
                          ],
                        ),
                      ],
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
                    height: 5,
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
                        width: 71,
                        height: 24,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: const Color(0xff2998FF),
                        ),
                        child: const Center(
                          child: ReusableText(
                            title: 'Active',
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
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      ReusableText(
                        title: 'Zelbury New Product',
                        size: 16,
                        weight: FontWeight.w600,
                        color: Color(0xff212121),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              title: 'Daily',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color(0xff7D8CAC),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ReusableText(
                              title: '\$20.00',
                              size: 14,
                              weight: FontWeight.w600,
                              color: Color(0xff212121),
                            ),
                          ],
                        ),
                        Container(
                            height: 45,
                            child: const VerticalDivider(
                              thickness: 2,
                              width: 2,
                              color: Color(0xffC8D1E5),
                            )),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              title: 'Clicks',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color(0xff7D8CAC),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ReusableText(
                              title: '247',
                              size: 14,
                              weight: FontWeight.w600,
                              color: Color(0xff212121),
                            ),
                          ],
                        ),
                        Container(
                            height: 45,
                            child: const VerticalDivider(
                              thickness: 2,
                              width: 2,
                              color: Color(0xffC8D1E5),
                            )),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                              title: 'Views',
                              size: 12,
                              weight: FontWeight.w600,
                              color: Color(0xff7D8CAC),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ReusableText(
                              title: '56415',
                              size: 14,
                              weight: FontWeight.w600,
                              color: Color(0xff212121),
                            ),
                          ],
                        ),
                      ],
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
                    height: 5,
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
                        width: 71,
                        height: 24,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(26),
                          color: const Color(0xff2998FF),
                        ),
                        child: const Center(
                          child: ReusableText(
                            title: 'Active',
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
    ]);
  }
}
