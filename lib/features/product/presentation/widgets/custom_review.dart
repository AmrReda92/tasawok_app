import 'package:flutter/material.dart';
import 'package:practise_three/features/product/presentation/widgets/custom_review_card.dart';

import '../../../../core/app_const/app_styles.dart';

class CustomReview extends StatelessWidget {
  const CustomReview({super.key});

  @override
  Widget build(BuildContext context) {
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
                itemCount: 4,
                itemBuilder: (context,index){
                 return CustomReviewCard() ;
                }
            ),


          ],
        ),
      ),
    );
  }
}
