import 'package:flutter/material.dart';

import '../../../../core/app_const/app_styles.dart';
import '../../../../core/app_const/product_model.dart';

class CustomReviewCard extends StatelessWidget {
  final Reviews review ;
  const CustomReviewCard({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
      ),child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(review.reviewerName??"user",style: AppStyles.font22,),
          SizedBox(height: 4,),
          Text((review.date??"").split('T').first,style: AppStyles.font16,),
          SizedBox(height: 14,),
          Text(review.comment??"null",style: AppStyles.font18,),


        ],

      ),
    ),
    );
  }
}
