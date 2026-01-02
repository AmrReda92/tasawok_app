import 'package:flutter/material.dart';

import '../app_const/app_styles.dart';

class AppbarMain extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppbarMain({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorScheme
          .of(context)
          .primary,
      title: Text(title, style: AppStyles.font20,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,),
      centerTitle: true,
    );
  }


  @override
// TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}