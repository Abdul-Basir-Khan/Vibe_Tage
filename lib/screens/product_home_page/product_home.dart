import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/product_home_page/grid_View2.dart';
import 'package:vibe_tag/screens/product_home_page/gridview_repeatition.dart';
import 'package:vibe_tag/screens/product_trend/product_trends.dart';

import '../register/reusabletext.dart';


class ProductHome extends StatefulWidget {
  const ProductHome({Key? key}) : super(key: key);

  @override
  State<ProductHome> createState() => _ProductHomeState();
}

class _ProductHomeState extends State<ProductHome> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        Container(
          decoration: BoxDecoration(color: Color(0xffFE9700)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5), child: Row(
              children: [
                Expanded(
                  child: SizedBox(
         height: 50,
                    child: TextField(
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        suffixIcon: Image(
                          height: 30,width: 30,
                          image: AssetImage("Asset/icons/movie/adjust.png"),),
                        hintStyle: TextStyle(
                            fontSize: 14,fontWeight: FontWeight.w500,
                            color: Color(0xff99A7C7)),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xff99A7C7),
                        ),
                        filled: true,
                        fillColor: Color(0xffFFFFFF),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:BorderSide.none,
                        ),
                        hintText: "Search for anything",

                      ),
                    ),
                  ),
                ),
    SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffFFFFFF)
                  ),
                  child: Center(
                      child:
                      Image(
                        height: 30,width: 30,
                        image: AssetImage("Asset/icons/movie/Chat-3.png"),)
                  ),
                ),
                Icon(Icons.more_vert,color: Colors.white,)
              ],
            ),
          ),
        ),
        Image(
            fit: BoxFit.cover,
            image: AssetImage("Asset/images/product/sofa.png")),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*1,
                child: Image(
                    fit: BoxFit.fitWidth,
                    image: AssetImage("Asset/images/product/winter.png")),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 139,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffC9FCEA),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 139,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffD1C8FF),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: MediaQuery.of(context).size.width*1,
                child: Image(
                    fit: BoxFit.fitWidth,
                    image: AssetImage("Asset/images/product/girl.png")),
              ),
              SizedBox(height: 15,),
              ReusableText(title: 'Just For You',size: 18,weight: FontWeight.w700,color: Color(0xff212121),),
              SizedBox(height: 20,),

            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: (){
                    setState(() {
                      _currentIndex=0;
                    });
                  },
                  child: ReusableText(title: 'On Sale',size: 16,weight: FontWeight.w500,color:_currentIndex==0? Color(0xff3C9CDF):Color(0xff7D8CAC),)),
              Spacer(),
              InkWell(
                  onTap: (){
                    setState(() {
                      _currentIndex=1;
                    });
                  },
                  child: ReusableText(title: 'Popular',size: 16,weight: FontWeight.w500,color:_currentIndex==1? Color(0xff3C9CDF):Color(0xff7D8CAC),)),
              Spacer(),
              InkWell(
                  onTap: (){
                    setState(() {
                      _currentIndex=2;
                    });
                  },
                  child: ReusableText(title: 'New Arrival',size: 16,weight: FontWeight.w500,color:_currentIndex==2? Color(0xff3C9CDF):Color(0xff7D8CAC),)),
            ],
          ),
        ),
        SizedBox(height: 10,),
        _currentIndex==0?GridViewRepeat():Container()
        ,
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*1,
                child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("Asset/images/product/handfreee.png")),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: MediaQuery.of(context).size.width*1,
                child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("Asset/images/product/watch.png")),
              ),
              SizedBox(height: 10,),
              ReusableText(title: 'Product On Sale',size: 18,weight: FontWeight.w700,color: Color(0xff212121),),
              SizedBox(height: 10,),
              GridViewRepeat1(),
              SizedBox(
                width: MediaQuery.of(context).size.width*1,
                child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("Asset/images/product/watch2.png")),
              ),
              SizedBox(height: 10,),
              SizedBox(
                width: MediaQuery.of(context).size.width*1,
                child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage("Asset/images/product/earbuds.png")),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
