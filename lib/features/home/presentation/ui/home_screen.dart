import 'package:flutter/material.dart';
import 'package:practise_three/core/app_const/app_styles.dart';
import 'package:practise_three/core/widgets/custom_appbar.dart';
import 'package:practise_three/core/widgets/custom_carousel_slider.dart';
import 'package:practise_three/features/home/presentation/widgets/grid_view_category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 20,),
              CustomCarouselSlider(),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories",style: AppStyles.font18 ,),
                  Text("Show All",style: AppStyles.font18 ,),
                ],
              ),
              SizedBox(height: 20,),
              GridViewCategory(),
            ],
          ),
        ),
      ),
    );
  }
}
