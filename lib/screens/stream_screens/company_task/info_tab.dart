import 'package:flutter/material.dart';

import '../../register/reusabletext.dart';

class InfoTab extends StatefulWidget {
  const InfoTab({super.key});

  @override
  State<InfoTab> createState() => _InfoTabState();
}

class _InfoTabState extends State<InfoTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 54,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xffC8D1E5)),
              color: Colors.white,
            ),
            child:

            Row(children: [
              ReusableText(
                title: 'Due In',
                size: 15,
                weight: FontWeight.w600,
                color: Color(0xff7D8CAC),
              ),
              Spacer(),
              ReusableText(
                title: '11 August',
                size: 15,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
            ],)

          ),
          SizedBox(height: 10,),
          Container(
              height: 54,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xffC8D1E5)),
                color: Colors.white,
              ),
              child:

              Row(children: [
                ReusableText(
                  title: 'Time left',
                  size: 15,
                  weight: FontWeight.w600,
                  color: Color(0xff7D8CAC),
                ),
                Spacer(),
                ReusableText(
                  title: '3 days',
                  size: 15,
                  weight: FontWeight.w600,
                  color: Color(0xff485470),
                ),
              ],)

          ),
          SizedBox(height: 10,),
          Container(
              height: 54,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xffC8D1E5)),
                color: Colors.white,
              ),
              child:

              Row(children: [
                ReusableText(
                  title: 'Budget',
                  size: 15,
                  weight: FontWeight.w600,
                  color: Color(0xff7D8CAC),
                ),
                Spacer(),
                ReusableText(
                  title: '\$100:00',
                  size: 15,
                  weight: FontWeight.w600,
                  color: Color(0xff485470),
                ),
              ],)

          ),
          SizedBox(height: 10,),
          Container(
              height: 54,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xffC8D1E5)),
                color: Colors.white,
              ),
              child:

              Row(children: [
                ReusableText(
                  title: 'Priority',
                  size: 15,
                  weight: FontWeight.w600,
                  color: Color(0xff7D8CAC),
                ),
                Spacer(),
                Container(
                  height: 29,
                  width: 90,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: const Color(0xffAB7BF2),
                  ),
                  child: const Center(
                    child: ReusableText(
                      title: 'Medium',
                      size: 14,
                      weight: FontWeight.w600,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ],)

          ),
          SizedBox(height: 10,),
          Container(
              height: 54,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xffC8D1E5)),
                color: Colors.white,
              ),
              child:

              Row(children: [
                ReusableText(
                  title: 'Status',
                  size: 15,
                  weight: FontWeight.w600,
                  color: Color(0xff7D8CAC),
                ),
                Spacer(),
                Container(
                  height: 29,
                  width: 124,
                  padding: const EdgeInsets.only(right: 18,left: 18),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      border: Border.all(color: const Color(0xff2EADDE)),
                      color: Colors.white),
                  child: Center(
                    child: ReusableText(
                      title: 'Working on it',
                      size: 14,
                      weight: FontWeight.w600,
                      color: Color(0xff2EADDE),
                    ),
                  ),
                ),
              ],)

          ),
          SizedBox(height: 10,),


        ],
      ),
    );
  }
}
