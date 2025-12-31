import 'package:flutter/material.dart';
import 'package:practise_three/core/routes/routes.dart';
import 'package:practise_three/features/bottom_nav_bar/presentation/ui/bottom_nav_bar_screen.dart';
import 'package:practise_three/features/getting_start/presentation/ui/getting_start_screen.dart';
import 'package:practise_three/features/home/presentation/ui/home_screen.dart';
import 'package:practise_three/features/onboarding/presentation/ui/on_boarding_screen.dart';

class AppRoutes {
 static  Route<dynamic>? function(RouteSettings setting) {
    switch(setting.name){
      case Routes.onboardingScreen :
        return MaterialPageRoute(builder: (_)=>OnBoardingScreen());

      case Routes.gettingStartedScreen :
        return MaterialPageRoute(builder: (_)=>GettingStartScreen());

      case Routes.homeScreen :
        return MaterialPageRoute(builder: (_)=>HomeScreen());

      case Routes.bottomVavBarScreen :
        return MaterialPageRoute(builder: (_)=>BottomNavBarScreen());
    }


    return null;
  }
}