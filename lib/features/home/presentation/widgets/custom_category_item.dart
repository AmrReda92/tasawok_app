import 'package:flutter/material.dart';
import 'package:practise_three/core/app_const/app_images.dart';
import 'package:practise_three/core/app_const/app_styles.dart';
import 'package:practise_three/core/routes/routes.dart';

class CustomCategoryItem extends StatelessWidget {
   final String categoryName;
  const CustomCategoryItem({super.key, required this.categoryName,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, Routes.productScreen,arguments: categoryName);
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        clipBehavior: Clip.antiAlias,
        elevation: 9,
        child: Stack(
          children: [
            Image.asset(getImages(categoryName),fit: BoxFit.cover,height: double.infinity,width: double.infinity,),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight:  Radius.circular(12)),
                       color: ColorScheme.of(context).primary
                     ),
                    child: Text(categoryName,textAlign: TextAlign.center ,style: AppStyles.font20,maxLines: 1,overflow: TextOverflow.ellipsis,)))
          ],
        ),
      ),
    );
  }
}

String getImages(String category){
  switch(category) {
    case "beauty" :
      return AppImages.beauty;

    case "fragrances":
      return AppImages.fragrances;
    case "furniture" :
      return AppImages.furniture;
    case "groceries" :
      return AppImages.groceries;
  }
  return "";
}


