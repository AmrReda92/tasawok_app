import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise_three/features/home/presentation/manager/get_categories_cubit/get_categories_cubit.dart';
import 'package:practise_three/features/home/presentation/widgets/custom_category_item.dart';

class GridViewCategory extends StatelessWidget {
  const GridViewCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCategoriesCubit, GetCategoriesState>(
      builder: (context, state) {
        if (state is GetCategoriesSuccess) {
          return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: state.categories.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemBuilder: (context, index) {
                        final String category = state.categories[index];
                        return CustomCategoryItem(categoryName: category);
                      }
                  );
        }
        else if(state is GetCategoriesFailure){
          return Center(child: Text(state.errorMessage));
        }else{
          return Center(child: CircularProgressIndicator()) ;
        }
      },
    );
  }
}
