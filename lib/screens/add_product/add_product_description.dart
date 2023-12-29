import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'add_product_services.dart';

class AddProductDescription extends StatefulWidget {
  const AddProductDescription({super.key});

  @override
  State<AddProductDescription> createState() => _AddProductDescriptionState();
}

class _AddProductDescriptionState extends State<AddProductDescription> {
  bool _currentIndex=false;
  bool _currentIndex1=false;
  bool _currentIndex2=false;
  bool _currentIndex3=false;
  bool _currentIndex4=false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: const Icon(
              Icons.arrow_back,
              color: Color(0xff000000),
            ),
            centerTitle: true,
            title: const Text(
              "Add Product",
              style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w700),
            ),
          ),
          body: ListView(
        children: [
          Container(
            height: 67,
            color: const Color(0xff99A7C7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                ),
                CircularPercentIndicator(
                  radius: 20.0,
                  lineWidth: 5.0,
                  percent: 0.63,
                  center: new Text(
                    "3/4",
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  progressColor: const Color(0xffFFFFFF),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Description & FAQ",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(padding: const EdgeInsets.all(10),child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Description',
                style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff212121),
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10,),
              Row(
                
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  GestureDetector(
                    onTap:(){
                      setState(() {
                        _currentIndex=!_currentIndex;
                      });
                    },
                    child: Container(
                      height: 25,width: 25,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: _currentIndex?const Color(0xff7D8CAC):const Color(0xffF1F4FB),
                        borderRadius: BorderRadius.circular(2)
                      ),
                      child: Center(child: Icon(Icons.format_bold,color:_currentIndex?const Color(0xffF1F4FB): const Color(0xff7D8CAC),)),
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      setState(() {
                        _currentIndex1=!_currentIndex1;
                      });
                    },
                    child: Container(
                      height: 25,width: 25,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: _currentIndex1?const Color(0xff7D8CAC):const Color(0xffF1F4FB),
                          borderRadius: BorderRadius.circular(2)
                      ),
                      child: Center(child: Icon(Icons.format_italic,color:_currentIndex1?const Color(0xffF1F4FB): const Color(0xff7D8CAC),)),
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      setState(() {
                        _currentIndex2=!_currentIndex2;
                      });
                    },
                    child: Container(
                      height: 25,width: 25,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: _currentIndex2?const Color(0xff7D8CAC):const Color(0xffF1F4FB),
                          borderRadius: BorderRadius.circular(2)
                      ),
                      child: Center(child: Icon(Icons.format_underline,color:_currentIndex2?const Color(0xffF1F4FB): const Color(0xff7D8CAC),)),
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      setState(() {
                        _currentIndex3=!_currentIndex3;
                      });
                    },
                    child: Container(
                      height: 25,width: 25,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: _currentIndex3?const Color(0xff7D8CAC):const Color(0xffF1F4FB),
                          borderRadius: BorderRadius.circular(2)
                      ),
                      child: Center(child: Icon(Icons.menu,color:_currentIndex3?const Color(0xffF1F4FB): const Color(0xff7D8CAC),)),
                    ),
                  ),
                  GestureDetector(
                    onTap:(){
                      setState(() {
                        _currentIndex4=!_currentIndex4;
                      });
                    },
                    child: Container(
                      height: 25,width: 25,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: _currentIndex4?const Color(0xff7D8CAC):const Color(0xffF1F4FB),
                          borderRadius: BorderRadius.circular(2)
                      ),
                      child: Center(child: Icon(Icons.attach_file_rounded,color:_currentIndex4?const Color(0xffF1F4FB): const Color(0xff7D8CAC),)),
                    ),
                  ),
                ],),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffC8D1E5)),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff212121),
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10,),
                    const Text(
                      'The CBD Use',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff212121),
                          fontWeight: FontWeight.w700),
                    ),
                    const Text('It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xff212121),
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.center,children: [
                        Container(height: 4,width: 4,decoration: const BoxDecoration(
                          shape: BoxShape.circle,color: Color(0xff212121)
                        ),),
                      const SizedBox(width: 10,),
                      const Text(
                        'Lorem Ipsum is simply dummy text ',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff212121),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.center,children: [
                      Container(height: 4,width: 4,decoration: const BoxDecoration(
                          shape: BoxShape.circle,color: Color(0xff212121)
                      ),),
                      const SizedBox(width: 10,),
                      const Text(
                        'Lorem Ipsum is simply dummy text ',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff212121),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.center,children: [
                      Container(height: 4,width: 4,decoration: const BoxDecoration(
                          shape: BoxShape.circle,color: Color(0xff212121)
                      ),),
                      const SizedBox(width: 10,),
                      const Text(
                        'Lorem Ipsum is simply dummy text ',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff212121),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.center,children: [
                      Container(height: 4,width: 4,decoration: const BoxDecoration(
                          shape: BoxShape.circle,color: Color(0xff212121)
                      ),),
                      const SizedBox(width: 10,),
                      const Text(
                        'Lorem Ipsum is simply dummy text ',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff212121),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                    ),
                  ],
                ),
              ),


            ],
          ),),

          const SizedBox(
            height: 10,
          ),
          const Divider(
            height: 3,
            thickness: 3,
            color: Color(0xffF8F9FB),
          ),
         Padding(
           padding: const EdgeInsets.all(10),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const SizedBox(
                 height: 10,
               ),
               const Text("Product Information",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Color(0xff212121)),),
               const SizedBox(
                 height: 10,
               ),
               DottedBorder(
                 borderType: BorderType.RRect,
                 radius: const Radius.circular(10),
                 color: const Color(0xffC8D1E5),
                 dashPattern: [8, 4],
                 strokeWidth: 2,
                 child: Container(
                   clipBehavior: Clip.antiAlias,
                   decoration: BoxDecoration(
                       color: const Color(0xffF8F9FB),
                       borderRadius: BorderRadius.circular(10)
                   ),
                   height: 120,


                   child: const Column(
                     crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(Icons.cloud_upload,color: Color(0xff99A7C7),),
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("Drag and Drop or ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Color(0xff7D8CAC)),),
                           Text("browse",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Color(0xffFF9200)),),
                         ],
                       )

                     ],
                   ),
                 ),
               ),
               const SizedBox(
                 height: 10,
               ),
             ],
           ),
         ),
          const Divider(
            height: 3,
            thickness: 3,
            color: Color(0xffF8F9FB),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text("FAQ’s",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700,color: Color(0xff212121)),),
