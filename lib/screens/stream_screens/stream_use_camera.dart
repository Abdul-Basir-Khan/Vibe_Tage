import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linear_progress_bar/ui/dots_indicator.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:vibe_tag/screens/stream_screens/call_screen.dart';
import '../register/reusabletext.dart';

class StreamUseCamera extends StatefulWidget {
  const StreamUseCamera({super.key});
  @override
  State<StreamUseCamera> createState() => _StreamUseCameraState();
}

class _StreamUseCameraState extends State<StreamUseCamera> {
  void initState() {
    super.initState();
    // Lock the screen orientation to landscape
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  }

  void dispose() {
    super.dispose();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }
   PageController controller = PageController();

  GlobalKey<PageContainerState> key = GlobalKey();
  bool isImage1 = false;

  void _changeImage() {
    setState(() {
      isImage1 = !isImage1;
    });
  }
  bool isImage2 = false;

  void _changeImage1() {
    setState(() {
      isImage2 = !isImage2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              leading: const CircleAvatar(
                radius: 30,
                backgroundImage:
                    AssetImage("Asset/images/stream/Rectangle 75.png"),
              ),
              title: const ReusableText(
                title: 'Microsoft',
                size: 15,
                weight: FontWeight.w700,
                color: Color(0xff000000),
              ),
              subtitle: const ReusableText(
                title: '1 day ago',
                size: 12,
                weight: FontWeight.w400,
                color: Color(0xff485470),
              ),
              trailing: InkWell(
                onTap: (){
                  setState(() {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      backgroundColor:const Color(0xffFFFFFF),
                      context: context,
                      builder: (BuildContext context) {
                        return StatefulBuilder(builder:
                            (BuildContext context,
                            void Function(void Function()) setState) {
                          return Container(
                            height: MediaQuery.of(context).size.height*0.70,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ListView(
                                children: [
                                  const Center(child: Image(image: AssetImage("Asset/images/stream/Group 1000005016.png"))),
                                  const SizedBox(height: 15,),
                                  const Center(
                                    child: ReusableText(
                                      title: 'Create Stronger Connection & Collaboration',
                                      size: 12,
                                      weight: FontWeight.w500,
                                      color: Color(0xff7D8CAC),
                                    ),
                                  ),
                                  const SizedBox(height: 20,),


                                  // Here
                                  Stack(
                                    children: [Image(
                                        width: MediaQuery.sizeOf(context).width*1,
                                        fit:BoxFit.cover,
                                        image: const AssetImage("Asset/images/stream/Group 1000005314.png")),

                                      Positioned(
                                        left: 15,bottom: 20,
                                        child: Container(
                                          width: MediaQuery.sizeOf(context).width*0.20,
                                          height: 30,
                                          color:Colors.transparent,
                                          child: PageIndicatorContainer(
                                            indicatorSelectorColor:const Color(0xff5A2250),
                                            indicatorColor:  const Color(0xffFFFFFF),
                                            key: key,
                                            child: PageView(
                                              children: <Widget>[
                                                const Text(''),
                                                const Text(''),
                                                const Text(''),
                                                const Text(''),
                                              ],
                                              controller: controller,
                                              reverse: true,
                                            ),

                                            align: IndicatorAlign.bottom,
                                            length: 4,
                                            indicatorSpace: 10.0,
                                          ),
                                        ),
                                      ),

                                    ]),



                                  const SizedBox(height: 25,),
                                  Container(
                                    height: 62,
                                    width: MediaQuery.sizeOf(context).width*1,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.transparent,
                                        border: Border.all(
                                          color: const Color(0xffC8D1E5),
                                        )),
                                    child: const Row(
                                      children: [
                                        Image(
                                          image: AssetImage(
                                              "Asset/images/stream/Subtract.png"),
                                        ),
                                        SizedBox(width: 15,),
                                        ReusableText(
                                          title: 'Log in with Vibetag Account',
                                          size: 16,
                                          weight: FontWeight.w700,
                                          color: Color(0xff212121),
                                        ),

                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 10,),
                                  Container(
                                    height: 62,
                                    width: MediaQuery.sizeOf(context).width*1,
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.transparent,
                                        border: Border.all(
                                          color: const Color(0xffC8D1E5),
                                        )),
                                    child: const Row(
                                      children: [
                                       Icon(Icons.person,color: Color(0xffC8D1E5),),
                                        SizedBox(width: 15,),
                                        ReusableText(
                                          title: 'Continue as Guest',
                                          size: 16,
                                          weight: FontWeight.w700,
                                          color: Color(0xff212121),
                                        ),

                                      ],
                                    ),
                                  ),









                                ],
                              ),
                            ),
                          );
                        });
                      },
                    );
                  });
                },
                child: Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      border: Border.all(
                        color: const Color(0xffC8D1E5),
                      )),
                  child: const Center(
                    child: Icon(Icons.settings, color: Color(0xffC8D1E5)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 1,
              height: 315,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffF1F4FB),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      isImage1?
                      const Image(
                          image: AssetImage(
                              "Asset/icons/stream/Group 1000002821.png")):Container(),
                      const SizedBox(width: 20,),
                      isImage2?
                      const Image(
                          image: AssetImage(
                              "Asset/icons/stream/Group 1000002774.png")):Container(),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ReusableText(
                    title:
                        'Allow Vibetag to use your camera so\nothers can see you',
                    size: 16,
                    alignment: TextAlign.center,
                    weight: FontWeight.w700,
                    color: Color(0xff485470),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      isImage1?
                      InkWell(
                        onTap: (){
                          setState(() {
                            isImage1=!isImage1;
                          });
                        },
                        child: Container(
                          height: 48,
                          width: MediaQuery.sizeOf(context).width*0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: ReusableText(
                              title: 'Use Audio',
                              size: 16,
                              alignment: TextAlign.center,
                              weight: FontWeight.w700,
                              color: Color(0xff485470),
                            ),
                          ),
                        ),
                      ):Container(),
                      const SizedBox(width: 20,),
                      isImage2?
                      InkWell(
                        onTap: (){
                          setState(() {
                            isImage2=!isImage2;
                          });
                        },
                        child: Container(
                          height: 48,
                          width: MediaQuery.sizeOf(context).width*0.35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: const Center(
                            child: ReusableText(
                              title: 'Use Camera',
                              size: 16,
                              alignment: TextAlign.center,
                              weight: FontWeight.w700,
                              color: Color(0xff485470),
                            ),
                          ),
                        ),
                      ):Container(),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: _changeImage,
                    child: Container(
                      height: 56,
                      width: 55,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          border: Border.all(
                            color: const Color(0xffC8D1E5),
                          )),
                      child:  isImage1?
                      const Stack(children: [
                        Image(
                          image: AssetImage(
                              "Asset/icons/stream/Iconly Bold Voice.png"),
                          color: Color((0xffC8D1E5)),
                        ),
                        Image(
                          image: AssetImage(
                              "Asset/icons/stream/Group 1000002753.png"),
                          color: Color((0xffC22824)),
                        ),
                      ])
                      : const Image(
                        image:AssetImage("Asset/icons/stream/Iconly Bold Voice.png"),

                        color: Color(0xffC8D1E5),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _changeImage1,
                    child:

                    Container(
                      height: 56,
                      width: 55,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          border: Border.all(
                            color: const Color(0xffC8D1E5),
                          )),
                      child:  isImage2?
                      const Stack(children: [
                        Image(
                          image: AssetImage(
                              "Asset/icons/stream/Iconly Bold Video.png"),
                          color: Color((0xffC8D1E5)),
                        ),
                        Image(
                          image: AssetImage(
                              "Asset/icons/stream/Group 1000002753.png"),
                          color: Color((0xffC22824)),
                        ),
                      ])
                          : const Image(
                        image:AssetImage("Asset/icons/stream/Iconly Bold Video.png"),

                        color: Color(0xffC8D1E5),
                      ),
                    ),
                  ),
                  Container(
                    height: 56,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        border: Border.all(
                          color: const Color(0xffC8D1E5),
                        )),
                    child: const Center(
                      child: Image(
                        image: AssetImage("Asset/icons/stream/Volume Down.png"),
                        color: Color((0xffC8D1E5)),
                      ),
                    ),
                  ),
                  Container(
                    height: 56,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        border: Border.all(
                          color: const Color(0xffC8D1E5),
                        )),
                    child: const Center(
                      child: Image(
                        image: AssetImage("Asset/icons/stream/Group (1).png"),
                        color: Color((0xffC8D1E5)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>const StreamCallScreen()));
              },
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1,
                height: 56,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: const LinearGradient(colors: [
                      Color(0xffFFC107),
                      Color(0xffFF8205),
                    ])),
                child: const Center(
                  child: ReusableText(
                    title: 'Start Call',
                    size: 17,
                    weight: FontWeight.w700,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
