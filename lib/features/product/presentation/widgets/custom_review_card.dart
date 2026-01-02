import 'package:flutter/material.dart';

import '../../../../core/app_const/app_styles.dart';

class CustomReviewCard extends StatelessWidget {
  const CustomReviewCard({super.key});

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
          Text("Amr Reda",style: AppStyles.font22,),
          SizedBox(height: 4,),
          Text("12/10/2025",style: AppStyles.font16,),
          SizedBox(height: 14,),
          Text("your comment",style: AppStyles.font18,),


        ],

      ),
    ),
    );
  }
}
