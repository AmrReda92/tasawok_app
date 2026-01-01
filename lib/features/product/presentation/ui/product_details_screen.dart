import 'package:flutter/material.dart';
import 'package:practise_three/core/app_const/app_styles.dart';
import 'package:practise_three/core/widgets/custom_elevated_button.dart';
import 'package:practise_three/features/product/presentation/widgets/product_carousel_detail.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorScheme.of(context).primary,
        title: Text("Product detail",style: AppStyles.font20,maxLines: 1,overflow: TextOverflow.ellipsis,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            ProductCarouselDetail(),
            SizedBox(height: 40,),
            Text("product name",maxLines:1,style: AppStyles.font20.copyWith(color: Colors.black),),
            SizedBox(height: 8,),
            Text("product description",style: AppStyles.font16,maxLines:5,overflow: TextOverflow.ellipsis,),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("\$ 30",style: AppStyles.font18,),
                SizedBox(width: 30,),
                Text("rate: (2.6)",style: AppStyles.font18,),
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
            )
          ],
        ),
      ),
    );
  }
}
