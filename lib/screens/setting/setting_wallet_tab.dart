import 'package:flutter/material.dart';

import '../register/reusabletext.dart';


class SettingWalletTab extends StatefulWidget {
  const SettingWalletTab({super.key});

  @override
  State<SettingWalletTab> createState() => _SettingWalletTabState();
}

class _SettingWalletTabState extends State<SettingWalletTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20,),
        Container(
          width: MediaQuery.of(context).size.width*1,
          height: 173,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12,),
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
              const SizedBox(height: 15,),
              const ReusableText(
                title: '\$4,874,5400',
                size: 24,
                weight: FontWeight.w600,
                color: Color(0xffFFFFFF),
              ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 149,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffFFFFFF),
                    ),
                    child:  const Center(
                      child: ReusableText(
                        title: 'Withdraw',
                        size: 15,
                        weight: FontWeight.w600,
                        color: Color(0xff263577),
                      ),
                    ),

                  ),
                  const Spacer(),
                  Container(

                    width: 149,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xffFFFFFF)),
                      color: Colors.transparent,
                    ),
                    child:  const Center(
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
        const SizedBox(height: 15,),
        Container(
          width: MediaQuery.of(context).size.width*1,
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12,),
            color: const Color(0xffF1F4FB),
          ),
          child:
          
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                    title: 'Total Income',
                    size:12,
                    weight: FontWeight.w400,
                    color: Color(0xff263577),
                  ),
                  SizedBox(height: 10,),
                  ReusableText(
                    title: '\$2,57,578,000',
                    size:15,
                    weight: FontWeight.w600,
                    color: Color(0xff263577),
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios,color: Color(0xff99A7C7),)
            ],
          ),
        ),
        const SizedBox(height: 15,),
        Container(   width: MediaQuery.of(context).size.width*1,

          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12,),
            color: const Color(0xffF1F4FB),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                    title: 'Total Spent',
                    size:12,
                    weight: FontWeight.w400,
                    color: Color(0xff263577),
                  ),
                  SizedBox(height: 10,),
                  ReusableText(
                    title: '\$997,124',
                    size:15,
                    weight: FontWeight.w600,
                    color: Color(0xff263577),
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios,color: Color(0xff99A7C7),)
            ],
          ),
        ),
        const SizedBox(height: 15,),
        Container(
          width: MediaQuery.of(context).size.width*1,
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12,),
            color: const Color(0xffF1F4FB),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                    title: 'Total Spent on Buying Products',
                    size:14,
                    weight: FontWeight.w400,
                    color: Color(0xff263577),
                  ),
                  SizedBox(height: 8,),
                  ReusableText(
                    title: '\$2,359.00',
                    size:15,
                    weight: FontWeight.w600,
                    color: Color(0xff263577),
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios,color: Color(0xff99A7C7),)
            ],
          ),
        ),
        const SizedBox(height: 15,),
        Container(
          width: MediaQuery.of(context).size.width*1,
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12,),
            color: const Color(0xffF1F4FB),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                    title: 'Total Spent on Campaigns',
                    size:14,
                    weight: FontWeight.w400,
                    color: Color(0xff263577),
                  ),
                  SizedBox(height: 8,),
                  ReusableText(
                    title: '\$24,774.00',
                    size:15,
                    weight: FontWeight.w600,
                    color: Color(0xff263577),
                  ),
                ],
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios,color: Color(0xff99A7C7),)
            ],
          ),
        ),


      ],
    );
  }
}


