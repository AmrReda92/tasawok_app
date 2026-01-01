import 'package:flutter/material.dart';
import 'package:practise_three/features/product/presentation/widgets/product_item.dart';

class GridViewProducts extends StatelessWidget {
  const GridViewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GridView.builder(

          scrollDirection: Axis.vertical,
          itemCount: 8,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: .7
          ),
          itemBuilder: (context,index){
            return ProductItem() ;
          }
      ),
    );
  }
}
