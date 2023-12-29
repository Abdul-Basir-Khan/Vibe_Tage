import 'package:flutter/material.dart';

import '../../forum_design/custom_textfield.dart';
import '../../register/reusabletext.dart';

class UpdateTab extends StatefulWidget {
  const UpdateTab({super.key});

  @override
  State<UpdateTab> createState() => _UpdateTabState();
}

class _UpdateTabState extends State<UpdateTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height*0.65,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
            children: [
Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    backgroundImage:
                    AssetImage("Asset/images/stream/my_task/Avatar (1).png"),
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Prof. Steve',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                color: Color(0xff485470),
                              ),
                            ),
                            TextSpan(
                              text: '  12:31',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color(0xff7D8CAC),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        height: 110,
                        padding: const EdgeInsets.only(top: 16,right: 14,bottom: 16,left: 14),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(0),topRight:Radius.circular(16),bottomLeft: Radius.circular(16),bottomRight: Radius.circular(16),),
                          color: Color(0xffF1F4FB),
                        ),
                        child: const Center(
                          child:

                          ReusableText(
                            title: 'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. Dui,\nfacilisis a mi rutrum integer.,',
                            size: 15,
                            weight: FontWeight.w500,
                            color: Color(0xff212121),
                          ),
                        ),

                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                    width: 203,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ReusableText(
                              title: '12:37',
                              size: 12,
                              weight: FontWeight.w500,
                              color: Color(0xff7D8CAC),
                            ),
                            Spacer(),
                            Icon(Icons.more_horiz,color: Color(0xff7D8CAC),),
                            SizedBox(width: 40,),

                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 58,width: 173,
                              decoration: BoxDecoration(
                                  border: Border.all(color: const Color(0xffDBDEE5)),
                                  borderRadius: const BorderRadius.only(topRight: Radius.circular(16),topLeft: Radius.circular(16),bottomRight: Radius.circular(0),bottomLeft: Radius.circular(16))
                              ),
                              child: const Center(
                                child:
                                ReusableText(
                                  title: 'Porttitor volutpat.',
                                  size: 14,
                                  weight: FontWeight.w400,
                                  color: Color(0xff212121),
                                ),
                              ),
                            ),
                            const SizedBox(width: 5,),
                            const Icon(Icons.done_all,color: Color(0xffB7BDCB),),
                          ],
                        )

                      ],
                    )
                ),
              ),
              const SizedBox(height: 10,),
              const CustomTextField(
                hintTextColor: Color(0xff99A7C7),
                hintText: 'Send message',
              ),

            ],
          ),
        ),
      ),
    );
  }
}
