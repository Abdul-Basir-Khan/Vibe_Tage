import 'package:flutter/material.dart';

import '../../../register/reusabletext.dart';


class AttendanceListCustom extends StatelessWidget {

  final Color borderColor;
  final Color textColor;
  final String statusText;
  const AttendanceListCustom({super.key, required this.borderColor, required this.statusText, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xffC8D1E5)),
          color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Image(
                  color: Color(0xffC8D1E5),
                  image: AssetImage("Asset/icons/stream/Calendar-2.png")),
              const SizedBox(width: 10,),
              const ReusableText(
                title: '11 August, Fri',
                size: 15,
                weight: FontWeight.w600,
                color: Color(0xff212121),
              ),
              const Spacer(),
              Container(
                height: 27,width: 84,
                padding: const EdgeInsets.only(top: 4,right: 14,bottom: 4,left: 14),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: borderColor),
                    color: Colors.white),
                child: Center(
                  child: ReusableText(
                    title: statusText,
                    size: 14,
                    weight: FontWeight.w600,
                    color: textColor,
                  ),
                ),
              ),

            ],),
          const SizedBox(height: 10,),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,children: [
                ReusableText(
                  title: 'Start',
                  size: 12,
                  weight: FontWeight.w600,
                  color: Color(0xff7D8CAC),
                ),
                ReusableText(
                  title: '10 PM',
                  size: 14,
                  weight: FontWeight.w600,
                  color: Color(0xff485470),
                ),
              ],
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,children: [
                ReusableText(
                  title: 'End',
                  size: 12,
                  weight: FontWeight.w600,
                  color: Color(0xff7D8CAC),
                ),
                ReusableText(
                  title: '07 PM',
                  size: 14,
                  weight: FontWeight.w600,
                  color: Color(0xff485470),
                ),
              ],
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,children: [
                ReusableText(
                  title: 'Over',
                  size: 12,
                  weight: FontWeight.w600,
                  color: Color(0xff7D8CAC),
                ),
                ReusableText(
                  title: '1hr',
                  size: 14,
                  weight: FontWeight.w600,
                  color: Color(0xff485470),
                ),
              ],
              ),

            ],
          )

        ],
      ),
    );
  }
}
