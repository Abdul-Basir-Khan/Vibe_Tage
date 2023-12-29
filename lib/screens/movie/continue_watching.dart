import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/movie/play_a_movie.dart';
import 'package:vibe_tag/screens/register/reusabletext.dart';

class ContinueWatching extends StatefulWidget {
  const ContinueWatching({Key? key}) : super(key: key);

  @override
  State<ContinueWatching> createState() => _ContinueWatchingState();
}

class _ContinueWatchingState extends State<ContinueWatching> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10,),
        const ReusableText(title: 'Continue Watching',size: 20,weight: FontWeight.w700,color: Colors.white,),
        const SizedBox(height: 10,),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.32,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [

             InkWell(
               onTap:(){
                 setState(() {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                 });
               },
               child: const Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [

                   Image(image: AssetImage("Asset/images/Movie/money.png")),
                   SizedBox(height: 10,),
                   ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                   Row(
                     children: [
                       ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                       Icon(Icons.star,color: Color(0xffBBBBBB),),
                       ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                     ],
                   )
                 ],
               ),
             ),
             const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/Pic2.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/money.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/Pic2.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/money.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/Pic2.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),

            ],
          ),
        ),
        const SizedBox(height: 10,),
        const ReusableText(title: 'New Release',size: 20,weight: FontWeight.w700,color: Colors.white,),
        const SizedBox(height: 10,),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.32,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [

              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/N1.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/N2.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/N1.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/N2.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/N1.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/N2.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),

            ],
          ),
        ),

        const SizedBox(height: 10,),
        const ReusableText(title: 'Top Trending Movies >',size: 20,weight: FontWeight.w700,color: Colors.white,),
        const SizedBox(height: 10,),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.32,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [

              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/T1.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/T2.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/T1.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/T2.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/T1.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/T2.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),

            ],
          ),
        ),

        const SizedBox(height: 10,),
        const ReusableText(title: 'Top Rated >',size: 20,weight: FontWeight.w700,color: Colors.white,),
        const SizedBox(height: 10,),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.32,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [

              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/R1.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/R2.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/R1.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/R2.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/R1.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),
              InkWell(
                onTap:(){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PlayMovie()));
                  });
                },
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Image(image: AssetImage("Asset/images/Movie/R2.png")),
                    SizedBox(height: 10,),
                    ReusableText(title: 'Money Heist - Sea...',size: 14,weight: FontWeight.w600,color: Colors.white,),
                    Row(
                      children: [
                        ReusableText(title: '2018 *',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                        Icon(Icons.star,color: Color(0xffBBBBBB),),
                        ReusableText(title: '9.5',size: 12,weight: FontWeight.w600,color: Color(0xffBBBBBB),),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(width: 15,),

            ],
          ),
        ),

      ],
    );
  }
}
