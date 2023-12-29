import 'package:flutter/material.dart';

import '../../Model/icon_and_text_model.dart';

class ActivityTab extends StatefulWidget {
  const ActivityTab({super.key});

  @override
  State<ActivityTab> createState() => _ActivityTabState();
}

class _ActivityTabState extends State<ActivityTab> {







  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            'Post you have seen Today',
            style: TextStyle(
                fontSize: 18,
                color: Color(
                    0xff212121),
                fontWeight:
                FontWeight
                    .w800),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment:CrossAxisAlignment.start,children: [
              GestureDetector(


                child: Container(
                  height: MediaQuery.sizeOf(context).height*0.20,width: MediaQuery.sizeOf(context).width*0.65,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/history/Rectangle 1461.png"),),
                ),
              ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
              GestureDetector(



                child: Container(
                  clipBehavior: Clip.antiAlias,
                  height: MediaQuery.sizeOf(context).height*0.09,width: MediaQuery.sizeOf(context).width*0.26,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image(
fit: BoxFit.cover,
                    image: AssetImage("assets/images/history/Rectangle 1462.png"),),
                ),
              ),
              SizedBox(height: 12,),
              GestureDetector(



                child: Container(
                  height: MediaQuery.sizeOf(context).height*0.09,width: MediaQuery.sizeOf(context).width*0.26,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/history/Rectangle 1463.png"),),
                ),
              ),
            ],
            )
          ],
          ),
          SizedBox(height: 10,),
          Divider(thickness: 2,height: 2,color: Color(0xffC8D1E5),),
          SizedBox(height: 10,),
          Text(
            'Post you have seen Yesterday',
            style: TextStyle(
                fontSize: 18,
                color: Color(
                    0xff212121),
                fontWeight:
                FontWeight
                    .w800),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment:CrossAxisAlignment.start,children: [
            GestureDetector(


              child: Container(
                height: MediaQuery.sizeOf(context).height*0.20,width: MediaQuery.sizeOf(context).width*0.65,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(10)
                ),
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/history/Rectangle 1461 (1).png"),),
              ),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,children: [
              GestureDetector(


                child: Container(
                  clipBehavior: Clip.antiAlias,
                  height: MediaQuery.sizeOf(context).height*0.09,width: MediaQuery.sizeOf(context).width*0.26,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/history/Rectangle 1462 (1).png"),),
                ),
              ),
              SizedBox(height: 12,),
              GestureDetector(


                child: Container(
                  height: MediaQuery.sizeOf(context).height*0.09,width: MediaQuery.sizeOf(context).width*0.26,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/history/Rectangle 1463 (1).png"),),
                ),
              ),
            ],
            )
          ],
          ),
        ],
      ),
    );
  }
}
