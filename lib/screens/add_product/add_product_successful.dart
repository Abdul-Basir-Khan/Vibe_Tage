import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


class AddProductSuccessful extends StatefulWidget {
  const AddProductSuccessful({super.key});

  @override
  State<AddProductSuccessful> createState() => _AddProductSuccessfulState();
}

class _AddProductSuccessfulState extends State<AddProductSuccessful> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
      body: Column(


      children: [
        Container(
          height: 67,

          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            border: Border.all(color: Color(0xff99A7C7))
          ),
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
                percent: 1,
                center: new Text(
                  "4/4",
                  style: const TextStyle(
                      fontSize: 15,
                      color: Color(0xffFF9200),
                      fontWeight: FontWeight.w600),
                ),
                progressColor: const Color(0xffFF9200),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Success",
                style: TextStyle(
                    fontSize: 17,
                    color: Color(0xffFF9200),
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [

            Image(image: AssetImage("Asset/images/add_product/Group 27.png")),
          SizedBox(height: 10,),
          Text(
            "Product Successfully Added",
            style: TextStyle(
                fontSize: 19,
                color: Color(0xffFF9200),
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 30,),
          GestureDetector(
            onTap: () {

            },
            child: Container(
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
                  'Go to Dashboard',
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),


        ],
        )
        ,   Spacer(),

      ],
    ),));
  }
}
