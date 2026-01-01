import 'package:flutter/material.dart';
import 'package:practise_three/features/home/presentation/widgets/custom_text_field.dart';

import '../app_const/app_styles.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title ;
  const CustomAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorScheme.of(context).primary,
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14,),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 40,),
                  Text (title,style: AppStyles.font20,),
                  Spacer(),
                  Icon(Icons.shopping_cart,size: 30,),
                ],
              ),
              const SizedBox(height: 14),
              CustomTextField()
            ],
          ),
        ),
      ),


    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(110);
}
