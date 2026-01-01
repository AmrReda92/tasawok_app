import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise_three/core/routes/routes.dart';
import 'package:practise_three/core/utils/api_service.dart';
import 'package:practise_three/features/bottom_nav_bar/presentation/ui/bottom_nav_bar_screen.dart';
import 'package:practise_three/features/getting_start/presentation/ui/getting_start_screen.dart';
import 'package:practise_three/features/home/data/repos/home_repo.dart';
import 'package:practise_three/features/home/data/repos/home_repo_impl.dart';
import 'package:practise_three/features/home/presentation/manager/get_categories_cubit/get_categories_cubit.dart';
import 'package:practise_three/features/home/presentation/ui/home_screen.dart';
import 'package:practise_three/features/onboarding/presentation/ui/on_boarding_screen.dart';
import 'package:practise_three/features/product/presentation/ui/product_details_screen.dart';
import 'package:practise_three/features/product/presentation/ui/product_screen.dart';

class AppRoutes {
  static Route<dynamic>? function(RouteSettings setting) {
    switch (setting.name) {
      case Routes.onboardingScreen :
        return MaterialPageRoute(builder: (_) => OnBoardingScreen());

      case Routes.gettingStartedScreen :
        return MaterialPageRoute(builder: (_) => GettingStartScreen());

      case Routes.homeScreen :
        return MaterialPageRoute(builder: (_) => HomeScreen());

      case Routes.bottomVavBarScreen :
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => GetCategoriesCubit(HomeRepoImpl(ApiService(Dio())))..getCategoriesName(),
              child: BottomNavBarScreen(),
            ));

      case Routes.productScreen :
        return MaterialPageRoute(builder: (_) => ProductScreen());

      case Routes.productDetailsScreen :
        return MaterialPageRoute(builder: (_) => ProductDetailsScreen());
    }


    return null;
  }
}