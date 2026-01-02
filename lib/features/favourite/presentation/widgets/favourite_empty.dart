import 'package:flutter/material.dart';

import '../../../../core/app_const/app_styles.dart';

class FavouriteEmpty extends StatelessWidget {
  const FavouriteEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite_border,
            size: 80,
            color: Colors.grey.shade400,
          ),
          const SizedBox(height: 16),
          Text(
            "No favourites yet",
            style: AppStyles.font18.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
