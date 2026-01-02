import 'package:flutter/material.dart';
import 'package:practise_three/core/widgets/appbar_main.dart';
import 'package:practise_three/features/product/presentation/widgets/product_item.dart';

import '../widgets/favourite_empty.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> favourites = [];

    return Scaffold(
      appBar: AppbarMain(title: "Favourite"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: favourites.isNotEmpty?
        GridView.builder(
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: .7,
          ),
          itemBuilder: (context, index) {
            return  ProductItem(productModel: productModel);
          },
        ): const FavouriteEmpty(),

      ),
    );
  }
}
