import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise_three/core/app_const/product_model.dart';
import 'package:practise_three/features/product/presentation/manager/get_products_cubit/get_products_cubit.dart';
import 'package:practise_three/features/product/presentation/widgets/product_item.dart';

class GridViewProducts extends StatelessWidget {
  const GridViewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: BlocBuilder<GetProductsCubit, GetProductsState>(
        builder: (context, state) {
          if (state is GetProductsSuccess){
            return GridView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: state.allProducts.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              childAspectRatio: .7
                          ),
                          itemBuilder: (context, index) {
                            final ProductModel product = state.allProducts[index];
                            return ProductItem(productModel: product);
                          }
                      );
          }
          else if (state is GetProductsError){
            return Center(child: Text(state.errorMessage));
          }
          else{
            return Center(child: CircularProgressIndicator(),);
          }
        },
      ),
    );
  }
}