const Spacer(),
                    Container(
                      height: 28,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: const Color(0xffFF9200))
                      ),
                      child: const Center(child: Text("+Add FAQ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xffFF9200)),)),
                    )

                  ],
                ),
                const SizedBox(height: 10,),

                const Text(
                  "Question # 3",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff7D8CAC),
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 54,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Add a Question',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff99A7C7)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(

                  child: TextField(maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Add an Answer',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xff99A7C7)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  height: 2,
                  thickness: 2,
                  color: Color(0xffC8D1E5),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Question # 1",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff7D8CAC),
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 54,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Can we make order in your shop?',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Color(0xff212121)),
                      suffixIcon: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Color(0xff7D8CAC),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Question # 1",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff7D8CAC),
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 54,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'How can I get 20% Off?',
                      hintStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Color(0xff212121)),
                      suffixIcon: const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Color(0xff7D8CAC),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Color(0xffC8D1E5))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.sizeOf(context).width * 0.46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF1F4FB),
                      ),
                      child: const Center(
                        child: Text(
                          'Back',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff7D8CAC),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddProductServices()));
                      },
                      child
                          : Container(
                        height: 50,
                        width: MediaQuery.sizeOf(context).width * 0.46,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            Color(0xffFFC107),
                            Color(0xffFF8205),
                          ]),
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF1F4FB),
                        ),
                        child: const Center(
                          child: Text(
                            'Save & Continue',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffFFFFFF),
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          )


        ],
      ),
    ));
  }
}
