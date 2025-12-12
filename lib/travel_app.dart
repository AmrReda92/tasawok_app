import 'package:flutter/material.dart';
import 'package:practise_three/features/presentation/ui/on_boarding_screen.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Urbanist",

        colorScheme: ColorScheme.light(primary: const Color(0xFF326BDF),),
      ),
      home: OnBoardingScreen(),

    );
  }
}
