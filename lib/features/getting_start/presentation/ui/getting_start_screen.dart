import 'package:flutter/material.dart';
import 'package:practise_three/core/app_const/app_images.dart';
import 'package:practise_three/core/app_const/app_styles.dart';
import 'package:practise_three/core/routes/routes.dart';
import 'package:practise_three/core/widgets/custom_elevated_button.dart';

class GettingStartScreen extends StatelessWidget {
  const GettingStartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
          children: [
            Image.asset(AppImages.coverPhoto,fit: BoxFit.cover,height: double.infinity,),
            Positioned(
              bottom: 30,
              child: CustomElevatedButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, Routes.homeScreen);
                  },
                  title: Text("Go To Shopping",style: AppStyles.font20,)
              ),
            )
          ],
        ),
    );

  }
}
