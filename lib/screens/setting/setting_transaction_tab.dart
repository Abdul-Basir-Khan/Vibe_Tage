import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/setting/constant/transaction_container.dart';


class TransactionHistorySettingsTab extends StatefulWidget {
  const TransactionHistorySettingsTab({super.key});

  @override
  State<TransactionHistorySettingsTab> createState() => _TransactionHistorySettingsTabState();
}

class _TransactionHistorySettingsTabState extends State<TransactionHistorySettingsTab> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 15,),
        TransactionContaineer(containerColor: Color(0xff2199D6),
        cStatus: 'Pending',),
        SizedBox(height: 15,),
        TransactionContaineer(containerColor: Color(0xffCE5347),
          cStatus: 'Sent',),
        SizedBox(height: 15,),
        TransactionContaineer(containerColor: Color(0xff27CEA6),
          cStatus: 'Received',),
        SizedBox(height: 15,),
        TransactionContaineer(containerColor: Color(0xff2199D6),
          cStatus: 'Pending',),
        SizedBox(height: 15,),
        TransactionContaineer(containerColor: Color(0xff2199D6),
          cStatus: 'Pending',),
        SizedBox(height: 15,),
        TransactionContaineer(containerColor: Color(0xff2199D6),
          cStatus: 'Pending',),



      ],
    );
  }
}
