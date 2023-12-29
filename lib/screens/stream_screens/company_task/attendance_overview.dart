import 'package:flutter/material.dart';

import '../../forum_design/custom_textfield.dart';
import '../../register/reusabletext.dart';

class AttendanceOverView extends StatelessWidget {
  const AttendanceOverView({super.key});

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
        actions: [
          const Icon(
            Icons.more_vert,
            color: Color(0xff7D8CAC),
          )
        ],
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView (children: [
Container(

  padding: const EdgeInsets.all(10),
  decoration: BoxDecoration(
   color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    border: Border.all(color:const Color(0xffC8D1E5),)
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,children: [
    const ReusableText(
      title: 'Overview',
      size: 18,
      weight: FontWeight.w700,
      color: Color(0xff212121),
    ),
    const SizedBox(height: 15,),
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              const ReusableText(
                title: 'From',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff7D8CAC),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                height: 50,
                width: MediaQuery.sizeOf(context).width*0.42,
                child:
                TextField(

                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5))),
                    hintStyle:  const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff485470)),
                    suffixIcon: const Image(
                      color: Color(0xffC8D1E5),
                      image: AssetImage("Asset/icons/stream/Calendar-2.png"),),
                    filled: true,
                    fillColor: const Color(0xffFFFFFF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      const BorderSide(color: Color(0xffC8D1E5)),
                    ),
                    hintText: 'Aug, 2023',
                  ),
                ),
              ),
            ],
          ),
         const Spacer(),
          Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              const ReusableText(
                title: 'To',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff7D8CAC),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                height: 50,
                width: MediaQuery.sizeOf(context).width*0.42,
                child:
                TextField(

                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5))),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            color: Color(0xffC8D1E5))),
                    hintStyle:  const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff485470)),
                    suffixIcon: const Image(
                      color: Color(0xffC8D1E5),
                      image: AssetImage("Asset/icons/stream/Calendar-2.png"),),
                    filled: true,
                    fillColor: const Color(0xffFFFFFF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      const BorderSide(color: Color(0xffC8D1E5)),
                    ),
                    hintText: 'Sep, 2023',
                  ),
                ),
              ),
            ],
          ),
      ],
    ),
    const SizedBox(height: 15,),
    const Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
    const SizedBox(height: 15,),
    Container(
      height: 71,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
            color: const Color(0xffF1F4FB),
            borderRadius: BorderRadius.circular(10),

      ),
      child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,children: [
          ReusableText(
            title: 'Total Working Days',
            size: 14,
            weight: FontWeight.w600,
            color: Color(0xff7D8CAC),
          ),
      SizedBox(height: 10,),
      Row(
            children: [
              ReusableText(
                title: '25 Days',
                size: 16,
                weight: FontWeight.w700,
                color: Color(0xff485470),
              ),
              Spacer(),
              ReusableText(
                title: '93%',
                size: 14,
                weight: FontWeight.w700,
                color: Color(0xff485470),
              ),
            ],
          ),





      ],
      ),
    ),
    const SizedBox(height: 15,),
    Container(
      height: 71,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color(0xffF1F4FB),
          borderRadius: BorderRadius.circular(10),

      ),
      child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,children: [
          ReusableText(
            title: 'Total Absent',
            size: 14,
            weight: FontWeight.w600,
            color: Color(0xff7D8CAC),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              ReusableText(
                title: '03 Days',
                size: 16,
                weight: FontWeight.w700,
                color: Color(0xff485470),
              ),
              Spacer(),
              ReusableText(
                title: '07%',
                size: 14,
                weight: FontWeight.w700,
                color: Color(0xff485470),
              ),
            ],
          ),





      ],
      ),
    ),
    const SizedBox(height: 15,),
    Container(
      height: 71,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color(0xffF1F4FB),
          borderRadius: BorderRadius.circular(10),

      ),
      child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,children: [
          ReusableText(
            title: 'Total Over Time',
            size: 14,
            weight: FontWeight.w600,
            color: Color(0xff7D8CAC),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              ReusableText(
                title: '14 hrs',
                size: 16,
                weight: FontWeight.w700,
                color: Color(0xff485470),
              ),
              Spacer(),
              ReusableText(
                title: '93%',
                size: 14,
                weight: FontWeight.w700,
                color: Color(0xff485470),
              ),
            ],
          ),





      ],
      ),
    ),
    const SizedBox(height: 10,),


  ],
  ),
)




          ],),
        ),
      ),
    );
  }
}
