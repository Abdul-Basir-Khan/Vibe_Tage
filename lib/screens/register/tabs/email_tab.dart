import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/register/name.dart';

import '../../../bottom_bar/bottom_app_bar/bottom_navigation_app_bar.dart';
import '../reusabletext.dart';


class EmailTab extends StatefulWidget {
  const EmailTab({super.key});

  @override
  State<EmailTab> createState() => _EmailTabState();
}

class _EmailTabState extends State<EmailTab> {
  bool _switchValue=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
prefixIcon: const Icon(Icons.mail_outline_rounded,color: Color(0xff7D8CAC),),
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
                  color: Color(0xff99A7C7)),
              filled: true,
              fillColor: const Color(0xffFFFFFF),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                const BorderSide(color: Color(0xffC8D1E5)),
              ),
              hintText:  'Enter your email',
            ),
          ),
          const SizedBox(height: 10,),
          TextField(
            decoration: InputDecoration(
prefixIcon: const Icon(Icons.lock_rounded,color: Color(0xff7D8CAC),),
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
                  color: Color(0xff99A7C7)),
              filled: true,
              fillColor: const Color(0xffFFFFFF),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                const BorderSide(color: Color(0xffC8D1E5)),
              ),
              hintText:  'Enter your password',
              suffixIcon: const Icon(Icons.visibility_off,color: Color(0xff7D8CAC),)
            ),
          ),
          const SizedBox(height: 15,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Switch(
                value: _switchValue,
                onChanged: (value) {
                  setState(() {
                    _switchValue = value;
                  });
                },
                activeColor: const Color(0xffFFFFFF), // Active color
                activeTrackColor: const Color(0xFFFFC007), // Head color
                inactiveThumbColor: const Color(0xFFFFFFFF), // Unactive color
                inactiveTrackColor: Colors.grey.withOpacity(0.20), // Border color
              ),
              const ReusableText(title: 'Remember Me',weight: FontWeight.w500,size: 14,color: Color(0xff7D8CAC),),
              const Spacer(),
              const ReusableText(title: 'Forgot Password?',weight: FontWeight.w500,size: 14,color: Color(0xff7D8CAC),),

            ],
          ),
          const SizedBox(height: 30,),
          InkWell(
            onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpThree()));
            },
            child: Container(
              height: 50,

              width: MediaQuery.of(context).size.width*1,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color(0xffFFC107),
                    Color(0xffFF8205),
                  ]),
                  color: const Color(0xffCCCCCC),
                  borderRadius: BorderRadius.circular(12)),
              child: const Center(
                child: ReusableText(
                  title: "LOGIN",
                  color: Colors.white,
                  weight: FontWeight.w800,
                  size: 17,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          const Divider(thickness: 2,color: Color(0xffC8D1E5),height: 2,),
          const SizedBox(height: 20,),
          InkWell(
            onTap: (){
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>const LogInScreen()));
            },
            child: Container(
              height: 50,

              width: MediaQuery.of(context).size.width*1,
              decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffFF9200)),
                  color: const Color(0x0000000),
                  borderRadius: BorderRadius.circular(12)),
              child: const Center(
                child: ReusableText(
                  title: "Create New Account",
                  color: Color(0xffFF9200),
                  weight: FontWeight.w800,
                  size: 17,
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
