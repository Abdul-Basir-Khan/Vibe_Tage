import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/blog/reusable_listtile.dart';
import 'package:vibe_tag/screens/chat_update/reusable_listtile.dart';
import 'package:vibe_tag/screens/forum_design/custom_textfield.dart';
import 'package:vibe_tag/screens/stream_screens/company_task/constant/custom_listile.dart';
import 'package:vibe_tag/screens/stream_screens/company_task/task_detail.dart';

import '../../register/reusabletext.dart';

class CompanyTaskTab extends StatefulWidget {
  const CompanyTaskTab({super.key});

  @override
  State<CompanyTaskTab> createState() => _CompanyTaskTabState();
}

class _CompanyTaskTabState extends State<CompanyTaskTab> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child:

            SizedBox(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Image(
                    image: AssetImage("Asset/icons/chat_update/Search-4.png"),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                      borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23),
                      borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                  hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff7D8CAC)),
                  suffixIcon: Image(
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
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)  =>TaskDetailScreen()));
            },
            child: CustomListTileTask(
                subtitleText: '11 August (3 days)',
                subtitleColor: Color(0xff7D8CAC),
                widgetRequired: Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff99A7C7)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),

                containerColor: Color(0xffF8F9FB), statusContainer:  Container(
              height: 13,width: 13,decoration: BoxDecoration(
              shape: BoxShape.circle,color: Color(0xffFF9200),
            ),
              child:  Center(child: ReusableText(title:"1",size: 8,weight: FontWeight.w600,color: Color(0xffFFFFFF),
              ),
              ),
            ),),
          ),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTileTask(
            subtitleText: '3 Days Late',
            subtitleColor: Color(0xffFF3535),
            widgetRequired: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff99A7C7)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            containerColor: Color(0xffFFFFFF),),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTileTask(
            subtitleText: '11 August (3 days)',
            subtitleColor: Color(0xff7D8CAC),
            widgetRequired: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff99A7C7)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            containerColor: Color(0xffF8F9FB),),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTileTask(
            subtitleText: '11 August (3 days)',
            subtitleColor: Color(0xff7D8CAC),
            widgetRequired: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff99A7C7)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            containerColor: Color(0xffFFFFFF),),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTileTask(
            subtitleText: '11 August (3 days)',
            subtitleColor: Color(0xff7D8CAC),
            widgetRequired: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff99A7C7)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            containerColor: Color(0xffF8F9FB),),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTileTask(
            subtitleText: '11 August (3 days)',
            subtitleColor: Color(0xff7D8CAC),
            widgetRequired: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff99A7C7)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
              containerColor: Color(0xffFFFFFF),),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTileTask(
            subtitleText: '11 August (3 days)',
            subtitleColor: Color(0xff7D8CAC),
            widgetRequired: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff99A7C7)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            containerColor: Color(0xffF8F9FB),),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          CustomListTileTask(
            subtitleText: '11 August (3 days)',
            subtitleColor: Color(0xff7D8CAC),
            widgetRequired: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff99A7C7)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            containerColor: Color(0xffFFFFFF),),

        ],
      ),
    );
  }
}
