import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/product_trend/gried_view_product.dart';
import 'package:vibe_tag/screens/product_trend/product_fation.dart';

import '../register/reusabletext.dart';
import 'gridview_trends.dart';

class ProductCategories extends StatefulWidget {
  const ProductCategories({super.key});

  @override
  State<ProductCategories> createState() => _ProductCategoriesState();
}

class _ProductCategoriesState extends State<ProductCategories> {
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    suffixIcon: const Image(
                      height: 30,
                      width: 30,
                      image: AssetImage("Asset/icons/movie/adjust.png"),
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff99A7C7)),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xff99A7C7),
                    ),
                    filled: true,
                    fillColor: const Color(0xffFFFFFF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Search for anything",
                  ),
                ),
                SizedBox(
                  height: 90,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffFFFFFF),
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Row(
                              children: [
                                ReusableText(
                                  title: 'Best match',
                                  size: 12,
                                  weight: FontWeight.w500,
                                  color: Color(0xff485470),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color(0xff485470),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffFFFFFF),
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Row(
                              children: [
                                ReusableText(
                                  title: 'Distance',
                                  size: 12,
                                  weight: FontWeight.w500,
                                  color: Color(0xff485470),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color(0xff485470),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffFFFFFF),
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Row(
                              children: [
                                ReusableText(
                                  title: 'Free Delivery',
                                  size: 12,
                                  weight: FontWeight.w500,
                                  color: Color(0xff485470),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color(0xff485470),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff478CCA),
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Center(
                                child: Icon(
                                  Icons.add,
                                  color: Color(0xffFFFFFF),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child:Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const ReusableText(
                            title: 'Categories',
                            size: 16,
                            weight: FontWeight.w700,
                            color: Color(0xff212121),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductFashion()));
                              });
                            },
                            child: Container(
                              height: 22,width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: const Color(0xff7D8CAC)),
                                  color: const Color(0xffF1F4FB)
                              ),
                              child: const Center(
                                child:  ReusableText(
                                  title: 'See all',
                                  size: 12,
                                  weight: FontWeight.w500,
                                  color: Color(0xff7D8CAC),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          TextButton(onPressed: (){}, child:  const ReusableText(
                            title: 'Free Items',
                            size: 15,
                            weight: FontWeight.w400,
                            color: Color(0xff434950),
                          ),),TextButton(onPressed: (){}, child:  const ReusableText(
                            title: 'Electronic',
                            size: 15,
                            weight: FontWeight.w400,
                            color: Color(0xff434950),
                          ),),TextButton(onPressed: (){}, child:  const ReusableText(
                            title: 'Motors',
                            size: 15,
                            weight: FontWeight.w400,
                            color: Color(0xff434950),
                          ),),TextButton(onPressed: (){}, child:  const ReusableText(
                            title: 'Fashion',
                            size: 15,
                            weight: FontWeight.w400,
                            color: Color(0xff434950),
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(thickness: 2,height: 2,color: Color(0xffEBEBEB),),
                const SizedBox(height: 15,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GridViewRepeatTrends(),
                  ],
                )

              ],
            ),
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
