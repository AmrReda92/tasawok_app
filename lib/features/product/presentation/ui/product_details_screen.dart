import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:practise_three/core/app_const/app_styles.dart';
import 'package:practise_three/core/app_const/product_model.dart';
import 'package:practise_three/core/widgets/appbar_main.dart';
import 'package:practise_three/core/widgets/custom_elevated_button.dart';

import '../widgets/custom_review.dart';

class ProductDetailsScreen extends StatefulWidget {
  final ProductModel productModel ;
  const ProductDetailsScreen({super.key, required this.productModel});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int selectedIndex =0;

  @override
  Widget build(BuildContext context) {
    final images = widget.productModel.images ?? [];
    return Scaffold(
      appBar: AppbarMain(title: "Product detail",),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:12),
              child: Column(
                children: [
                  if(images.isNotEmpty)
                  SizedBox(
                    child: CachedNetworkImage(imageUrl: images[selectedIndex],fit: BoxFit.cover,)
                  ),
                  SizedBox(height: 5,),
                  if(images.length>1)
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          images.length,
                          (index){
                            return SizedBox(
                                width: 90,height: 80,
                                child: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        selectedIndex=index;
                                      });
                                    },
                                    child: CachedNetworkImage(imageUrl: images[index],)));
                          }
                      )

                    ),
                  ),
                  //ProductCarouselDetail(images: productModel.images??[],),
                  SizedBox(height: 40,),
                  Text(widget.productModel.title??"item",maxLines:1,style: AppStyles.font20.copyWith(color: Colors.black),),
                  SizedBox(height: 8,),
                  Text(widget.productModel.description??"",style: AppStyles.font16,maxLines:5,overflow: TextOverflow.ellipsis,),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("\$ ${widget.productModel.price}",style: AppStyles.font18,),
                      SizedBox(width: 30,),
                      Text("rate: ${widget.productModel.rating}",style: AppStyles.font18,),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        child: CustomElevatedButton(
                            onPressed: (){},
                            title: Text("Add to cart",style: AppStyles.font20,),

                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 28,),
                ],
              ),
            ),
            Column(
              children: [
                CustomReview(reviews: widget.productModel.reviews??[]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
