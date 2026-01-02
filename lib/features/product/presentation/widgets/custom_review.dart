import 'package:flutter/material.dart';
import 'package:practise_three/features/product/presentation/widgets/custom_review_card.dart';

import '../../../../core/app_const/app_styles.dart';
import '../../../../core/app_const/product_model.dart';

class CustomReview extends StatelessWidget {
  final List<Reviews> reviews ;
  const CustomReview({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    if (reviews.isEmpty) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Text("No reviews yet"),
      );
    }
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10,),
            Text("Reviews",style: AppStyles.font18.copyWith(color: Colors.black),),
            SizedBox(height: 12,),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: reviews.length,
                itemBuilder: (context,index){
                 return CustomReviewCard(review: reviews[index]) ;
                }
            ),


          ],
        ),
      ),
    );
  }
}
