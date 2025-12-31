import 'package:flutter/material.dart';
import 'package:practise_three/features/home/data/models/category_model.dart';
import 'package:practise_three/features/home/presentation/widgets/custom_category_item.dart';

class GridViewCategory extends StatelessWidget {
  const GridViewCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: category.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
             mainAxisSpacing: 20,
        ),
        itemBuilder: (context,index){
         final CategoryModel categoryModel = category[index];
         return CustomCategoryItem(categoryModel: categoryModel) ;
        }
    );
  }
}
