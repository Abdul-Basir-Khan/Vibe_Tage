import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../register/reusabletext.dart';

class KidChannelL extends StatefulWidget {
  const KidChannelL({super.key});

  @override
  State<KidChannelL> createState() => _KidChannelLState();
}

class _KidChannelLState extends State<KidChannelL> {
  @override
  void initState() {
    super.initState();

    // Lock the screen orientation to landscape
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    super.dispose();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }



  @override
  Widget build(BuildContext context) {
    final isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined, color: Color(0xff212121)),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: SizedBox(
            height: 42,
            width: MediaQuery.of(context).size.width * 0.95,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Image(image: AssetImage("Asset/icons/chat_update/Search-4.png")),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Color(0xffC8D1E5)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Color(0xffC8D1E5)),
                ),
                hintStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff485470),
                ),
                filled: true,
                fillColor: const Color(0xffFFFFFF),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Color(0xffC8D1E5)),
                ),
              ),
            ),
          ),
          actions:  [
            Image(image: AssetImage("Asset/images/kids/Group 1000004285.png")),
          ],
        ),
        body:  ListView(
          shrinkWrap: true,
          children: [

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ReusableText(
                title: 'Channel Name',
                size: 16,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
            ),
            const SizedBox(height: 10,),

            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(4, (index) =>  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: 287,
                      child: Column(
                        children: [
                          Stack(
                              children:
                              [
                                const Image(
                                    width:287,height: 161,fit: BoxFit.cover,
                                    image: AssetImage("Asset/images/kids/Kid last .png")),


                                Positioned(
                                  bottom: 5,right: 0,
                                  child: Container(
                                    margin: const EdgeInsets.all(10),
                                    padding: const EdgeInsets.only(top: 2,right: 8,bottom: 2,left: 8),
                                    height: 18,width: 42,decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),color: const Color(0xf25000000),
                                  ),
                                    child: const Center
                                      (
                                      child:
                                      ReusableText(
                                        title: '12:03',
                                        size: 10,
                                        weight: FontWeight.w600,
                                        color: Color(0xffFFFFFF),
                                      ),


                                    ),
                                  ),
                                ),

                              ]
                          ),
                          const SizedBox(height: 10,),
                          const Row(
                            children: [
                              ReusableText(
                                title: 'Tom & Jerry | Tom & Jerry in Full\nScreen Classic...',
                                size: 16,
                                weight: FontWeight.w700,
                                color: Color(0xff212121),
                              ),
                              Spacer(),

                              Icon(Icons.more_vert,color: Color(0xffC8D1E5),size: 35,)
                            ],
                          ),
                        ],
                      ),
                    )),

                  ],
                )
            ),
            const SizedBox(height: 10,),
            const Divider(height: 3,thickness: 3,color: Color(0xffF8F9FB),),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ReusableText(
                title: 'Channel Name 2',
                size: 16,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
            ),
            const SizedBox(height: 10,),

            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(4, (index) =>  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: 287,
                      child: Column(
                        children: [
                          Stack(
                              children:
                              [
                                const Image(
                                    width:287,height: 161,fit: BoxFit.cover,
                                    image: AssetImage("Asset/images/kids/Kid last .png")),


                                Positioned(
                                  bottom: 5,right: 0,
                                  child: Container(
                                    margin: const EdgeInsets.all(10),
                                    padding: const EdgeInsets.only(top: 2,right: 8,bottom: 2,left: 8),
                                    height: 18,width: 42,decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),color: const Color(0xf25000000),
                                  ),
                                    child: const Center
                                      (
                                      child:
                                      ReusableText(
                                        title: '12:03',
                                        size: 10,
                                        weight: FontWeight.w600,
                                        color: Color(0xffFFFFFF),
                                      ),


                                    ),
                                  ),
                                ),

                              ]
                          ),
                          const SizedBox(height: 10,),
                          const Row(
                            children: [
                              ReusableText(
                                title: 'Tom & Jerry | Tom & Jerry in Full\nScreen Classic...',
                                size: 16,
                                weight: FontWeight.w700,
                                color: Color(0xff212121),
                              ),
                              Spacer(),

                              Icon(Icons.more_vert,color: Color(0xffC8D1E5),size: 35,)
                            ],
                          ),
                        ],
                      ),
                    )),

                  ],
                )
            ),
            const SizedBox(height: 10,),
            const Divider(height: 3,thickness: 3,color: Color(0xffF8F9FB),),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ReusableText(
                title: 'Channel Name 3',
                size: 16,
                weight: FontWeight.w700,
                color: Color(0xff212121),
              ),
            ),
            const SizedBox(height: 10,),

            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(4, (index) =>  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      width: 287,
                      child: Column(
                        children: [
                          Stack(
                              children:
                              [
                                const Image(
                                    width:287,height: 161,fit: BoxFit.cover,
                                    image: AssetImage("Asset/images/kids/Kid last .png")),


                                Positioned(
                                  bottom: 5,right: 0,
                                  child: Container(
                                    margin: const EdgeInsets.all(10),
                                    padding: const EdgeInsets.only(top: 2,right: 8,bottom: 2,left: 8),
                                    height: 18,width: 42,decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),color: const Color(0xf25000000),
                                  ),
                                    child: const Center
                                      (
                                      child:
                                      ReusableText(
                                        title: '12:03',
                                        size: 10,
                                        weight: FontWeight.w600,
                                        color: Color(0xffFFFFFF),
                                      ),


                                    ),
                                  ),
                                ),

                              ]
                          ),
                          const SizedBox(height: 10,),
                          const Row(
                            children: [
                              ReusableText(
                                title: 'Tom & Jerry | Tom & Jerry in Full\nScreen Classic...',
                                size: 16,
                                weight: FontWeight.w700,
                                color: Color(0xff212121),
                              ),
                              Spacer(),

                              Icon(Icons.more_vert,color: Color(0xffC8D1E5),size: 35,)
                            ],
                          ),
                        ],
                      ),
                    )),

                  ],
                )
            ),
            const SizedBox(height: 10,),
            const Divider(height: 3,thickness: 3,color: Color(0xffF8F9FB),),
            const SizedBox(height: 10,),



          ],
        ),
      ),
    );
  }
}
