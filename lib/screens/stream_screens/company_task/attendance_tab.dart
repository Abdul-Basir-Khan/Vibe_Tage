import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:vibe_tag/screens/stream_screens/company_task/attendace_list.dart';
import 'package:vibe_tag/screens/stream_screens/company_task/attendance_overview.dart';

import '../../register/reusabletext.dart';


class AttendanceTab extends StatefulWidget {
  const AttendanceTab({super.key});

  @override
  State<AttendanceTab> createState() => _AttendanceTabState();
}

class _AttendanceTabState extends State<AttendanceTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffC8D1E5)),
                borderRadius: BorderRadius.circular(10)
              ),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title:const ReusableText(
                  title: 'Todays Shift',
                  size: 15,
                  weight: FontWeight.w600,
                  color: Color(0xff7D8CAC),
                ) ,
                subtitle: const ReusableText(
                  title: '10PM - 07AM',
                  size: 20,
                  weight: FontWeight.w700,
                  color: Color(0xff485470),
                ) ,
                trailing:     Container(
                  height: 35,
                  width: 135,
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff485470),
                  ),
                  child: const Center(
                    child: ReusableText(
                      title: 'Submit Updates',
                      size: 14,
                      weight: FontWeight.w600,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),

            ),
            const SizedBox(height: 10,),
            Container(
              height: 79,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffC8D1E5)),
                  borderRadius: BorderRadius.circular(10)
              ),
              child:
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularPercentIndicator(
                        radius: 20.0,
                        lineWidth: 5.0,
                        percent:0.30,
                        linearGradient: const LinearGradient(
                          colors: [
                            Color(0xffF1F4FB),Color(0xff4383FF)

                          ]
                        ),
                        center: Container(
                          height: 26,width: 26,decoration: const BoxDecoration(
                          shape: BoxShape.circle,color: Color(0xff4383FF)
                        ),
                          child: const Icon(Icons.square,color: Colors.white,size: 15,),
                        ),
                        // progressColor: Color(0xff4383FF),
                      ),
                      const SizedBox(width: 15,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ReusableText(
                            title: 'Working Time',
                            size: 15,
                            weight: FontWeight.w600,
                            color: Color(0xff485470),
                          ) ,
                          ReusableText(
                            title: '2h of 8h',
                            size: 12,
                            weight: FontWeight.w600,
                            color: Color(0xff7D8CAC),
                          ) ,

                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 31,
                        width: 65,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff485470),
                        ),
                        child: const Center(
                          child: ReusableText(
                            title: 'Stop',
                            size: 14,
                            weight: FontWeight.w600,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),


                    ],
                  ),

            ),
            const SizedBox(height: 10,),
            Container(
              height: 79,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffC8D1E5)),
                  borderRadius: BorderRadius.circular(10)
              ),
              child:
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularPercentIndicator(
                    radius: 20.0,
                    lineWidth: 5.0,
                    percent:0.0,
                    linearGradient: const LinearGradient(
                        colors: [
                          Color(0xffF1F4FB),Color(0xff4383FF)

                        ]
                    ),
                    center: Container(
                      height: 26,width: 26,decoration: const BoxDecoration(
                        shape: BoxShape.circle,color: Color(0xffFF9200)
                    ),
                      child: const Icon(Icons.play_arrow,color: Colors.white,size: 25,),
                    ),
                    // progressColor: Color(0xff4383FF),
                  ),
                  const SizedBox(width: 15,),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ReusableText(
                        title: 'Break Time',
                        size: 15,
                        weight: FontWeight.w600,
                        color: Color(0xff485470),
                      ) ,
                      ReusableText(
                        title: '0 of 1h',
                        size: 12,
                        weight: FontWeight.w600,
                        color: Color(0xff7D8CAC),
                      ) ,

                    ],
                  ),
                  const Spacer(),



                ],
              ),

            ),
            const SizedBox(height: 10,),
            Container(
              height: 79,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffC8D1E5)),
                  borderRadius: BorderRadius.circular(10)
              ),
              child:
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularPercentIndicator(
                    radius: 20.0,
                    lineWidth: 5.0,
                    percent:0.0,
                    linearGradient: const LinearGradient(
                        colors: [
                          Color(0xffF1F4FB),Color(0xff4383FF)

                        ]
                    ),
                    center: Container(
                      height: 26,width: 26,decoration: const BoxDecoration(
                        shape: BoxShape.circle,color: Color(0xff8971FF)
                    ),
                      child: const Icon(Icons.play_arrow,color: Colors.white,size: 25,),
                    ),
                    // progressColor: Color(0xff4383FF),
                  ),
                  const SizedBox(width: 15,),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ReusableText(
                        title: 'Over Time',
                        size: 15,
                        weight: FontWeight.w600,
                        color: Color(0xff485470),
                      ) ,
                      ReusableText(
                        title: '0h',
                        size: 12,
                        weight: FontWeight.w600,
                        color: Color(0xff7D8CAC),
                      ) ,

                    ],
                  ),
                  const Spacer(),



                ],
              ),

            ),
            const SizedBox(height: 20,),
            const Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const AttendanceList()));

              },
              child: Container(
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffC8D1E5)),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: const Center(
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading:ReusableText(
                      title: 'My Attendance List',
                      size: 16,
                      weight: FontWeight.w600,
                      color: Color(0xff212121),
                    ) ,

                    trailing:

                   Icon(Icons.arrow_forward,color: Color(0xff7D8CAC),)
                  ),
                ),

              ),
            ),
            const SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const AttendanceOverView()));

              },
              child: Container(
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffC8D1E5)),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: const Center(
                  child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading:ReusableText(
                        title: 'Overview of Attendence',
                        size: 16,
                        weight: FontWeight.w600,
                        color: Color(0xff212121),
                      ) ,

                      trailing:

                      Icon(Icons.arrow_forward,color: Color(0xff7D8CAC),)
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
