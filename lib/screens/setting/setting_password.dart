import 'package:flutter/material.dart';

import '../forum_design/custom_textfield.dart';
import '../register/reusabletext.dart';


class PasswordSettings extends StatefulWidget {
  const PasswordSettings({super.key});

  @override
  State<PasswordSettings> createState() => _PasswordSettingsState();
}

class _PasswordSettingsState extends State<PasswordSettings> {

  bool _currentState=false;
  bool _currentState1=false;
  bool _currentState2=false;

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
          title: 'Password Settings',
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

      body:
      ListView(
        children: [
          Divider(thickness: 2,height: 2,color: Color(0xffF1F4FB),),
          SizedBox(height: 10,),
         Padding(padding: EdgeInsets.all(10),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const ReusableText(
               title: 'Current Password',
               size: 14,
               weight: FontWeight.w600,
               color: Color(0xff485470),
             ),
             const SizedBox(height: 10,),

             TextField(

               obscuringCharacter: '*',
               obscureText:_currentState?true:false,
               decoration: InputDecoration(


                 focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     borderSide: const BorderSide(
                         color: Color(0xffC8D1E5))),
                 enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     borderSide: const BorderSide(
                         color: Color(0xffC8D1E5))),
                 suffixIcon:IconButton(onPressed: () {
                   setState(() {
                     _currentState=!_currentState;
                   });
                 }, icon: _currentState?Icon(Icons.visibility_off,color: Color(0xff99A7C7)):Icon(Icons.visibility,color: Color(0xff99A7C7),),),
                 filled: true,
                 fillColor: const Color(0xffFFFFFF),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                   borderSide:
                   const BorderSide(color: Color(0xffC8D1E5)),
                 ),
               ),
             ),
             const SizedBox(height: 15,),
             const ReusableText(
               title: 'New Password',
               size: 14,
               weight: FontWeight.w600,
               color: Color(0xff485470),
             ),
             const SizedBox(height: 10,),
             TextField(

               obscuringCharacter: '*',
               obscureText:_currentState1?true:false,
               decoration: InputDecoration(


                 focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     borderSide: const BorderSide(
                         color: Color(0xffC8D1E5))),
                 enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     borderSide: const BorderSide(
                         color: Color(0xffC8D1E5))),
                 suffixIcon:IconButton(onPressed: () {
                   setState(() {
                     _currentState1=!_currentState1;
                   });
                 }, icon: _currentState1?Icon(Icons.visibility_off,color: Color(0xff99A7C7)):Icon(Icons.visibility,color: Color(0xff99A7C7),),),
                 filled: true,
                 fillColor: const Color(0xffFFFFFF),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                   borderSide:
                   const BorderSide(color: Color(0xffC8D1E5)),
                 ),
               ),
             ),
             const SizedBox(height: 15,),
             const ReusableText(
               title: 'Confirm Password',
               size: 14,
               weight: FontWeight.w600,
               color: Color(0xff485470),
             ),
             const SizedBox(height: 10,),
             TextField(

               obscuringCharacter: '*',
               obscureText:_currentState2?true:false,
               decoration: InputDecoration(


                 focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     borderSide: const BorderSide(
                         color: Color(0xffC8D1E5))),
                 enabledBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(10),
                     borderSide: const BorderSide(
                         color: Color(0xffC8D1E5))),
                 suffixIcon:IconButton(onPressed: () {
                   setState(() {
                     _currentState2=!_currentState2;
                   });
                 }, icon: _currentState2?Icon(Icons.visibility_off,color: Color(0xff99A7C7)):Icon(Icons.visibility,color: Color(0xff99A7C7),),),
                 filled: true,
                 fillColor: const Color(0xffFFFFFF),
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                   borderSide:
                   const BorderSide(color: Color(0xffC8D1E5)),
                 ),
               ),
             ),
             const SizedBox(height: 15,),
             const ReusableText(
               title: 'Two Factor Authorization',
               size: 14,
               weight: FontWeight.w600,
               color: Color(0xff485470),
             ),
             const SizedBox(height: 10,),
             const CustomTextField(
               hintTextColor: Color(0xff485470),
               hintText: 'Select',
               sufixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: Color(0xff99A7C7),),
             ),
             const SizedBox(height: 15,),
           ],
         ),)


        ],
      ),);
  }
}
