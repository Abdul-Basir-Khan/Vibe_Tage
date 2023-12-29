import 'package:flutter/material.dart';





class HappyBirthday extends StatefulWidget {
  const HappyBirthday({super.key});

  @override
  State<HappyBirthday> createState() => _HappyBirthdayState();
}

class _HappyBirthdayState extends State<HappyBirthday> {

  final List<BirthdayModel> imageText=[
    BirthdayModel(imgPath: 'Asset/images/birthday/balloon.png', title1: 'Birthday Balloon', title2: '\$138'),
    BirthdayModel(imgPath: 'Asset/images/birthday/Rectangle 23918.png', title1: 'Birthday Cap', title2: '\$20'),
    BirthdayModel(imgPath: 'Asset/images/birthday/cake.png', title1: 'Necklace for men', title2: '\$18'),
    BirthdayModel(imgPath: 'Asset/images/birthday/Rectangle 23918 (2).png', title1: 'Nike Runner Shoes', title2: '\$138'),
    BirthdayModel(imgPath: 'Asset/images/birthday/Rectangle 23918 (3).png', title1: '7 Colored yo-yo', title2: '\$25'),
    BirthdayModel(imgPath: 'Asset/images/birthday/Rectangle 23918 (4).png', title1: 'Necklace for men', title2: '\$18'),

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                height: 367,
                width: MediaQuery.sizeOf(context).width*1,
                padding: const EdgeInsets.all(10),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xf20FFB800)
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(

                        fit:BoxFit.cover,
                        image: AssetImage("Asset/images/birthday/002-birthday-cake.png")),
                    SizedBox(height: 10,),

                    Text('23 Dec 2002',textAlign:TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Color(0xffFF5722)),),
                    SizedBox(height: 10,),

                    Text('Happy Birthday',textAlign:TextAlign.center,style: TextStyle(fontSize: 34,fontWeight: FontWeight.w700,color: Color(0xffFF5722)),),
                    SizedBox(height: 10,),
                    Text('Martin you have made it to another year,\nhave a good one this year!',textAlign:TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xff090F19)),),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const Text('Get Birthday Offer',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Color(0xff212121)),),
              const SizedBox(height: 10,),
              const Text('Celebrate your birthday with the amazing product and express\ndelivery today.',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600,color: Color(0xff212121)),),
              const SizedBox(height: 10,),
              GridView.builder(
                shrinkWrap: true,
                itemCount: imageText.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,

              ), itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: MediaQuery.sizeOf(context).width*0.32,
clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xffC8D1E5)),
                      color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,children: [

                    Image(
                      height:80,
                        width: MediaQuery.sizeOf(context).width*0.32,
                        fit: BoxFit.fitWidth,
                        image: AssetImage(imageText[index].imgPath.toString())),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 5),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                       const SizedBox(height: 5,),
                       Text(imageText[index].title1.toString(),style: const TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Color(0xff485470)),),
                       const SizedBox(height: 5,),
                       Text(imageText[index].title2.toString(),style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Color(0xff212121)),),

                     ],),
                   )
                  ],
                  ),
                );
              },),
              
              const SizedBox(height: 10,),
              GestureDetector(

                child: Center(
                  child: Container(
                    height: 50,width: MediaQuery.sizeOf(context).width*0.40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff212121)
                    ),
                    child: const Center(
                      child: Text("See more",style: TextStyle(
                        fontWeight: FontWeight.w600,fontSize: 18,color: Colors.white
                      ),),
                    ),
                  ),
                ),
              )
              


            ],
          ),
        ),
      ),
    ));
  }
}


class BirthdayModel{
  String? imgPath;
  String? title1;
  String? title2;
  BirthdayModel({ required this.imgPath,required this.title1,required this.title2});
}
