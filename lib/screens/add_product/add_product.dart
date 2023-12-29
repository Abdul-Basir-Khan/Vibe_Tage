import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:percent_indicator/percent_indicator.dart';

import 'add_product_pricing.dart';


class AddProducts extends StatefulWidget {
  const AddProducts({super.key});

  @override
  State<AddProducts> createState() => _AddProductsState();
}

class _AddProductsState extends State<AddProducts> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,elevation: 0,
        leading: const Icon(Icons.arrow_back,color: Color(0xff000000),),
        centerTitle: true,
        title: const Text("Add Product",style: TextStyle(fontSize: 16,color: Color(0xff000000),fontWeight: FontWeight.w700),),
      ),
      body:ListView(

        children: [
          Container(
            height: 67,
            color: const Color(0xff99A7C7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 10,),
                CircularPercentIndicator(
                  radius: 20.0,
                  lineWidth: 5.0,
                  percent: 0.40,
                  center: new Text("2/4",style: const TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w600),),
                  progressColor: const Color(0xffFFFFFF),
                ),
                const SizedBox(width: 10,),
                const Text("Variant, Price & Stock",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w600),),
              ],
            ),
          ),
          const SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Pricing",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w600),),
                const SizedBox(height: 10,),
                const Text("Price",style: TextStyle(fontSize: 14,color: Color(0xff485470),fontWeight: FontWeight.w600),),
                const SizedBox(height: 10,),
                Container(height: 54,child: TextField(
                  decoration: InputDecoration(
                    hintText: '00.00',
                    hintStyle: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xff99A7C7)),
                    prefixIcon: Container(
                      width: 42,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF1F4FB),
                      ),
                      child: const Center(child: Text("\$",style: TextStyle(fontSize: 16,color: Color(0xff7D8CAC),fontWeight: FontWeight.w600),)),
                    ),
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Color(0xffC8D1E5))
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5))
                    ),

                  ),
                ),),
                const SizedBox(height: 10,),
                const Text("Sale Price",style: TextStyle(fontSize: 14,color: Color(0xff485470),fontWeight: FontWeight.w600),),
                const SizedBox(height: 10,),
                Container(height: 54,child: TextField(
                  decoration: InputDecoration(
                    hintText: '00.00',
                    hintStyle: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xff99A7C7)),
                    prefixIcon: Container(
                      width: 42,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF1F4FB),
                      ),
                      child: const Center(child: Text("\$",style: TextStyle(fontSize: 16,color: Color(0xff7D8CAC),fontWeight: FontWeight.w600),)),
                    ),
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5))
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5))
                    ),

                  ),
                ),),
                const SizedBox(height: 15,),
                const Divider(thickness: 3,height: 3,color: Color(0xffF8F9FB),),
                const SizedBox(height: 15,),
                const Text("Color Variant",style: TextStyle(fontSize: 18,color: Color(0xff212121),fontWeight: FontWeight.w700),),
                const SizedBox(height: 10,),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15))),
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (BuildContext context,
                              void Function(void Function()) setState) {
                            return Wrap(
                              clipBehavior: Clip.antiAlias,
                              children: [
                                Container(
                                  height: MediaQuery.sizeOf(context)
                                      .height *
                                      0.66,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(20)),
                                  padding: const EdgeInsets.all(16.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    physics: const ScrollPhysics(),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: <Widget>[
                                        const Text(
                                          'Add Color Variant',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight:
                                              FontWeight.w600),
                                        ),

                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Divider(
                                          indent: 5,
                                          endIndent: 5,
                                          thickness: 1,
                                          color: Color(0xffC8D1E5),
                                        ),


                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            DottedBorder(
                                              borderType: BorderType.RRect,
                                              radius: const Radius.circular(10),
                                              color: const Color(0xffC8D1E5),
                                              dashPattern: [8, 4],
                                              strokeWidth: 2,
                                              child: Container(
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                  borderRadius: BorderRadius.circular(10)
                                                ),
                                                height: 120,
                                                width: 120,
                                             
                                                child: const Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.add,color: Color(0xff99A7C7),),
                                                    Text("Add Image",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff485470)),)

                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                               crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      "Price",
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight
                                                              .w600,
                                                          fontSize: 14,
                                                          color: Color(
                                                              0xff485470)),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                      height: 54,
                                                      width: MediaQuery
                                                          .sizeOf(
                                                          context)
                                                          .width *
                                                          0.42,
                                                      decoration: BoxDecoration(
                                                          color: const Color(
                                                              0xffF1F4FB),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              10)),
                                                      child:
                                                      TextFormField(
                                                        decoration: const InputDecoration(
                                                            border:
                                                            InputBorder
                                                                .none,
                                                            hintText:
                                                            '   80.00',

                                                            hintStyle: TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w600,
                                                                fontSize:
                                                                16,
                                                                color: Color(
                                                                    0xff212121))),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      "Quantity",
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight
                                                              .w600,
                                                          fontSize: 14,
                                                          color: Color(
                                                              0xff485470)),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                      height: 54,
                                                      width: MediaQuery
                                                          .sizeOf(
                                                          context)
                                                          .width *
                                                          0.42,
                                                      decoration: BoxDecoration(
                                                          color: const Color(
                                                              0xffF1F4FB),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              10)),
                                                      child:
                                                      TextFormField(
                                                        decoration: const InputDecoration(
                                                            border:
                                                            InputBorder
                                                                .none,
                                                            hintText:
                                                            '   20',
                                                            hintStyle: TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w600,
                                                                fontSize:
                                                                16,
                                                                color: Color(
                                                                    0xff212121))),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Text(
                                              "Color",
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.w600,
                                                  fontSize: 14,
                                                  color: Color(
                                                      0xff485470)),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: 54,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                border: Border.all(color: const Color(0xffC8D1E5)),

                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(
                                                      10)),
                                              child: TextFormField(
                                                decoration: const InputDecoration(

                                                  suffixIcon: Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xff7D8CAC),),
                                                    border: InputBorder
                                                        .none,
                                                    hintText:
                                                    '   Black',
                                                    hintStyle: TextStyle(
                                                        fontWeight:
                                                        FontWeight
                                                            .w600,
                                                        fontSize: 16,
                                                        color: Color(
                                                            0xff212121))),
                                              ),
                                            ),


                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceAround,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: MediaQuery.sizeOf(
                                                  context)
                                                  .width *
                                                  0.43,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius
                                                    .circular(10),
                                                color:
                                                const Color(0xffF1F4FB),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  'Cancel',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Color(
                                                          0xff7D8CAC),
                                                      fontWeight:
                                                      FontWeight
                                                          .w700),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 50,
                                              width: MediaQuery.sizeOf(
                                                  context)
                                                  .width *
                                                  0.43,
                                              decoration: BoxDecoration(
                                                gradient:
                                                const LinearGradient(
                                                    colors: [
                                                      Color(0xffFFC107),
                                                      Color(0xffFF8205),
                                                    ]),
                                                borderRadius:
                                                BorderRadius
                                                    .circular(10),
                                                color:
                                                const Color(0xffF1F4FB),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  'Add',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Color(
                                                          0xffFFFFFF),
                                                      fontWeight:
                                                      FontWeight
                                                          .w700),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    );
                  },


                  child: Container(
                    height: 54,
                    width: MediaQuery.sizeOf(context).width*1,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color(0xffC8D1E5))
                    ),
                    child:
                    const Text('+ Add option for colors',
                      style:TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xffFF9200)),),
                  ),
                ),
                const SizedBox(height: 15,),
                const Divider(thickness: 3,height: 3,color: Color(0xffF8F9FB),),
                const SizedBox(height: 25,),
                const Text("Size Variant",style: TextStyle(fontSize: 18,color: Color(0xff212121),fontWeight: FontWeight.w700),),
                const SizedBox(height: 10,),
                GestureDetector(

                  onTap: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15))),
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (BuildContext context,
                              void Function(void Function()) setState) {
                            return Wrap(
                              clipBehavior: Clip.antiAlias,
                              children: [
                                Container(
                                  height: MediaQuery.sizeOf(context)
                                      .height *
                                      0.66,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(20)),
                                  padding: const EdgeInsets.all(16.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    physics: const ScrollPhysics(),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: <Widget>[
                                        const Text(
                                          'Add Size Variant',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight:
                                              FontWeight.w600),
                                        ),

                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Divider(
                                          indent: 5,
                                          endIndent: 5,
                                          thickness: 1,
                                          color: Color(0xffC8D1E5),
                                        ),


                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            DottedBorder(
                                              borderType: BorderType.RRect,
                                              radius: const Radius.circular(10),
                                              color: const Color(0xffC8D1E5),
                                              dashPattern: [8, 4],
                                              strokeWidth: 2,
                                              child: Container(
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                height: 120,
                                                width: 120,

                                                child: const Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Icon(Icons.add,color: Color(0xff99A7C7),),
                                                    Text("Add Image",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color(0xff485470)),)

                                                  ],
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      "Price",
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight
                                                              .w600,
                                                          fontSize: 14,
                                                          color: Color(
                                                              0xff485470)),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                      height: 54,
                                                      width: MediaQuery
                                                          .sizeOf(
                                                          context)
                                                          .width *
                                                          0.42,
                                                      decoration: BoxDecoration(
                                                          color: const Color(
                                                              0xffF1F4FB),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              10)),
                                                      child:
                                                      TextFormField(
                                                        decoration: const InputDecoration(
                                                            border:
                                                            InputBorder
                                                                .none,
                                                            hintText:
                                                            '   80.00',

                                                            hintStyle: TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w600,
                                                                fontSize:
                                                                16,
                                                                color: Color(
                                                                    0xff212121))),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      "Quantity",
                                                      style: TextStyle(
                                                          fontWeight:
                                                          FontWeight
                                                              .w600,
                                                          fontSize: 14,
                                                          color: Color(
                                                              0xff485470)),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                      height: 54,
                                                      width: MediaQuery
                                                          .sizeOf(
                                                          context)
                                                          .width *
                                                          0.42,
                                                      decoration: BoxDecoration(
                                                          color: const Color(
                                                              0xffF1F4FB),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              10)),
                                                      child:
                                                      TextFormField(
                                                        decoration: const InputDecoration(
                                                            border:
                                                            InputBorder
                                                                .none,
                                                            hintText:
                                                            '   20',
                                                            hintStyle: TextStyle(
                                                                fontWeight:
                                                                FontWeight
                                                                    .w600,
                                                                fontSize:
                                                                16,
                                                                color: Color(
                                                                    0xff212121))),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Text(
                                              "Color",
                                              style: TextStyle(
                                                  fontWeight:
                                                  FontWeight.w600,
                                                  fontSize: 14,
                                                  color: Color(
                                                      0xff485470)),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: 54,
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                  border: Border.all(color: const Color(0xffC8D1E5)),

                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(
                                                      10)),
                                              child: TextFormField(
                                                decoration: const InputDecoration(

                                                    suffixIcon: Icon(Icons.keyboard_arrow_down_outlined,color: Color(0xff7D8CAC),),
                                                    border: InputBorder
                                                        .none,
                                                    hintText:
                                                    '   Black',
                                                    hintStyle: TextStyle(
                                                        fontWeight:
                                                        FontWeight
                                                            .w600,
                                                        fontSize: 16,
                                                        color: Color(
                                                            0xff212121))),
                                              ),
                                            ),


                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceAround,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: MediaQuery.sizeOf(
                                                  context)
                                                  .width *
                                                  0.43,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius
                                                    .circular(10),
                                                color:
                                                const Color(0xffF1F4FB),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  'Cancel',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Color(
                                                          0xff7D8CAC),
                                                      fontWeight:
                                                      FontWeight
                                                          .w700),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 50,
                                              width: MediaQuery.sizeOf(
                                                  context)
                                                  .width *
                                                  0.43,
                                              decoration: BoxDecoration(
                                                gradient:
                                                const LinearGradient(
                                                    colors: [
                                                      Color(0xffFFC107),
                                                      Color(0xffFF8205),
                                                    ]),
                                                borderRadius:
                                                BorderRadius
                                                    .circular(10),
                                                color:
                                                const Color(0xffF1F4FB),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  'Add',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Color(
                                                          0xffFFFFFF),
                                                      fontWeight:
                                                      FontWeight
                                                          .w700),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    );
                  },


                  child: Container(
                    height: 54,

                    width: MediaQuery.sizeOf(context).width*1,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xffC8D1E5))
                    ),
                    child:
              const Text('+ Add option for size',
               style:TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xffFF9200)),),
    ),
                ),
                const SizedBox(height: 15,),
                const Divider(thickness: 3,height: 3,color: Color(0xffF8F9FB),),
                const SizedBox(height: 25,),
                const Text("Stock",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w600),),
                const SizedBox(height: 10,),
                const Text("Quantity",style: TextStyle(fontSize: 14,color: Color(0xff485470),fontWeight: FontWeight.w600),),
                const SizedBox(height: 10,),
                Container(height: 54,child: TextField(
                  decoration: InputDecoration(
                    hintText: '00.00',
                    hintStyle: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xff99A7C7)),
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5))
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Color(0xffC8D1E5))
                    ),

                  ),
                ),),
                const SizedBox(height: 10,),

                Row(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  mainAxisAlignment:
                  MainAxisAlignment
                      .spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.sizeOf(
                          context)
                          .width *
                          0.43,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius
                            .circular(10),
                        color:
                        const Color(0xffF1F4FB),
                      ),
                      child: const Center(
                        child: Text(
                          'Back',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(
                                  0xff7D8CAC),
                              fontWeight:
                              FontWeight
                                  .w700),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddProductPricing()));
                      },
                      child:
                      Container(
                        height: 50,
                        width: MediaQuery.sizeOf(
                            context)
                            .width *
                            0.43,
                        decoration: BoxDecoration(
                          gradient:
                          const LinearGradient(
                              colors: [
                                Color(0xffFFC107),
                                Color(0xffFF8205),
                              ]),
                          borderRadius:
                          BorderRadius
                              .circular(10),
                          color:
                          const Color(0xffF1F4FB),
                        ),
                        child: const Center(
                          child: Text(
                            'Save & Continue',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(
                                    0xffFFFFFF),
                                fontWeight:
                                FontWeight
                                    .w700),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          )




        ],
      ),
    ));
  }
}
