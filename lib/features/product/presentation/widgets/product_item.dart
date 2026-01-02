import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:practise_three/core/app_const/app_styles.dart';
import 'package:practise_three/core/app_const/product_model.dart';
import 'package:practise_three/core/routes/routes.dart';
import 'package:practise_three/core/widgets/custom_elevated_button.dart';

class ProductItem extends StatelessWidget {
  final ProductModel productModel ;
  const ProductItem({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, Routes.productDetailsScreen,arguments: productModel);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
            color: Colors.grey.shade400
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
                      child: CachedNetworkImage(imageUrl:productModel.images![0],fit: BoxFit.contain,width: double.infinity))),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Text(productModel.title??"item",maxLines: 1,overflow: TextOverflow.ellipsis,style: AppStyles.font20.copyWith(color: Colors.black),)),
                          Icon(Icons.heart_broken_rounded)
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$ ${productModel.price}",style: AppStyles.font18,),
                          Text("% ${productModel.discountPercentage}",style: AppStyles.font18,),
                        ],
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.center,
                        child: CustomElevatedButton(
                          onPressed: (){},
                          title: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            child: Text("Add to Cart",style: AppStyles.font18.copyWith(color: Colors.white),),
                          ),
                          minimumSize:  Size(30,20),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]
        ),
      ),
    );
  }
}
