import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/setting/setting_transaction_tab.dart';
import 'package:vibe_tag/screens/setting/setting_wallet_tab.dart';

import '../register/reusabletext.dart';


class SettingWithdraw extends StatefulWidget {
  const SettingWithdraw({super.key});

  @override
  State<SettingWithdraw> createState() => _SettingWithdrawState();
}

class _SettingWithdrawState extends State<SettingWithdraw> {


  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,leading:   IconButton(icon:const Icon(Icons.arrow_back_outlined,color: Color(0xff212121),),onPressed: (){
        Navigator.pop(context);
      },),
        title:const ReusableText(
          title: 'Wallet',
          size: 16,
          weight: FontWeight.w700,
          color: Color(0xff363D4C),
        ),

      ),

      body:

      Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,children: [
          SizedBox(height: 10,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    _currentIndex=0;
                  });
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width*0.44,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                    gradient:
                    _currentIndex==0?
                    LinearGradient(
                      colors: [
                        Color(0xffFDBA31),
                        Color(0xffFF9200),
                      ]
                    ):  LinearGradient(
                        colors: [
                          Color(0xffF1F4FB),
                          Color(0xffF1F4FB),
                        ]
                    ),
                  ),
                  child: Center(
                    child: ReusableText(
                      title: 'Wallet Details',
                      size: 15,
                      weight: FontWeight.w700,
                      color: _currentIndex==0?Color(0xffFFFFFF):Color(0xff7D8CAC),
                    )
                    ,
                  ),
                ),
              ),
              SizedBox(width: 15,),
              InkWell(
                onTap: (){
                  setState(() {
                    _currentIndex=1;
                  });
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width*0.44,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                    gradient:
                    _currentIndex==1?
                    LinearGradient(
                        colors: [
                          Color(0xffFDBA31),
                          Color(0xffFF9200),
                        ]
                    ):  LinearGradient(
                        colors: [
                          Color(0xffF1F4FB),
                          Color(0xffF1F4FB),
                        ]
                    ),
                  ),
                  child: Center(
                    child: ReusableText(
                      title: 'Transaction History',
                      size: 15,
                      weight: FontWeight.w700,
                      color: _currentIndex==1?Color(0xffFFFFFF):Color(0xff7D8CAC),
                    )
                    ,
                  ),
                ),
              ),
            ],
          ),
          _currentIndex==0?SettingWalletTab():_currentIndex==1?TransactionHistorySettingsTab():Container()


    ],
    ),
      ),);
  }
}




