import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:vibe_tag/screens/register/reusabletext.dart';
import 'package:vibe_tag/screens/verification/request_category.dart';


class RequestDocument extends StatefulWidget {
  const RequestDocument({Key? key}) : super(key: key);

  @override
  State<RequestDocument> createState() => _RequestDocumentState();
}

class _RequestDocumentState extends State<RequestDocument> {
  bool _isChecked = false;
  bool _isChecked1 = false;
  bool _isChecked2= false;
  bool _isChecked3= false;
  bool _isChecked4 = false;
  bool _isChecked5= false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child:ListView(
          children: [
            const Row(
              children: [
                Icon(Icons.arrow_back_outlined,color: Color(0xff000000),),
                Spacer(),
                ReusableText(title: 'Request Verification',size: 16,weight: FontWeight.w700,color: Color(0xff222222),),
                Spacer(),
              ],
            ),
            const SizedBox(height: 10,),
            LinearProgressBar(
              maxSteps: 3,
              minHeight: 3,
              progressType: LinearProgressBar
                  .progressTypeLinear, // Use Linear progress
              currentStep: 1,
              progressColor: const Color(0xffFF9200),
              backgroundColor: const Color(0xff99A7C7),
            ),
            const SizedBox(height: 15,),
            const ReusableText(title: 'Step 1',size: 13,weight: FontWeight.w600,color: Color(0xffFF9200),),
            const SizedBox(height: 15,),
            const ReusableText(title: 'Confirm Authenticity',size: 18,weight: FontWeight.w700,color: Color(0xff212121),),
            const SizedBox(height: 10,),
            const ReusableText(title: 'Add an official identification document for yourself\nor your business',size: 12,weight: FontWeight.w400,color: Color(0xff7D8CAC),),
            const SizedBox(height: 15,),
            TextField(
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                          color: Color(0xffC8D1E5)
                      )
                  ),
                  hintText: "Username",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xffC8D1E5)
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xffC8D1E5)))),
            ),
            const SizedBox(height: 10,),
            TextField(
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                          color: Color(0xffC8D1E5)
                      )
                  ),
                  hintText: "Full Name",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xffC8D1E5),
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xffC8D1E5),),),),
            ),
            const SizedBox(height: 10,),
            TextField(
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                suffixIcon: IconButton(icon:const Icon(Icons.keyboard_arrow_down,color: Color(0xff99A7C7),),
                onPressed: (){
                  setState(() {

                    showModalBottomSheet(
                      isScrollControlled:
                      true,
                      context: context,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight:
                              Radius.circular(
                                  15),
                              topLeft: Radius
                                  .circular(
                                  15))),
                      builder:
                          (BuildContext
                      context) {
                        return Wrap(
                          clipBehavior:
                          Clip.antiAlias,
                          children: [
                            Container(
                              height: MediaQuery
                                  .sizeOf(context)
                                  .height *
                                  0.60,
                              decoration:
                              BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      20)),
                              child:
                              SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10),
                                      child: Row(
                                        children: [
                                          const ReusableText(title: 'Cancel',size: 13,weight: FontWeight.w500,color: Color(0xff7D8CAC),),
                                          const Spacer(),
                                          const ReusableText(title: 'Document Type',size: 16,weight: FontWeight.w700,color: Color(0xff222222),),
                                          const Spacer(),
                                          Container(
                                            padding: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                color: const Color(0xffFF9200)
                                            ),
                                            child:  const Center(child: ReusableText(title: 'Save',size: 13,weight: FontWeight.w500,color: Color(0xffFFFFFF),)),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                    const Divider(thickness: 6,height: 6,color: Color(0xffF1F4FB),),
                                    const SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 56,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: const Color(0xffFFFFFF),
                                                border: Border.all(color: const Color(0xffE0E6F3))
                                            ),
                                            child: Row(
                                              children: [
                                                Checkbox(
                                                  value: _isChecked,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      _isChecked = value!;
                                                    });
                                                  },
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(4.0),
                                                    side: const BorderSide(color: Color(0xffC8D1E5)),
                                                  ),
                                                  fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                                    if (states.contains(MaterialState.selected)) {
                                                      return const Color(0xFFFF9200);
                                                    }
                                                    return const Color(0xffC8D1E5);
                                                  }),
                                                ),
                                                const ReusableText(title: 'Driver License',size: 16,weight: FontWeight.w600,color: Color(0xff212121),),

                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 10,),
                                          Container(
                                            height: 56,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: const Color(0xffFFFFFF),
                                                border: Border.all(color: const Color(0xffE0E6F3))
                                            ),
                                            child: Row(
                                              children: [
                                                Checkbox(
                                                  value: _isChecked1,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      _isChecked1 = value!;
                                                    });
                                                  },
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(4.0),
                                                    side: const BorderSide(color: Color(0xffC8D1E5)),
                                                  ),
                                                  fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                                    if (states.contains(MaterialState.selected)) {
                                                      return const Color(0xFFFF9200);
                                                    }
                                                    return const Color(0xffC8D1E5);
                                                  }),
                                                ),
                                                const ReusableText(title: 'Passport',size: 16,weight: FontWeight.w600,color: Color(0xff212121),),

                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 10,),
                                          Container(
                                            height: 56,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: const Color(0xffFFFFFF),
                                                border: Border.all(color: const Color(0xffE0E6F3))
                                            ),
                                            child: Row(
                                              children: [
                                                Checkbox(
                                                  value: _isChecked2,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      _isChecked2 = value!;
                                                    });
                                                  },
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(4.0),
                                                    side: const BorderSide(color: Color(0xffC8D1E5)),
                                                  ),
                                                  fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                                    if (states.contains(MaterialState.selected)) {
                                                      return const Color(0xFFFF9200);
                                                    }
                                                    return const Color(0xffC8D1E5);
                                                  }),
                                                ),
                                                const ReusableText(title: 'National ID Card',size: 16,weight: FontWeight.w600,color: Color(0xff212121),),

                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 10,),
                                          Container(
                                            height: 56,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: const Color(0xffFFFFFF),
                                                border: Border.all(color: const Color(0xffE0E6F3))
                                            ),
                                            child: Row(
                                              children: [
                                                Checkbox(
                                                  value: _isChecked3,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      _isChecked3 = value!;
                                                    });
                                                  },
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(4.0),
                                                    side: const BorderSide(color: Color(0xffC8D1E5)),
                                                  ),
                                                  fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                                    if (states.contains(MaterialState.selected)) {
                                                      return const Color(0xFFFF9200);
                                                    }
                                                    return const Color(0xffC8D1E5);
                                                  }),
                                                ),
                                                const ReusableText(title: 'Tax Filling',size: 16,weight: FontWeight.w600,color: Color(0xff212121),),

                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 10,),
                                          Container(
                                            height: 56,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: const Color(0xffFFFFFF),
                                                border: Border.all(color: const Color(0xffE0E6F3))
                                            ),
                                            child: Row(
                                              children: [
                                                Checkbox(
                                                  value: _isChecked4,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      _isChecked4 = value!;
                                                    });
                                                  },
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(4.0),
                                                    side: const BorderSide(color: Color(0xffC8D1E5)),
                                                  ),
                                                  fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                                    if (states.contains(MaterialState.selected)) {
                                                      return const Color(0xFFFF9200);
                                                    }
                                                    return const Color(0xffC8D1E5);
                                                  }),
                                                ),
                                                const ReusableText(title: 'Recent Utility Bill',size: 16,weight: FontWeight.w600,color: Color(0xff212121),),

                                              ],
                                            ),
                                          ),
                                          const SizedBox(height: 10,),
                                          Container(
                                            height: 56,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: const Color(0xffFFFFFF),
                                                border: Border.all(color: const Color(0xffE0E6F3))
                                            ),
                                            child: Row(
                                              children: [
                                                Checkbox(
                                                  value: _isChecked5,
                                                  onChanged: (bool? value) {
                                                    setState(() {
                                                      _isChecked5 = value!;
                                                    });
                                                  },
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(4.0),
                                                    side: const BorderSide(color: Color(0xffC8D1E5)),
                                                  ),
                                                  fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                                    if (states.contains(MaterialState.selected)) {
                                                      return const Color(0xFFFF9200);
                                                    }
                                                    return const Color(0xffC8D1E5);
                                                  }),
                                                ),
                                                const ReusableText(title: 'Article of Incorporation',size: 16,weight: FontWeight.w600,color: Color(0xff212121),),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );





                  });
                },
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                        color: Color(0xffC8D1E5)
                    )
                ),
                hintText: "Document Type",
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color(0xffC8D1E5),
                    )
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: const BorderSide(color: Color(0xffC8D1E5),),),),
            ),
            const SizedBox(height: 15,),
            DottedBorder(

              borderType: BorderType.RRect,
              padding: const EdgeInsets.all(0),
              radius: const Radius.circular(10),
              color: const Color(0xff7D8CAC),
              strokeWidth: 4,
              child: Container(
                clipBehavior: Clip.antiAlias,
                width: MediaQuery.of(context).size.width*1,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.cloud_upload,color: Color(0xffC8D1E5),size: 42,),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Upload File',size: 12,weight: FontWeight.w400,color: Color(0xff7D8CAC),),
                  ],
                ),
              ),
            ),
         const SizedBox(height: 220,),

            SizedBox(
              width: MediaQuery.of(context).size.width*1,
              child: InkWell(
                onTap: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const RequestCategory()));
                  });
                },
                child: Container(
                  height: 50,
                  width: 274,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Color(0xffFFC107),
                        Color(0xffFF8205),
                      ]),
                      color: const Color(0xffCCCCCC),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: ReusableText(
                      title: "Next",
                      color: Colors.white,
                      weight: FontWeight.w800,
                      size: 17,
                    ),
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
