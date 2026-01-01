import 'package:flutter/material.dart';
import 'package:practise_three/core/widgets/custom_appbar.dart';

import '../widgets/grid_view_products.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: CustomAppbar(title: "Category",),
     body: GridViewProducts() ,
    );
  }
}
