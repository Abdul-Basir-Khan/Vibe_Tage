import 'package:flutter/material.dart';

import '../../register/reusabletext.dart';


class FilesTab extends StatefulWidget {
  const FilesTab({super.key});

  @override
  State<FilesTab> createState() => _FilesTabState();
}

class _FilesTabState extends State<FilesTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,children: [
        Container(
            height: 54,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xffC8D1E5)),
              color: Colors.white,
            ),
            child:

            Row(children: [
              Image(image: AssetImage("Asset/icons/stream/016-pdf.png")),
              SizedBox(width: 15,),
              ReusableText(
                title: 'Banner details.pdf',
                size: 15,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              Spacer(),
             Icon(Icons.file_download_outlined,color: Color(0xff99A7C7),)
            ],)

        ),
        SizedBox(height: 10,),
        Container(
            height: 54,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xffC8D1E5)),
              color: Colors.white,
            ),
            child:

            Row(children: [
              Image(image: AssetImage("Asset/icons/stream/excel.png")),
              SizedBox(width: 15,),
              ReusableText(
                title: 'Banner details.pdf',
                size: 15,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              Spacer(),
              Icon(Icons.file_download_outlined,color: Color(0xff99A7C7),)
            ],)

        ),
        SizedBox(height: 10,),
        Container(
            height: 54,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xffC8D1E5)),
              color: Colors.white,
            ),
            child:

            Row(children: [
              Image(image: AssetImage("Asset/icons/stream/Group (2).png")),
              SizedBox(width: 15,),
              ReusableText(
                title: 'Banner details.pdf',
                size: 15,
                weight: FontWeight.w600,
                color: Color(0xff485470),
              ),
              Spacer(),
              Icon(Icons.file_download_outlined,color: Color(0xff99A7C7),)
            ],)

        ),
        SizedBox(height: 10,),


      ],
      ),
    );
  }
}
