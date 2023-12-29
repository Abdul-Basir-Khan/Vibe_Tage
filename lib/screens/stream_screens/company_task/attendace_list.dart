import 'package:flutter/material.dart';

import '../../register/reusabletext.dart';
import 'constant/attendance_list_custom.dart';

class AttendanceList extends StatelessWidget {
  const AttendanceList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1F4FB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:  IconButton(
          icon: const Icon( Icons.arrow_back_outlined,
            color: Color(0xff212121),),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const ReusableText(
          title: 'Task Details',
          size: 16,
          weight: FontWeight.w600,
          color: Color(0xff212121),
        ),
        actions: const [
          Icon(
            Icons.more_vert,
            color: Color(0xff7D8CAC),
          )
        ],
      ),

    body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView (children:  [
            SizedBox(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Image(
                    image: AssetImage("Asset/icons/chat_update/Search-4.png"),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                      borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                      borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                  hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff7D8CAC)),
                  suffixIcon: const Image(
                    image: AssetImage("Asset/icons/stream/Filter 2-5.png"),
                  ),
                  filled: true,
                  fillColor: const Color(0xffFFFFFF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(23),
                    borderSide: const BorderSide(color: Color(0xffC8D1E5)),
                  ),
                  hintText: 'Search',
                ),
              ),
            ),
            const SizedBox(height: 10,),
            const AttendanceListCustom(statusText: 'Absent',borderColor: Color(0xffFF3535), textColor: Color(0xffFF3535),),
            const SizedBox(height: 10,),
            const AttendanceListCustom(statusText: 'Present',borderColor: Color(0xff3AB500), textColor: Color(0xff3AB500),),
            const SizedBox(height: 10,),
            const AttendanceListCustom(statusText: 'Present',borderColor: Color(0xff3AB500), textColor: Color(0xff3AB500),),
            const SizedBox(height: 10,),
            const AttendanceListCustom(statusText: 'Present',borderColor: Color(0xff3AB500), textColor: Color(0xff3AB500),),
            const SizedBox(height: 10,),
            const AttendanceListCustom(statusText: 'Holiday',borderColor: Color(0xff7D8CAC), textColor: Color(0xff7D8CAC),),
            const SizedBox(height: 10,),
            const AttendanceListCustom(statusText: 'Present',borderColor: Color(0xff3AB500), textColor: Color(0xff3AB500),),
            const SizedBox(height: 10,),
            const AttendanceListCustom(statusText: 'Present',borderColor: Color(0xff3AB500), textColor: Color(0xff3AB500),),
            const SizedBox(height: 10,),
            const AttendanceListCustom(statusText: 'Present',borderColor: Color(0xff3AB500), textColor: Color(0xff3AB500),),
            const SizedBox(height: 10,),






          ],),
        ),
      ),
    );
  }
}
