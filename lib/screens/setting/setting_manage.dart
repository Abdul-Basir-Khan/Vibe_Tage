import 'package:flutter/material.dart';

import '../register/reusabletext.dart';


class SettingManage extends StatefulWidget {
  const SettingManage({super.key});

  @override
  State<SettingManage> createState() => _SettingManageState();
}

class _SettingManageState extends State<SettingManage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,leading:   IconButton(icon:const Icon(Icons.arrow_back_outlined,color: Color(0xff212121),),onPressed: (){
        Navigator.pop(context);
      },),
        title:const ReusableText(
          title: 'Manage Session',
          size: 16,
          weight: FontWeight.w700,
          color: Color(0xff363D4C),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            width: MediaQuery.sizeOf(context).width*0.15,height: MediaQuery.sizeOf(context).height*0.05,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),gradient: const LinearGradient(
                colors: [
                  Color(0xffFFC107),
                  Color(0xffFF9200)
                ]
            ),
            ),
            child: const Center(
              child:
              ReusableText(
                title: 'Save',
                size: 14,
                weight: FontWeight.w700,
                color: Color(0xffFFFFFF),
              ),
            ),
          )
        ],
      ),

      body: Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: [
          Divider(thickness: 2,height: 2,color: Color(0xffF1F4FB),),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                  title: '3 Device Connected',
                  size: 16,
                  weight: FontWeight.w700,
                  color: Color(0xff212121),
                ),
                SizedBox(height: 15,),
                Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
                SizedBox(height: 20,),
                
                Container(
                  height: 69,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffC8D1E5))
                  ),
                  child: ListTile(
                    leading:Image(image: AssetImage("Asset/images/setting/001-imac.png"),) ,
                    title:  ReusableText(
                      title: 'Macbook',
                      size: 17,
                      weight: FontWeight.w600,
                      color: Color(0xff212121),
                    ),
                    subtitle: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ReusableText(
                          title: 'Apple Safari',
                          size: 12,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),
                        SizedBox(width: 10,),
                        Container(height: 3,width: 3,decoration: BoxDecoration(
                          shape: BoxShape.circle,color: Color(0xffC8D1E5),
                        ),), SizedBox(width: 10,),
                        Icon(Icons.watch_later_outlined,size: 20,color: Color(0xff99A7C7),),
                        SizedBox(width: 10,),
                        ReusableText(
                          title: '4 hr ago',
                          size: 12,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),


                      ],
                    ),
                    trailing:  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                  
                      shape: BoxShape.circle,color: Color(0xffC8D1E5),
                    ),
                      child: Icon(Icons.close,color: Color(0xffFFFFFF),),

                    ),
                  ),

                ),
                SizedBox(height: 10,),
                Container(
                  height: 69,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffC8D1E5))
                  ),
                  child: ListTile(
                    leading:Image(image: AssetImage("Asset/images/setting/003-smartphone.png"),) ,
                    title:  ReusableText(
                      title: 'Android Phone',
                      size: 17,
                      weight: FontWeight.w600,
                      color: Color(0xff212121),
                    ),
                    subtitle: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ReusableText(
                          title: 'Mobile App',
                          size: 12,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),
                        SizedBox(width: 10,),
                        Container(height: 3,width: 3,decoration: BoxDecoration(
                          shape: BoxShape.circle,color: Color(0xffC8D1E5),
                        ),), SizedBox(width: 10,),
                        Icon(Icons.watch_later_outlined,size: 20,color: Color(0xff99A7C7),),
                        SizedBox(width: 10,),
                        ReusableText(
                          title: '4 hr ago',
                          size: 12,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),


                      ],
                    ),
                    trailing:  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(

                      shape: BoxShape.circle,color: Color(0xffC8D1E5),
                    ),
                      child: Icon(Icons.close,color: Color(0xffFFFFFF),),

                    ),
                  ),

                ),
                SizedBox(height: 10,),
                Container(
                  height: 69,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffC8D1E5))
                  ),
                  child: ListTile(
                    leading:Image(image: AssetImage("Asset/images/setting/002-tablet.png"),) ,
                    title:  ReusableText(
                      title: 'Ipad',
                      size: 17,
                      weight: FontWeight.w600,
                      color: Color(0xff212121),
                    ),
                    subtitle: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ReusableText(
                          title: 'Browser',
                          size: 12,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),
                        SizedBox(width: 10,),
                        Container(height: 3,width: 3,decoration: BoxDecoration(
                          shape: BoxShape.circle,color: Color(0xffC8D1E5),
                        ),), SizedBox(width: 10,),
                        Icon(Icons.watch_later_outlined,size: 20,color: Color(0xff99A7C7),),
                        SizedBox(width: 10,),
                        ReusableText(
                          title: '4 hr ago',
                          size: 12,
                          weight: FontWeight.w500,
                          color: Color(0xff485470),
                        ),


                      ],
                    ),
                    trailing:  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(

                      shape: BoxShape.circle,color: Color(0xffC8D1E5),
                    ),
                      child: Icon(Icons.close,color: Color(0xffFFFFFF),),

                    ),
                  ),
                ),





              ],
            ),
          ),
          Spacer(),

          Center(
            child: Container(
              height: 38,
              padding: EdgeInsets.all(10),
              width: MediaQuery.sizeOf(context).width*0.60,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffF1F4FB),
              ),
              child:  Center(
                child: ReusableText(
                  title: 'Logout from all devices',
                  size: 14,
                  weight: FontWeight.w500,
                  color: Color(0xff485470),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,)

        ],
      ),
    );
  }
}
