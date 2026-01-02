import 'package:flutter/material.dart';
import 'package:practise_three/core/app_const/app_styles.dart';
import 'package:practise_three/core/app_const/product_model.dart';
import 'package:practise_three/core/widgets/appbar_main.dart';
import 'package:practise_three/core/widgets/custom_elevated_button.dart';
import 'package:practise_three/features/product/presentation/widgets/product_carousel_detail.dart';

import '../widgets/custom_review.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel productModel ;
  const ProductDetailsScreen({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
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
                  SizedBox(height: 20,),
                  ProductCarouselDetail(images: productModel.images??[],),
                  SizedBox(height: 40,),
                  Text(productModel.title??"item",maxLines:1,style: AppStyles.font20.copyWith(color: Colors.black),),
                  SizedBox(height: 8,),
                  Text(productModel.description??"",style: AppStyles.font16,maxLines:5,overflow: TextOverflow.ellipsis,),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text("\$ ${productModel.price}",style: AppStyles.font18,),
                      SizedBox(width: 30,),
                      Text("rate: ${productModel.rating}",style: AppStyles.font18,),
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
                CustomReview(reviews: productModel.reviews??[]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
