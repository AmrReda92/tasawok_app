import 'package:flutter/material.dart';
import 'package:practise_three/core/app_const/app_styles.dart';
import 'package:practise_three/features/home/data/models/category_model.dart';

class CustomCategoryItem extends StatelessWidget {
  final CategoryModel categoryModel ;
  const CustomCategoryItem({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      clipBehavior: Clip.antiAlias,
      elevation: 9,
      child: Stack(
        children: [
          Image.asset(categoryModel.image,fit: BoxFit.cover,height: double.infinity,width: double.infinity,),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight:  Radius.circular(12)),
                     color: ColorScheme.of(context).primary
                   ),
                  child: Text(categoryModel.title,textAlign: TextAlign.center ,style: AppStyles.font20,maxLines: 1,overflow: TextOverflow.ellipsis,)))
        ],
      ),
    );
  }
}
