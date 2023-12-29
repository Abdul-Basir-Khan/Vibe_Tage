import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/product_home_page/gridview_repeatition.dart';
import 'package:vibe_tag/screens/product_trend/gried_view_product.dart';
import 'package:vibe_tag/screens/product_trend/product_catogories.dart';

import '../product_home_page/grid_View2.dart';
import '../register/reusabletext.dart';

class ProductTrends extends StatefulWidget {
  const ProductTrends({Key? key}) : super(key: key);

  @override
  State<ProductTrends> createState() => _ProductTrendsState();
}

class _ProductTrendsState extends State<ProductTrends> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child:
        ListView(
          children: [
            Container(
              decoration: const BoxDecoration(color: Color(0xffF1F4FB)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
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
SizedBox(height: 10,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
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
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProductCategories()));
                              });
                            },
                            child: Container(
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
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ReusableText(
                      title: 'Trending Products',
                      size: 16,
                      weight: FontWeight.w700,
                      color: Color(0xff485470),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const ReusableText(
                      title: '2441065 items found for "Trending"',
                      size: 12,
                      weight: FontWeight.w500,
                      color: Color(0xff485470),
                    ),
                  ],
                ),
              ),
            ),
            const GridViewRepeatProduct(),
          ],
        ),
      ),
    );
  }
}
