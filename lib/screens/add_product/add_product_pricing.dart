import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'add_product_description.dart';


class AddProductPricing extends StatefulWidget {
  const AddProductPricing({super.key});

  @override
  State<AddProductPricing> createState() => _AddProductPricingState();
}

class _AddProductPricingState extends State<AddProductPricing> {
  bool  _isState=false;
  bool  _isState1=false;
  bool  _isState2=false;
  bool  _isState3=false;



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

      body:
    ListView(

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
                percent: 0.60,
                center: new Text("3/4",style: const TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.w600),),
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
              Container(
                height: 75,
                width: MediaQuery.sizeOf(context).width*1,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffC8D1E5))
                ),

child: Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    GestureDetector(
      onTap: () {
        setState(() {
          _isState=! _isState;
          _isState1 = false;

        });
      },
      child: Container(
        height: 16,
        width: 16,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _isState
                ? const Color(0xffFF9200)
                : const Color(0xffFFFFFF),
            border: Border.all(
                color: _isState
                    ? Colors.transparent
                    : const Color(0xffC8D1E5))),
        child: Icon(
          Icons.done,
          size: 10,
          color: _isState
              ? const Color(0xffFFFFFF)
              : const Color(0xffFFFFFF),
        ),
      ),
    ),
    const SizedBox(width: 10,),
    const Image(
      height: 54,width: 54,
      image: AssetImage("Asset/images/add_product/Rectangle 24093.png"),),
    const SizedBox(width: 10,),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text("Brown",style: TextStyle(fontSize: 16,color: Color(0xff212121),fontWeight: FontWeight.w600),),
        const SizedBox(height: 10,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("Qty: 80",style: TextStyle(fontSize: 14,color: Color(0xff7D8CAC),fontWeight: FontWeight.w500),),
            const SizedBox(width: 10,),
            Container(
              height: 5,
              width: 5,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color
                      : Color(0xffC8D1E5),
                  ),

            ),
            const SizedBox(width: 10,),
            const Text("\$20",style: TextStyle(fontSize: 14,color: Color(0xff7D8CAC),fontWeight: FontWeight.w500),),


          ],
        )


      ],
    )
  ],
),

              ),
              const SizedBox(height: 10,),
              Container(
                height: 75,
                width: MediaQuery.sizeOf(context).width*1,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffC8D1E5))
                ),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isState1=! _isState1;
                          _isState = false;

                        });
                      },
                      child: Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _isState1
                                ? const Color(0xffFF9200)
                                : const Color(0xffFFFFFF),
                            border: Border.all(
                                color: _isState1
                                    ? Colors.transparent
                                    : const Color(0xffC8D1E5))),
                        child: Icon(
                          Icons.done,
                          size: 10,
                          color: _isState1
                              ? const Color(0xffFFFFFF)
                              : const Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    const Image(
                      height: 54,width: 54,
                      image: AssetImage("Asset/images/add_product/Rectangle 24093.png"),),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("Black",style: TextStyle(fontSize: 16,color: Color(0xff212121),fontWeight: FontWeight.w600),),
                        const SizedBox(height: 10,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text("Qty: 20",style: TextStyle(fontSize: 14,color: Color(0xff7D8CAC),fontWeight: FontWeight.w500),),
                            const SizedBox(width: 10,),
                            Container(
                              height: 5,
                              width: 5,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color
                                    : Color(0xffC8D1E5),
                              ),

                            ),
                            const SizedBox(width: 10,),
                            const Text("\$30",style: TextStyle(fontSize: 14,color: Color(0xff7D8CAC),fontWeight: FontWeight.w500),),


                          ],
                        )


                      ],
                    )
                  ],
                ),

              ),
              const SizedBox(height: 10,),



              Container(
                height: 54,
                width: MediaQuery.sizeOf(context).width*1,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffC8D1E5))
                ),
                child:
                const Text('+ Add option for colors',
                  style:TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xffFF9200)),),
              ),



              const SizedBox(height: 15,),
              const Divider(thickness: 3,height: 3,color: Color(0xffF8F9FB),),
              const SizedBox(height: 25,),
              const Text("Size Variant",style: TextStyle(fontSize: 18,color: Color(0xff212121),fontWeight: FontWeight.w700),),
              const SizedBox(height: 10,),

              Container(
                height: 75,
                width: MediaQuery.sizeOf(context).width*1,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffC8D1E5))
                ),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isState2=! _isState2;

                          _isState3=false;
                        });
                      },
                      child: Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _isState2
                                ? const Color(0xffFF9200)
                                : const Color(0xffFFFFFF),
                            border: Border.all(
                                color: _isState2
                                    ? Colors.transparent
                                    : const Color(0xffC8D1E5))),
                        child: Icon(
                          Icons.done,
                          size: 10,
                          color: _isState2
                              ? const Color(0xffFFFFFF)
                              : const Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    const Image(
                      height: 54,width: 54,
                      image: AssetImage("Asset/images/add_product/Rectangle 24093.png"),),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("Small",style: TextStyle(fontSize: 16,color: Color(0xff212121),fontWeight: FontWeight.w600),),
                        const SizedBox(height: 10,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text("Qty: 80",style: TextStyle(fontSize: 14,color: Color(0xff7D8CAC),fontWeight: FontWeight.w500),),
                            const SizedBox(width: 10,),
                            Container(
                              height: 5,
                              width: 5,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color
                                    : Color(0xffC8D1E5),
                              ),

                            ),
                            const SizedBox(width: 10,),
                            const Text("\$20",style: TextStyle(fontSize: 14,color: Color(0xff7D8CAC),fontWeight: FontWeight.w500),),


                          ],
                        )


                      ],
                    )
                  ],
                ),

              ),
              const SizedBox(height: 10,),
              Container(
                height: 75,
                width: MediaQuery.sizeOf(context).width*1,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffC8D1E5))
                ),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isState3=! _isState2;

                          _isState2 = false;

                        });
                      },
                      child: Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _isState3
                                ? const Color(0xffFF9200)
                                : const Color(0xffFFFFFF),
                            border: Border.all(
                                color: _isState3
                                    ? Colors.transparent
                                    : const Color(0xffC8D1E5))),
                        child: Icon(
                          Icons.done,
                          size: 10,
                          color: _isState3
                              ? const Color(0xffFFFFFF)
                              : const Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    const Image(
                      height: 54,width: 54,
                      image: AssetImage("Asset/images/add_product/Rectangle 24093.png"),),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("Medium",style: TextStyle(fontSize: 16,color: Color(0xff212121),fontWeight: FontWeight.w600),),
                        const SizedBox(height: 10,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text("Qty: 20",style: TextStyle(fontSize: 14,color: Color(0xff7D8CAC),fontWeight: FontWeight.w500),),
                            const SizedBox(width: 10,),
                            Container(
                              height: 5,
                              width: 5,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color
                                    : Color(0xffC8D1E5),
                              ),

                            ),
                            const SizedBox(width: 10,),
                            const Text("\$30",style: TextStyle(fontSize: 14,color: Color(0xff7D8CAC),fontWeight: FontWeight.w500),),


                          ],
                        )


                      ],
                    )
                  ],
                ),

              ),
              const SizedBox(height: 10,),

              Container(
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddProductDescription()));
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
