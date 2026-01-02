import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class ProductCarouselDetail extends StatefulWidget {
  final List<String> images ;
  const ProductCarouselDetail({super.key, required this.images});

  @override
  State<ProductCarouselDetail> createState() => _ProductCarouselDetailState();
}

class _ProductCarouselDetailState extends State<ProductCarouselDetail> {
  int currentIndex=0;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16/9,
          child: CarouselSlider(
            items: [
              for(var item in widget.images)
                CachedNetworkImage(imageUrl: item,fit: BoxFit.contain,width: double.infinity,)
            ],
            options:CarouselOptions(
              onPageChanged: (index,reason){
                setState(() {
                  currentIndex=index;
                });
              },
              autoPlay: false,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
            ) ,
          ),
        ),
        SizedBox(height: 16,),
        AnimatedSmoothIndicator(
          activeIndex: currentIndex,
          count: widget.images.length ,
          effect: WormEffect(
            activeDotColor: ColorScheme.of(context).primary,
            dotHeight: 10,
            dotWidth: 16,

          ),
        )
      ],
    );
  }
}
