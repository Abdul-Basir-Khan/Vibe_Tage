import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/help/help_request.dart';

import '../register/reusabletext.dart';
import 'custom_container.dart';

class MyHomePageTab extends StatefulWidget {
  const MyHomePageTab({Key? key}) : super(key: key);

  @override
  State<MyHomePageTab> createState() => _MyHomePageTabState();
}

class _MyHomePageTabState extends State<MyHomePageTab> {
  int _currentIndex = 0;


  List<ContainerModel> List1 = [
    ContainerModel(
        text1: "Homepage",
        text2: "Adjust settings, manage notifications,\nlearn about name changes and more.",
        image: "Asset/images/help_center/001-user-avatar.png"

    ),
    ContainerModel(
        text1: "Login and password",
        text2: "Fix login issues and learn how to change\nor reset your password.",
        image: "Asset/images/help_center/002-import.png"

    ),
    ContainerModel(
        text1: "Messaging Help",
        text2: "Adjust settings, manage notifications,\nlearn about name changes and more.",
        image: "Asset/images/help_center/003-message.png"

    ),
    ContainerModel(
        text1: "Sharing Photos and Videos",
        text2: "Adjust settings, manage notifications,\nlearn about name changes and more.",
        image: "Asset/images/help_center/image-upload.png"

    ),
    ContainerModel(
        text1: "Manage your Account",
        text2: "Adjust settings, manage notifications,\nlearn about name changes and more.",
        image: "Asset/images/help_center/005-settings.png"

    ),
    ContainerModel(
        text1: "Privacy and security",
        text2: "Control who can see what you share &\nadd extra protection to your account.",
        image: "Asset/images/help_center/006-shield.png"

    ),
    ContainerModel(
        text1: "Marketplace",
        text2: "Learn how to buy and sell things on\nFacebook.",
        image: "Asset/images/help_center/007-store.png"

    ),
    ContainerModel(
        text1: "Rules and policies",
        text2: "The VibeTag Rules, Deceased\nindividuals ,Username squatting policy",
        image: "Asset/images/help_center/008-papers.png"

    ),
    ContainerModel(
        text1: "Gold My Vibes",
        text2: "Gold My Vibes Policies, Terms and\nCondition",
        image: "Asset/images/help_center/009-heart.png"

    ),
    ContainerModel(
        text1: "Still need help?",
        text2: "If you still feel issue. We’re here\nfor you.",
        image: "Asset/images/help_center/customer-service 1.png"

    ),

  ];

  List<IndexModel> List2 = [
    IndexModel(
 index: 0,
    ),
    IndexModel(
      index: 1,
    ),
    IndexModel(
      index: 2,
    ),
    IndexModel(
      index: 3,
    ),
    IndexModel(
      index: 4,
    ),
    IndexModel(
      index: 5,
    ),
    IndexModel(
      index: 6,
    ),
    IndexModel(
      index: 7,
    ),
    IndexModel(
      index: 8,
    ),
    IndexModel(
      index: 9,
    ),
    IndexModel(
      index: 10,
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        children: [
          const SizedBox(
            height: 10,
          ),
          Stack(children: [
            Image(
                width: MediaQuery.of(context).size.width * 1,
                fit: BoxFit.cover,
                image:
                    const AssetImage("Asset/images/help_center/Rectangle 24220.png")),
            Image(
                width: MediaQuery.of(context).size.width * 1,
                fit: BoxFit.cover,
                image: const AssetImage("Asset/images/help_center/Mask group.png")),
            Positioned(
              top: 100,
              left: 10,
              right: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ReusableText(
                    title: 'What do you need help with?',
                    size: 20,
                    weight: FontWeight.w700,
                    color: Color(0xffFFFFFF),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 54,
                    width: MediaQuery.of(context).size.width * 1,
                    child:

                    TextField(
                      decoration: InputDecoration(
                        hintStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xff99A7C7)),
                        hintText: 'Search question or articles',
                        prefixIcon: const Image(
                          image: AssetImage(
                              "Asset/icons/chat_update/Search-4.png"),
                        ), // Prefix icon
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(
                              color: Colors.white), // Color when not focused
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(
                              color: Colors.white), // Color when focused
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),

         ListView.builder(
           scrollDirection: Axis.vertical,physics: const ScrollPhysics(),
           shrinkWrap: true,itemCount: List1.length,
           itemBuilder: (BuildContext context, int index) {
             return  Column(
               children: [
                 const SizedBox(
                   height: 20,
                 ),
                 InkWell(
                   onTap: () {
                     setState(() {
                       _currentIndex = List2[index].index!;
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpRequest()));
                     });
                   },
                   child: CustomContainer(

                     text1: List1[index].text1.toString(),
                     text2:

                     List1[index].text2.toString(),
                     imagePath: List1[index].image.toString(),
                     borderColor:
                     _currentIndex ==List2[index].index? const Color(0xffFF9200) : const Color(0xffC8D1E5), textColor:  _currentIndex ==List2[index].index? const Color(0xffFF9200) : const Color(0xff212121),
                   ),
                 ),
               ],
             );
           },)

        ],
      ),
    );
  }
}

class ContainerModel{
String? text1;
String? text2;
String? image;
ContainerModel({this.image,this.text1,this.text2});

}
class IndexModel{
  int? index;
  IndexModel({this.index,});
}
