import 'package:flutter/material.dart';
import 'package:wedding_0/core/utils/app_colors.dart';
import 'package:wedding_0/core/utils/fonts_styles.dart';

class WeddingCakeItem extends StatelessWidget {
  String cakeProviderName;
  String image;

  WeddingCakeItem({required this.image, required this.cakeProviderName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Image.asset(image),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: AppColors.auth,
            child: Text(
              cakeProviderName,
              style: FontsStyles.regular20White,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
