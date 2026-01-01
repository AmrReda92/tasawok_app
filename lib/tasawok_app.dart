import 'package:flutter/material.dart';
import 'package:practise_three/core/routes/app_routes.dart';
import 'package:practise_three/core/routes/routes.dart';

class TasawokApp extends StatelessWidget {
  const TasawokApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRoutes.function ,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Urbanist",
        colorScheme: ColorScheme.light(primary: const Color(0xffFB741A),),
      ),
      initialRoute: Routes.productScreen

    );
  }
}
