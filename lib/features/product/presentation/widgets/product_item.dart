import 'package:flutter/material.dart';
import 'package:practise_three/core/app_const/app_images.dart';
import 'package:practise_three/core/app_const/app_styles.dart';
import 'package:practise_three/core/widgets/custom_elevated_button.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    child: Image.asset(AppImages.test,fit: BoxFit.cover,width: double.infinity))),
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
                        Text("rwerrtr",maxLines: 1,overflow: TextOverflow.ellipsis,style: AppStyles.font20.copyWith(color: Colors.black),),
                        Icon(Icons.heart_broken_rounded)
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$ 201",style: AppStyles.font18,),
                        Text("% 10",style: AppStyles.font18,),
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
    );
  }
}
