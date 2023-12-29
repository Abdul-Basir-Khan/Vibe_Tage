
import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/forum_design/custom_textfield.dart';
import 'package:vibe_tag/screens/stream_screens/stream_chat.dart';

import '../../register/reusabletext.dart';

class CreateMetting extends StatefulWidget {
  const CreateMetting({super.key});

  @override
  State<CreateMetting> createState() => _CreateMettingState();
}

class _CreateMettingState extends State<CreateMetting> {
  bool _isSwitchOn1=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(
            Icons.arrow_back_outlined,
            color: Color(0xff212121),
          ),
          centerTitle: true,
          title:ReusableText(
            title: 'Create Meeting',
            size: 16,
            weight: FontWeight.w700,
            color: Color(0xff000000),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(height: 10,),
              ReusableText(
                title: 'Meeting Information',
                size: 18,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
              SizedBox(height: 10,),
              const ReusableText(
                title: 'Product Title',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff212121),
              ),
              const SizedBox(height: 15,),
              const CustomTextField(
            hintText: 'Design Catchup',
                hintTextColor: Color(0xff212121),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Select Date',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff7D8CAC),
              ),
              const SizedBox(height: 15,),
              const CustomTextField(
                hintText: 'Wednesday - 18th September 2023',
                hintTextColor: Color(0xff485470),
              sufixIcon: Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xff7D8CAC),),
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
                        title: 'Select Time',
                        size: 14,
                        weight: FontWeight.w600,
                        color: Color(0xff7D8CAC),
                      ),
                      const SizedBox(height: 15,),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width*0.44,
                        child: const CustomTextField(
                          hintText: '10:30 AM',
                          hintTextColor: Color(0xff485470),
                          sufixIcon: Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xff7D8CAC),),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      const ReusableText(
                        title: 'Duration',
                        size: 14,
                        weight: FontWeight.w600,
                        color: Color(0xff7D8CAC),
                      ),
                      const SizedBox(height: 15,),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width*0.44,
                        child: const CustomTextField(
                          hintText: '30 minute',
                          hintTextColor: Color(0xff485470),
                          sufixIcon: Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xff7D8CAC),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Invitation Time Zone',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff7D8CAC),
              ),
              const SizedBox(height: 15,),
              const CustomTextField(
                hintText: 'Wednesday - 18th September 2023',
                hintTextColor: Color(0xff485470),
                sufixIcon: Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xff7D8CAC),),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Select Date (Optional)',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff7D8CAC),
              ),
              const SizedBox(height: 15,),
          TextField(

            decoration: InputDecoration(
              prefixIcon: Container(
                height: 56,
                width: MediaQuery.sizeOf(context).width*0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffF1F4FB),
                ),
                child: Center(
                  child:
                  ReusableText(
                    title: 'meet.vstream.com/',
                    size: 14,
                    weight: FontWeight.w500,
                    color: Color(0xff7D8CAC),
                  ),
                )
              ),

              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: Color(0xffC8D1E5))),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: Color(0xffC8D1E5))),
              hintStyle:  TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff485470)),

              filled: true,
              fillColor: const Color(0xffFFFFFF),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                const BorderSide(color: Color(0xffC8D1E5)),
              ),
              hintText: '  henry-meeting',
            ),
          ),
              SizedBox(height: 20,),
              Divider(thickness: 3,height: 3,color:Color(0xffF8F9FB),),
              SizedBox(height: 20,),
              const ReusableText(
                title: 'Meeting Information',
                size: 18,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
              const SizedBox(height: 15,),
              const ReusableText(
                title: 'Search Date',
                size: 18,
                weight: FontWeight.w700,
                color: Color(0xff7D8CAC),
              ),
              const SizedBox(height: 15,),
              const CustomTextField(
                hintText: 'Search and Add',
                hintTextColor: Color(0xff485470),
                sufixIcon: Icon(Icons.search,color: Color(0xff7D8CAC),),
              ),
              const SizedBox(height: 15,),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("Asset/images/stream/Ellipse 885 (3).png"),

                ),
                title: ReusableText(
                  title: 'Mark Joiy',
                  size: 16,
                  weight: FontWeight.w600,
                  color: Color(0xff485470),
                ),
                trailing: Container(
                  height: 39,width: 87,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFFFFFF),
                    border: Border.all(color: Color(0xff7D8CAC)),
                  ),
                  child: Center(
                    child: ReusableText(
                      title: 'Invite',
                      size: 15,
                      weight: FontWeight.w700,
                      color: Color(0xff7D8CAC),
                    ),
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("Asset/images/stream/Ellipse 885 (1).png"),

                ),
                title: ReusableText(
                  title: 'Mark Joiy',
                  size: 16,
                  weight: FontWeight.w600,
                  color: Color(0xff485470),
                ),
                trailing: Container(
                  height: 39,width: 87,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffFFFFFF),
                    border: Border.all(color: Color(0xff7D8CAC)),
                  ),
                  child: Center(
                    child: ReusableText(
                      title: 'Invite',
                      size: 15,
                      weight: FontWeight.w700,
                      color: Color(0xff7D8CAC),
                    ),
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("Asset/images/stream/Ellipse 885 (2).png"),

                ),
                title: ReusableText(
                  title: 'Mark Joiy',
                  size: 16,
                  weight: FontWeight.w600,
                  color: Color(0xff485470),
                ),
                trailing: Container(
                  height: 39,width: 87,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff7D8CAC),

                  ),
                  child: Center(
                    child: ReusableText(
                      title: 'Invite',
                      size: 15,
                      weight: FontWeight.w700,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
              Divider(thickness: 2,height: 2,color:Color(0xffC8D1E5),),
              ReusableText(
                title: 'Invite',
                size: 15,
                weight: FontWeight.w700,
                color: Color(0xffFFFFFF),
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage("Asset/images/stream/Ellipse 885 (3).png"),
                            ),
                            Positioned(
                                right: 0,
                              child: Container(
                                height: 22,width: 22,decoration: BoxDecoration(
                                shape: BoxShape.circle,color: Color(0xff99A7C7),
                              ),
                                child: Icon(Icons.close,color: Colors.white,),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        ReusableText(
                          title: 'Mark J.',
                          size: 14,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),

                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage("Asset/images/stream/Ellipse 885 (4).png"),
                            ),
                            Positioned(
                              right: 0,
                              child: Container(
                                height: 22,width: 22,decoration: BoxDecoration(
                                shape: BoxShape.circle,color: Color(0xff99A7C7),
                              ),
                                child: Icon(Icons.close,color: Colors.white,),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        ReusableText(
                          title: 'Mark J.',
                          size: 14,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),

                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage("Asset/images/stream/Ellipse 885 (5).png"),
                            ),
                            Positioned(
                              right: 0,
                              child: Container(
                                height: 22,width: 22,decoration: BoxDecoration(
                                shape: BoxShape.circle,color: Color(0xff99A7C7),
                              ),
                                child: Icon(Icons.close,color: Colors.white,),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        ReusableText(
                          title: 'Mark J.',
                          size: 14,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),

                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage("Asset/images/stream/Ellipse 885 (6).png"),
                            ),
                            Positioned(
                              right: 0,
                              child: Container(
                                height: 22,width: 22,decoration: BoxDecoration(
                                shape: BoxShape.circle,color: Color(0xff99A7C7),
                              ),
                                child: Icon(Icons.close,color: Colors.white,),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        ReusableText(
                          title: 'Mark J.',
                          size: 14,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),

                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage("Asset/images/stream/Ellipse 885 (3).png"),
                            ),
                            Positioned(
                                right: 0,
                              child: Container(
                                height: 22,width: 22,decoration: BoxDecoration(
                                shape: BoxShape.circle,color: Color(0xff99A7C7),
                              ),
                                child: Icon(Icons.close,color: Colors.white,),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        ReusableText(
                          title: 'Mark J.',
                          size: 14,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Divider(thickness: 3,height: 3,color:Color(0xffF8F9FB),),
              SizedBox(height: 10,),
              buildSwitchOption('Meeting Information', _isSwitchOn1,
                      (newValue) => setState(() => _isSwitchOn1 = newValue)),

              const ReusableText(
                title: 'Add Password',
                size: 14,
                weight: FontWeight.w600,
                color: Color(0xff7D8CAC),
              ),
              const SizedBox(height: 15,),
              TextField(

                decoration: InputDecoration(
                  prefixIcon: Image(image: AssetImage("Asset/images/stream/Iconly Light Lock.png"),),

                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color(0xffC8D1E5))),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color(0xffC8D1E5))),
                  hintStyle:  TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffC8D1E5)),

                  filled: true,
                  fillColor: const Color(0xffFFFFFF),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                    const BorderSide(color: Color(0xffC8D1E5)),
                  ),
                  hintText:'password',
                ),
              ),

              const SizedBox(height: 10,),
              ReusableText(
                title: 'Suggest Password',
                size: 16,
                weight: FontWeight.w600,
                color: Color(0xffFF9200),
              ),
              const SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 54,width: 122,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF1F4FB)),
                    child: const Center(child:ReusableText(
                      title: 'Back',
                      size: 14,
                      weight: FontWeight.w600,
                      color: Color(0xff7D8CAC),
                    ),),
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                    child: InkWell(
                      onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=> StreamChatScreen()));
                      },
                      child:

                      Container(
                        height: 54,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [
                                  Color(0xffFFC107),
                                  Color(0xffFF8205),
                                ]
                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffF1F4FB)),
                        child: const Center(child:ReusableText(
                          title: 'Save & Continue',
                          size: 14,
                          weight: FontWeight.w600,
                          color: Color(0xffFFFFFF),
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSwitchOption(String title, bool value, Function(bool) onChanged) {
    return


      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ReusableText(
            title: title,
            size: 18,
            weight: FontWeight.w700,
            color: Color(0xff212121),
          ),
          Spacer(),
          Switch(
            value: value,
            onChanged: onChanged,
            activeTrackColor: const Color(0xFFFF9200), // Filled color
            activeColor: const Color(0xffFFFFFF), // Filled color
            inactiveTrackColor: const Color(0xFFC8D1E5), // Unfilled color
          ),
        ],
      );
  }




}


