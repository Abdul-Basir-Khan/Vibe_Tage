import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:vibe_tag/screens/register/reusabletext.dart';
import 'package:vibe_tag/screens/verification/request_submitted.dart';


class RequestLink extends StatefulWidget {
  const RequestLink({Key? key}) : super(key: key);

  @override
  State<RequestLink> createState() => _RequestLinkState();
}

class _RequestLinkState extends State<RequestLink> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(icon:(const Icon(Icons.arrow_back_outlined,color: Color(0xff000000),)), onPressed: () {
                  setState(() {

                    Navigator.pop(context);
                  });
                },),
                const Spacer(),
                const ReusableText(title: 'Request Verification',size: 16,weight: FontWeight.w700,color: Color(0xff222222),),
                const Spacer(),
              ],
            ),
            const SizedBox(height: 10,),
            LinearProgressBar(
              maxSteps: 3,
              minHeight: 3,
              progressType: LinearProgressBar
                  .progressTypeLinear, // Use Linear progress
              currentStep: 3,
              progressColor: const Color(0xffFF9200),
              backgroundColor: const Color(0xff99A7C7),
            ),
            const SizedBox(height: 15,),
            const ReusableText(title: 'Step 3',size: 13,weight: FontWeight.w600,color: Color(0xffFF9200),),
            const SizedBox(height: 15,),
            const ReusableText(title: 'Add Links',size: 18,weight: FontWeight.w700,color: Color(0xff212121),),
            const SizedBox(height: 10,),
            const ReusableText(title: 'Add article, social media account or other links that\nshow your account in public interest.',size: 12,weight: FontWeight.w400,color: Color(0xff7D8CAC),),
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
                  hintText: "Paste Link here",
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xffC8D1E5)
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Color(0xffC8D1E5)))),
            ),
            const SizedBox(height: 15,),
            Center(
              child: InkWell(
                onTap: (){
                },
                child: Container(
                  height: 50,width: MediaQuery.of(context).size.width*0.46,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffFF9200)),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: ReusableText(
                      title: "+ Add more Link",
                      color: Color(0xffFF9200),
                      weight: FontWeight.w800,
                      size: 17,
                    ),
                  ),
                ),
              ),
            ),
          const Spacer(),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 50,width: MediaQuery.of(context).size.width*0.46,
                    decoration: BoxDecoration(

                        color: const Color(0xffF1F4FB),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                      child: ReusableText(
                        title: "Back",
                        color: Color(0xff485470),
                        weight: FontWeight.w800,
                        size: 17,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const RequestSubmitted()));
                    });
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width*0.46,
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
              ],
            ),


          ],
        ),
      ),
    ));
  }
}
