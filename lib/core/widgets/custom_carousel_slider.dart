import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:practise_three/core/app_const/app_images.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({super.key,});
  @override
  Widget build(BuildContext context) {
    return  CarouselSlider(
        items: [
          for(var item in carousel)
            Image.asset(item,fit: BoxFit.cover,width: double.infinity,)
        ],
        options: CarouselOptions(
          height: 220,
          aspectRatio: .8,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          scrollDirection: Axis.horizontal,
        )
    );
  }
}
